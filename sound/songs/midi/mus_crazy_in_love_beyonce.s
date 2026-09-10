	.include "MPlayDef.s"

	.equ	mus_crazy_in_love_beyonce_grp, voicegroup_pink_and_white
	.equ	mus_crazy_in_love_beyonce_pri, 0
	.equ	mus_crazy_in_love_beyonce_rev, reverb_set+6
	.equ	mus_crazy_in_love_beyonce_mvl, 74
	.equ	mus_crazy_in_love_beyonce_key, 0
	.equ	mus_crazy_in_love_beyonce_tbs, 1
	.equ	mus_crazy_in_love_beyonce_exg, 1
	.equ	mus_crazy_in_love_beyonce_cmp, 1

	.section .rodata
	.global	mus_crazy_in_love_beyonce
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_crazy_in_love_beyonce_1:
	.byte	KEYSH , mus_crazy_in_love_beyonce_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*mus_crazy_in_love_beyonce_tbs/2
	.byte		VOICE , 5
	.byte		VOL   , 101*mus_crazy_in_love_beyonce_mvl/mxv
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
	.byte	W12
	.byte		N05   , Dn3 , v096
	.byte	W05
	.byte	W07
	.byte		N06   , An2 
	.byte	W06
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W03
	.byte		N04   , An2 
	.byte	W04
	.byte	W08
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W03
	.byte		N04   
	.byte	W04
@ 007   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte	W04
	.byte		N05   , An2 
	.byte	W05
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N06   , As2 
	.byte	W06
	.byte	W02
	.byte		N04   , An2 
	.byte	W04
@ 008   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N06   , An2 
	.byte	W06
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W03
	.byte		N04   , An2 
	.byte	W04
	.byte	W08
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W03
	.byte		N04   
	.byte	W04
@ 009   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte	W04
	.byte		N05   , An2 
	.byte	W05
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N06   , As2 
	.byte	W06
	.byte	W01
	.byte		N04   , An2 
	.byte	W05
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W12
	.byte		N07   , Dn3 
	.byte	W07
	.byte	W04
	.byte		N04   , Cn3 
	.byte	W05
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N08   
	.byte	W08
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte	W05
	.byte		        En3 
	.byte	W06
	.byte	W05
	.byte		N04   , Cn3 
	.byte	W04
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N06   
	.byte	W07
	.byte	W05
@ 013   ----------------------------------------
	.byte	W18
	.byte		        Dn3 
	.byte	W07
	.byte	W05
	.byte		N03   , Cn3 
	.byte	W04
	.byte	W02
	.byte		N07   
	.byte	W07
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte	W05
	.byte		N07   , En3 
	.byte	W07
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W03
	.byte	W04
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N06   , Dn3 
	.byte	W07
	.byte	W05
@ 014   ----------------------------------------
	.byte	W12
	.byte		        Cn3 
	.byte	W07
	.byte	W05
	.byte		N04   , Dn3 
	.byte	W04
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W01
	.byte		N07   , Cn3 
	.byte	W07
	.byte	W05
	.byte		        Dn3 
	.byte	W07
	.byte	W05
	.byte		        En3 
	.byte	W07
	.byte	W05
	.byte		N04   , Cn3 
	.byte	W04
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N06   , Dn3 
	.byte	W07
	.byte	W04
@ 015   ----------------------------------------
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N08   
	.byte	W08
	.byte	W04
	.byte		        Cn3 
	.byte	W08
	.byte	W05
	.byte		N07   , Dn3 
	.byte	W07
	.byte	W04
	.byte		N08   , En3 
	.byte	W08
	.byte	W04
	.byte		N04   , Cn3 
	.byte	W04
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N07   , Dn3 
	.byte	W07
	.byte	W04
@ 016   ----------------------------------------
	.byte	W12
	.byte		N03   , Gn3 
	.byte	W04
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		        Fn3 
	.byte	W04
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		        En3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte	W02
	.byte		N06   
	.byte	W07
	.byte	W06
	.byte		N09   , Cn3 
	.byte	W09
	.byte	W02
@ 017   ----------------------------------------
	.byte	W12
	.byte		N10   , Gn3 
	.byte	W10
	.byte	W02
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W04
	.byte		N05   
	.byte	W05
	.byte		N06   , En3 
	.byte	W07
	.byte	W01
	.byte		N02   , Dn3 , v084
	.byte	W03
	.byte	W02
	.byte		N09   , En3 , v096
	.byte	W09
	.byte	W02
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N10   
	.byte	W10
	.byte	W02
	.byte		N07   , Cn3 
	.byte	W08
	.byte	W04
@ 018   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		        Dn3 
	.byte	W04
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N07   , En3 
	.byte	W08
	.byte	W04
	.byte		N03   , Cn3 
	.byte	W04
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N07   , Dn3 
	.byte	W07
	.byte	W04
@ 019   ----------------------------------------
	.byte	W12
	.byte		N04   , Cn3 
	.byte	W04
	.byte	W03
	.byte		N05   , Dn3 
	.byte	W06
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N07   , Cn3 
	.byte	W08
	.byte	W04
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N04   , En3 
	.byte	W04
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Cn3 
	.byte	W08
	.byte	W04
	.byte		N08   , Dn3 
	.byte	W08
	.byte	W03
@ 020   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 021   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 022   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 023   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 024   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 025   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 026   ----------------------------------------
	.byte		N03   , Gn3 
	.byte	W04
	.byte	W03
	.byte		N02   
	.byte	W02
	.byte	W03
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N04   , Gn3 
	.byte	W05
	.byte	W08
	.byte		N04   
	.byte	W05
	.byte	W06
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N04   , Fn3 
	.byte	W04
	.byte	W04
	.byte		N02   , Gn3 
	.byte	W03
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte	W01
@ 027   ----------------------------------------
	.byte	W01
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N03   , Gn3 , v092
	.byte	W03
	.byte	W01
	.byte		N04   , Gn3 , v096
	.byte	W05
	.byte	W03
	.byte		N28   , Fn3 
	.byte	W28
	.byte	W24
@ 028   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N06   , An2 
	.byte	W06
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W03
	.byte		N04   , An2 
	.byte	W04
	.byte	W08
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W03
	.byte		N04   
	.byte	W04
@ 029   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte	W04
	.byte		N05   , An2 
	.byte	W05
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N06   , As2 
	.byte	W06
	.byte	W02
	.byte		N04   , An2 
	.byte	W04
@ 030   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N06   , An2 
	.byte	W06
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W03
	.byte		N04   , An2 
	.byte	W04
	.byte	W08
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W03
	.byte		N04   
	.byte	W04
@ 031   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte	W04
	.byte		N05   , An2 
	.byte	W05
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N06   , As2 
	.byte	W06
	.byte	W01
	.byte		N04   , An2 
	.byte	W05
@ 032   ----------------------------------------
	.byte	W12
	.byte		N07   , Dn3 
	.byte	W07
	.byte	W04
	.byte		N04   , Cn3 
	.byte	W05
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N08   
	.byte	W08
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte	W05
	.byte		        En3 
	.byte	W06
	.byte	W05
	.byte		N04   , Cn3 
	.byte	W04
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N06   
	.byte	W07
	.byte	W05
@ 033   ----------------------------------------
	.byte	W18
	.byte		        Dn3 
	.byte	W07
	.byte	W05
	.byte		N03   , Cn3 
	.byte	W04
	.byte	W02
	.byte		N07   
	.byte	W07
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte	W05
	.byte		N07   , En3 
	.byte	W07
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W03
	.byte	W04
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N06   , Dn3 
	.byte	W07
	.byte	W05
@ 034   ----------------------------------------
	.byte	W12
	.byte		N03   , Gn3 
	.byte	W04
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		        Fn3 
	.byte	W04
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		        En3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte	W02
	.byte		N06   
	.byte	W07
	.byte	W06
	.byte		N09   , Cn3 
	.byte	W09
	.byte	W02
@ 035   ----------------------------------------
	.byte	W12
	.byte		N10   , Gn3 
	.byte	W10
	.byte	W02
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W04
	.byte		N05   
	.byte	W05
	.byte		N06   , En3 
	.byte	W07
	.byte	W01
	.byte		N02   , Dn3 , v084
	.byte	W03
	.byte	W02
	.byte		N09   , En3 , v096
	.byte	W09
	.byte	W02
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N10   
	.byte	W10
	.byte	W02
	.byte		N07   , Cn3 
	.byte	W08
	.byte	W04
@ 036   ----------------------------------------
	.byte	W20
	.byte		N02   
	.byte	W03
	.byte	W01
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte	W02
	.byte		N01   , An3 , v084
	.byte	W01
	.byte	W03
	.byte		N11   , An3 , v096
	.byte	W12
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W07
	.byte		N01   , Fn3 
	.byte	W02
	.byte	W03
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W02
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W01
	.byte		N10   
	.byte	W11
	.byte	W01
@ 037   ----------------------------------------
	.byte	W20
	.byte		N03   , Cn3 
	.byte	W03
	.byte	W01
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N07   , Fn3 
	.byte	W07
	.byte	W01
	.byte		N01   , En3 , v088
	.byte	W02
	.byte	W03
	.byte		N11   , Fn3 , v096
	.byte	W11
	.byte		N07   , En3 
	.byte	W08
	.byte		N01   , Dn3 
	.byte	W01
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte	W01
	.byte		N02   , Cn3 
	.byte	W03
	.byte	W01
	.byte		N11   
	.byte	W12
@ 038   ----------------------------------------
	.byte	W32
	.byte		N01   , Cn3 , v076
	.byte	W02
	.byte	W03
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte	W01
	.byte		N02   , Cn3 , v088
	.byte	W02
	.byte	W03
	.byte		N08   , Dn3 , v096
	.byte	W08
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W02
	.byte		N03   , En3 
	.byte	W04
	.byte	W01
	.byte		N04   , Cn3 
	.byte	W04
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N10   , Dn3 
	.byte	W10
	.byte	W02
@ 039   ----------------------------------------
	.byte	W12
	.byte		N04   , Cn3 
	.byte	W04
	.byte	W03
	.byte		N06   , Dn3 
	.byte	W07
	.byte	W05
	.byte		N04   
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 
	.byte	W10
	.byte	W03
	.byte		N07   , Dn3 
	.byte	W08
	.byte	W04
	.byte		        En3 
	.byte	W07
	.byte	W04
	.byte		N04   , Cn3 
	.byte	W04
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N07   , Dn3 
	.byte	W08
	.byte	W04
@ 040   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 041   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 042   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 043   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 044   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 045   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 046   ----------------------------------------
	.byte		N03   , Gn3 
	.byte	W04
	.byte	W03
	.byte		N02   
	.byte	W02
	.byte	W03
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N04   , Gn3 
	.byte	W05
	.byte	W08
	.byte		N04   
	.byte	W05
	.byte	W06
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N04   , Fn3 
	.byte	W04
	.byte	W04
	.byte		N02   , Gn3 
	.byte	W03
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte	W01
@ 047   ----------------------------------------
	.byte	W01
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N03   , Gn3 , v092
	.byte	W03
	.byte	W01
	.byte		N04   , Gn3 , v096
	.byte	W05
	.byte	W03
	.byte		N28   , Fn3 
	.byte	W28
	.byte	W24
@ 048   ----------------------------------------
	.byte		N03   , Gn3 
	.byte	W04
	.byte	W03
	.byte		N02   
	.byte	W02
	.byte	W03
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N04   , Gn3 
	.byte	W05
	.byte	W08
	.byte		N04   
	.byte	W05
	.byte	W06
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N04   , Fn3 
	.byte	W04
	.byte	W04
	.byte		N02   , Gn3 
	.byte	W03
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte	W01
@ 049   ----------------------------------------
	.byte	W01
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N03   , Gn3 , v092
	.byte	W03
	.byte	W01
	.byte		N04   , Gn3 , v096
	.byte	W05
	.byte	W03
	.byte		N28   , Fn3 
	.byte	W28
	.byte	W24
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
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N06   , An2 
	.byte	W06
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W03
	.byte		N04   , An2 
	.byte	W04
	.byte	W08
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W03
	.byte		N04   
	.byte	W04
@ 065   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte	W04
	.byte		N05   , An2 
	.byte	W05
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N06   , As2 
	.byte	W06
	.byte	W02
	.byte		N04   , An2 
	.byte	W04
@ 066   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N06   , An2 
	.byte	W06
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W03
	.byte		N04   , An2 
	.byte	W04
	.byte	W08
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W03
	.byte		N04   
	.byte	W04
@ 067   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		N08   , An2 
	.byte	W08
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte	W04
	.byte		N05   , An2 
	.byte	W05
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N06   , As2 
	.byte	W06
	.byte	W01
	.byte		N04   , An2 
	.byte	W05
@ 068   ----------------------------------------
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N08   , An3 
	.byte	W09
	.byte	W10
	.byte		N44   , Gn3 , v096, gtp2
	.byte	W44
	.byte	W02
	.byte	W02
	.byte		N09   , Fn3 
	.byte	W09
	.byte	W02
@ 069   ----------------------------------------
	.byte	W01
	.byte		N15   , Gn3 
	.byte	W15
	.byte	W01
	.byte		N04   , An3 
	.byte	W05
	.byte	W15
	.byte		        Fn3 
	.byte	W04
	.byte	W07
	.byte		N17   , Gn3 
	.byte	W17
	.byte	W01
	.byte		N04   , An3 
	.byte	W05
	.byte	W13
	.byte		N12   , Fn3 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N06   , Dn3 
	.byte	W07
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte	W02
	.byte		N10   , An3 
	.byte	W11
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W13
	.byte	W11
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W05
	.byte		N10   , Dn3 
	.byte	W10
	.byte	W02
	.byte		N05   , Fn3 
	.byte	W05
	.byte	W06
@ 071   ----------------------------------------
	.byte		N13   , Gn3 
	.byte	W14
	.byte	W04
	.byte		N04   , An3 
	.byte	W05
	.byte	W08
	.byte		N04   
	.byte	W05
	.byte		        Gn3 
	.byte	W04
	.byte	W09
	.byte		N16   
	.byte	W16
	.byte	W02
	.byte		N04   , An3 
	.byte	W04
	.byte	W09
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W01
	.byte		N05   , Fn3 
	.byte	W06
	.byte	W06
@ 072   ----------------------------------------
	.byte		N10   , Cn4 
	.byte	W11
	.byte	W01
	.byte		N03   , An3 
	.byte	W03
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte	W12
	.byte		N03   , Gs3 
	.byte	W01
	.byte		N17   , Gn3 
	.byte	W02
	.byte	W15
	.byte	W18
	.byte		N10   , Fn3 
	.byte	W11
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
@ 073   ----------------------------------------
	.byte	W01
	.byte		N14   , Cn4 
	.byte	W14
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte	W09
	.byte		N18   , Bn3 
	.byte	W18
	.byte		N04   , An3 
	.byte	W01
	.byte	W04
	.byte	W01
	.byte		N10   , Gn3 
	.byte	W10
	.byte	W02
	.byte		        Fn3 
	.byte	W11
	.byte	W02
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W06
@ 074   ----------------------------------------
	.byte	W01
	.byte		N10   , An3 
	.byte	W10
	.byte	W01
	.byte		N03   , Gn3 
	.byte	W04
	.byte	W03
	.byte		N04   , An3 
	.byte	W04
	.byte	W01
	.byte		N08   , Gn3 
	.byte	W09
	.byte	W03
	.byte		        Fn3 
	.byte	W09
	.byte	W04
	.byte		N07   , Gn3 
	.byte	W07
	.byte	W16
	.byte		N06   , Fn3 
	.byte	W06
	.byte	W01
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W02
	.byte		        An3 
	.byte	W04
	.byte	W03
	.byte		N16   
	.byte	W05
@ 075   ----------------------------------------
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W07
	.byte		N03   , An3 
	.byte	W04
	.byte	W01
	.byte		N11   , Gn3 
	.byte	W11
	.byte	W01
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W06
	.byte		N07   , Dn3 
	.byte	W07
	.byte	W16
	.byte		N06   , Fn3 
	.byte	W06
	.byte	W02
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W01
	.byte		        An3 
	.byte	W04
	.byte	W04
	.byte		N17   
	.byte	W04
@ 076   ----------------------------------------
	.byte	W13
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W02
	.byte		N03   , An3 
	.byte	W03
	.byte	W01
	.byte		N11   , Gn3 
	.byte	W11
	.byte	W01
	.byte		        Fn3 
	.byte	W11
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte		N04   , Gn3 
	.byte	W04
	.byte		N06   , An3 
	.byte	W06
	.byte	W02
	.byte		N11   , Gn3 
	.byte	W04
@ 077   ----------------------------------------
	.byte	W07
	.byte	W01
	.byte		N04   , Fn3 
	.byte	W04
	.byte		N06   , Dn3 
	.byte	W06
	.byte	W02
	.byte		N11   , Gn3 , v060
	.byte	W11
	.byte	W01
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W01
	.byte		        Dn3 
	.byte	W03
	.byte	W09
	.byte		N05   , An3 , v096
	.byte	W05
	.byte	W03
	.byte		N03   , Cn4 
	.byte	W03
	.byte	W01
	.byte		        An3 
	.byte	W03
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N06   , As3 
	.byte	W06
	.byte	W02
	.byte		N04   , An3 
	.byte	W04
@ 078   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 079   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 080   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 081   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 082   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 083   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 084   ----------------------------------------
	.byte		N03   , Gn3 
	.byte	W04
	.byte	W03
	.byte		N02   
	.byte	W02
	.byte	W03
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N04   , Gn3 
	.byte	W05
	.byte	W08
	.byte		N04   
	.byte	W05
	.byte	W06
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N04   , Fn3 
	.byte	W04
	.byte	W04
	.byte		N02   , Gn3 
	.byte	W03
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte	W01
@ 085   ----------------------------------------
	.byte	W01
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N03   , Gn3 , v092
	.byte	W03
	.byte	W01
	.byte		N04   , Gn3 , v096
	.byte	W05
	.byte	W03
	.byte		N28   , Fn3 
	.byte	W28
	.byte	W24
@ 086   ----------------------------------------
	.byte	W13
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 087   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 088   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 089   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 090   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 091   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 092   ----------------------------------------
	.byte		N03   , Gn3 
	.byte	W04
	.byte	W03
	.byte		N02   
	.byte	W02
	.byte	W03
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N04   , Gn3 
	.byte	W05
	.byte	W08
	.byte		N04   
	.byte	W05
	.byte	W06
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N04   , Fn3 
	.byte	W04
	.byte	W04
	.byte		N02   , Gn3 
	.byte	W03
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte	W01
@ 093   ----------------------------------------
	.byte	W01
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N03   , Gn3 , v092
	.byte	W03
	.byte	W01
	.byte		N04   , Gn3 , v096
	.byte	W05
	.byte	W03
	.byte		N28   , Fn3 
	.byte	W28
	.byte	W24
@ 094   ----------------------------------------
	.byte	W13
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 095   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 096   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 097   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 098   ----------------------------------------
	.byte	W13
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N08   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N05   , Fn3 
	.byte	W05
@ 099   ----------------------------------------
	.byte	W01
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W12
	.byte	W12
@ 100   ----------------------------------------
	.byte		N03   , Gn3 
	.byte	W04
	.byte	W03
	.byte		N02   
	.byte	W02
	.byte	W03
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N04   , Gn3 
	.byte	W05
	.byte	W08
	.byte		N04   
	.byte	W05
	.byte	W06
	.byte		N02   
	.byte	W02
	.byte	W02
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N04   , Fn3 
	.byte	W04
	.byte	W04
	.byte		N02   , Gn3 
	.byte	W03
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte	W01
@ 101   ----------------------------------------
	.byte	W01
	.byte		        Fn3 
	.byte	W05
	.byte	W02
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W03
	.byte		N03   , Gn3 , v092
	.byte	W03
	.byte	W01
	.byte		N04   , Gn3 , v096
	.byte	W05
	.byte	W03
	.byte		N28   , Fn3 
	.byte	W28
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_crazy_in_love_beyonce_2:
	.byte	KEYSH , mus_crazy_in_love_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 93*mus_crazy_in_love_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 001   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 002   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 003   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 004   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 005   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 006   ----------------------------------------
	.byte		N09   , Fn0 , v096
	.byte	W09
	.byte	W84
	.byte	W03
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte		N08   , As0 
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 011   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 012   ----------------------------------------
	.byte		N09   , Fn0 , v096
	.byte	W09
	.byte	W84
	.byte	W03
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte		N08   , As0 
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 021   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 022   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 023   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 024   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 025   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 026   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 027   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 028   ----------------------------------------
	.byte		N09   , Fn0 , v096
	.byte	W09
	.byte	W84
	.byte	W03
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte		N08   , As0 
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 041   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 042   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 043   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 044   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 045   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 046   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 047   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 048   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 049   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 050   ----------------------------------------
	.byte		N09   , Fn0 , v096
	.byte	W09
	.byte	W84
	.byte	W03
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte		N08   , As0 
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 059   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 060   ----------------------------------------
	.byte		N09   , Fn0 , v096
	.byte	W09
	.byte	W84
	.byte	W03
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte		N08   , As0 
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 069   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 070   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 071   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 072   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 073   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 074   ----------------------------------------
	.byte		N09   , Fn0 , v096
	.byte	W09
	.byte	W84
	.byte	W03
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W84
	.byte	W03
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte		N08   , As0 
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 079   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 080   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 081   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 082   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 083   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 084   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 085   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 086   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 087   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 088   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 089   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 090   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 091   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 092   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 093   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 094   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 095   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 096   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 097   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 098   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 099   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 100   ----------------------------------------
	.byte		        As0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , As0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , As0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , As0 , v088
	.byte	W09
	.byte	W03
	.byte		        As0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , As0 , v092
	.byte	W08
	.byte	W04
@ 101   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N07   , Gn0 , v092
	.byte	W07
	.byte	W05
	.byte		N08   , Gn0 , v096
	.byte	W08
	.byte	W04
	.byte		N09   , Gn0 , v088
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   , Gn0 , v092
	.byte	W08
	.byte	W04
@ 102   ----------------------------------------
	.byte		N11   , Dn0 , v096
	.byte	W11
	.byte	W13
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N13   
	.byte	W13
	.byte	W11
@ 103   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_crazy_in_love_beyonce_3:
	.byte	KEYSH , mus_crazy_in_love_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 88*mus_crazy_in_love_beyonce_mvl/mxv
	.byte		PAN   , c_v+25
	.byte		N44   , Dn3 , v096
	.byte		N42   , Dn4 , v096, gtp1
	.byte	W42
	.byte	W01
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 001   ----------------------------------------
mus_crazy_in_love_beyonce_3_001:
	.byte		N44   , Dn3 , v096
	.byte		N42   , Dn4 , v096, gtp1
	.byte	W42
	.byte	W01
	.byte	PEND
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
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
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
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
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
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
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
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
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_3_001
	.byte	W01
	.byte	W04
	.byte		N06   , Dn3 , v096
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N09   , Fn3 
	.byte		N09   , Fn4 
	.byte	W09
	.byte	W03
@ 102   ----------------------------------------
	.byte		N08   , Dn3 
	.byte		N09   , An3 
	.byte		N08   , Fn4 
	.byte	W08
	.byte	W01
	.byte	W15
	.byte		        Dn3 
	.byte		N09   , An3 
	.byte		N08   , Fn4 
	.byte	W08
	.byte	W01
	.byte	W15
	.byte		N09   , Dn3 
	.byte		N09   , An3 
	.byte		N07   , Fn4 
	.byte	W07
	.byte	W02
	.byte	W15
	.byte		N08   , Dn3 
	.byte		N08   , An3 
	.byte		N07   , Fn4 
	.byte	W07
	.byte	W01
	.byte	W16
@ 103   ----------------------------------------
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte	FINE

@**************** Track 4 (Midi-Chn.6) ****************@

mus_crazy_in_love_beyonce_4:
	.byte	KEYSH , mus_crazy_in_love_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 56*mus_crazy_in_love_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N08   , Dn3 , v084
	.byte		N08   , Fn3 , v080
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 001   ----------------------------------------
mus_crazy_in_love_beyonce_4_001:
	.byte		N09   , Bn2 , v068
	.byte		N08   , Dn3 
	.byte		N09   , Gn3 , v076
	.byte	W08
	.byte	PEND
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 002   ----------------------------------------
mus_crazy_in_love_beyonce_4_002:
	.byte		N08   , Dn3 , v084
	.byte		N08   , Fn3 , v080
	.byte		N08   , As3 
	.byte	W08
	.byte	PEND
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
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
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
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
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
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
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
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
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_002
	.byte	W04
	.byte		N09   , Dn3 , v096
	.byte		N08   , Fn3 
	.byte		N09   , As3 
	.byte	W08
	.byte	W01
	.byte	W09
	.byte		N05   , Dn3 , v032
	.byte		N05   , Fn3 , v040
	.byte		N05   , As3 , v044
	.byte	W05
	.byte	W01
	.byte		N10   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N10   , As3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N07   , Dn3 , v096
	.byte		N07   , Fn3 
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte		N05   , As3 , v056
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W05
	.byte	W01
	.byte		N09   , Dn3 , v096
	.byte		N09   , Fn3 
	.byte		N09   , As3 
	.byte	W09
	.byte	W03
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_4_001
	.byte	W01
	.byte	W03
	.byte		N10   , Bn2 , v096
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte	W08
	.byte		N05   , Bn2 , v052
	.byte		N04   , Dn3 , v048
	.byte		N05   , Gn3 , v044
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v092
	.byte		N09   , Dn3 , v096
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte	W09
	.byte		N05   , Bn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Gn3 , v044
	.byte	W05
	.byte	W01
	.byte		N08   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W10
	.byte		N04   , Bn2 , v060
	.byte		N05   , Dn3 , v052
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Bn2 , v096
	.byte		N08   , Dn3 
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W01
	.byte	FINE

@**************** Track 5 (Midi-Chn.9) ****************@

mus_crazy_in_love_beyonce_5:
	.byte	KEYSH , mus_crazy_in_love_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 66*mus_crazy_in_love_beyonce_mvl/mxv
	.byte		PAN   , c_v+21
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
	.byte		N24   , An3 , v096
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
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
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
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
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
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
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	W72
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
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte		N18   , Dn3 
	.byte		N18   , Dn4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte	W06
	.byte		N20   , Dn3 
	.byte		N21   , Dn4 
	.byte		N20   , Dn5 
	.byte	W20
	.byte	W01
	.byte	W03
	.byte		N21   , Dn3 
	.byte		N21   , Dn4 
	.byte		N21   , Dn5 
	.byte	W21
	.byte	W03
	.byte		        Dn3 
	.byte		N20   , Dn4 
	.byte		N20   , Dn5 
	.byte	W20
	.byte	W01
	.byte	W03
@ 103   ----------------------------------------
	.byte		N40   , Dn3 
	.byte		N40   , Dn4 , v096, gtp1
	.byte		N40   , Dn5 , v096, gtp1
	.byte	W40
	.byte	W01
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_crazy_in_love_beyonce_6:
	.byte	KEYSH , mus_crazy_in_love_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte		VOL   , 127*mus_crazy_in_love_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N01   , Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W04
	.byte		        Bn0 , v048
	.byte	W04
	.byte		        Bn0 , v072
	.byte	W04
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 001   ----------------------------------------
mus_crazy_in_love_beyonce_6_001:
	.byte		N01   , Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte	PEND
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 006   ----------------------------------------
mus_crazy_in_love_beyonce_6_006:
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte	PEND
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W04
	.byte		        Bn0 , v048
	.byte	W04
	.byte		        Bn0 , v072
	.byte	W04
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W04
	.byte		        Bn0 , v048
	.byte	W04
	.byte		        Bn0 , v072
	.byte	W04
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 057   ----------------------------------------
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W04
	.byte		        Bn0 , v048
	.byte	W04
	.byte		        Bn0 , v072
	.byte	W04
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 075   ----------------------------------------
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_006
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fs2 
	.byte		N01   , As3 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v068
	.byte		N01   , Fs1 , v056
	.byte		N01   , As3 
	.byte	W60
	.byte		        Bn0 , v092
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W04
	.byte		        Bn0 , v048
	.byte	W04
	.byte		        Bn0 , v072
	.byte	W04
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W04
	.byte		        Bn0 , v048
	.byte	W04
	.byte		        Bn0 , v072
	.byte	W04
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W04
	.byte		        Bn0 , v048
	.byte	W04
	.byte		        Bn0 , v072
	.byte	W04
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_crazy_in_love_beyonce_6_001
	.byte		N01   , Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Ds1 , v072
	.byte		N01   , As1 , v056
	.byte		N01   , As3 
	.byte	W12
	.byte		        Bn0 , v068
	.byte		N01   , As3 , v036
	.byte	W12
@ 102   ----------------------------------------
	.byte		N04   , Bn0 , v092
	.byte	W04
	.byte	W20
	.byte		N04   
	.byte	W04
	.byte	W20
	.byte		N04   
	.byte	W04
	.byte	W20
	.byte		N04   
	.byte	W04
	.byte	W20
@ 103   ----------------------------------------
	.byte		N04   
	.byte	W04
	.byte	FINE

@**************** Track 7 (Midi-Chn.11) ****************@

mus_crazy_in_love_beyonce_7:
	.byte	KEYSH , mus_crazy_in_love_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 83*mus_crazy_in_love_beyonce_mvl/mxv
	.byte		PAN   , c_v-7
	.byte	W96
@ 001   ----------------------------------------
	.byte	W84
	.byte		N04   , Fn3 , v096
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 002   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 003   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 004   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 005   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 006   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte		N04   
	.byte	W04
	.byte	W92
@ 011   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
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
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 022   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 023   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 024   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 025   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 026   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 027   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
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
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 042   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 043   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 044   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 045   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 046   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 047   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 048   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 049   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
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
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 059   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
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
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 070   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 071   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 072   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 073   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
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
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 080   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 081   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 082   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 083   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 084   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 085   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 086   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 087   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 088   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 089   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 090   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 091   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 092   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 093   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 094   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 095   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 096   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 097   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 098   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 099   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 100   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte	W92
@ 101   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 102   ----------------------------------------
	.byte	W09
	.byte		        Cn3 , v080
	.byte	W03
	.byte		        Bn2 
	.byte	W01
	.byte	W02
	.byte		        As2 
	.byte	W01
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte	W03
	.byte	W11
	.byte		        Cn3 
	.byte	W03
	.byte		        Bn2 
	.byte	W01
	.byte	W02
	.byte		        As2 
	.byte	W01
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte	W03
	.byte	W11
	.byte		        Cn3 
	.byte	W03
	.byte		        Bn2 
	.byte	W01
	.byte	W02
	.byte		        As2 
	.byte	W01
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte	W03
	.byte	W11
	.byte		        Cn3 
	.byte	W03
	.byte		        Bn2 
	.byte	W01
	.byte	W02
	.byte		        As2 
	.byte	W01
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

mus_crazy_in_love_beyonce:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_crazy_in_love_beyonce_pri	@ Priority
	.byte	mus_crazy_in_love_beyonce_rev	@ Reverb.

	.word	mus_crazy_in_love_beyonce_grp

	.word	mus_crazy_in_love_beyonce_1
	.word	mus_crazy_in_love_beyonce_2
	.word	mus_crazy_in_love_beyonce_3
	.word	mus_crazy_in_love_beyonce_4
	.word	mus_crazy_in_love_beyonce_5
	.word	mus_crazy_in_love_beyonce_6
	.word	mus_crazy_in_love_beyonce_7

	.end
