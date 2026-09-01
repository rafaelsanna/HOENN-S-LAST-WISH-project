	.include "MPlayDef.s"

	.equ	mus_touhou5_stage3_boss_grp, voicegroup_ancient_groover
	.equ	mus_touhou5_stage3_boss_pri, 0
	.equ	mus_touhou5_stage3_boss_rev, reverb_set+50
	.equ	mus_touhou5_stage3_boss_mvl, 100
	.equ	mus_touhou5_stage3_boss_key, 0
	.equ	mus_touhou5_stage3_boss_tbs, 1
	.equ	mus_touhou5_stage3_boss_exg, 1
	.equ	mus_touhou5_stage3_boss_cmp, 1

	.section .rodata
	.global	mus_touhou5_stage3_boss
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_touhou5_stage3_boss_1:
	.byte	KEYSH , mus_touhou5_stage3_boss_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 167*mus_touhou5_stage3_boss_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
@ 002   ----------------------------------------
@ 003   ----------------------------------------
	.byte		N12   , Cn4 , v112
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
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
	.byte		N48   , Gs4 
	.byte		N48   , Gs5 
	.byte	W48
	.byte	W12
	.byte		N12   , Gs4 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , Fn5 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N36   , Gn4 
	.byte		N36   , Gn5 
	.byte	W36
	.byte		        Ds4 
	.byte		N36   , Ds5 
	.byte	W36
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
@ 037   ----------------------------------------
	.byte		N36   , Fn4 
	.byte		N36   , Fn5 
	.byte	W36
	.byte		        Gn4 
	.byte		N36   , Gn5 
	.byte	W36
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N36   , Ds4 
	.byte		N36   , Ds5 
	.byte	W36
	.byte		        Cn4 
	.byte		N36   , Cn5 
	.byte	W36
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
@ 039   ----------------------------------------
	.byte		N48   , Gs4 
	.byte		N48   , Gs5 
	.byte	W48
	.byte	W12
	.byte		N12   , Gs4 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Gs5 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N36   , Gn4 
	.byte		N36   , Gn5 
	.byte	W36
	.byte		        Ds4 
	.byte		N36   , Ds5 
	.byte	W36
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N48   , Gs4 
	.byte		N48   , Gs5 
	.byte	W48
	.byte	W12
	.byte		N12   , Gs4 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , Fn5 
	.byte	W12
@ 042   ----------------------------------------
	.byte		N48   , Cn5 
	.byte		N48   , Cn6 
	.byte	W48
	.byte		N24   , Bn4 
	.byte		N24   , Bn5 
	.byte	W24
	.byte		        Dn5 
	.byte		N24   , Dn6 
	.byte	W24
@ 043   ----------------------------------------
mus_touhou5_stage3_boss_1_043:
	.byte		TIE   , Cn4 , v112
	.byte		TIE   , Gn4 
	.byte	W96
	.byte	PEND
@ 044   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        Gn4 
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_1_043
@ 046   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn4 
	.byte		        Gn4 
	.byte		N48   , Bn3 , v112
	.byte		N48   , Gn4 
	.byte	W48
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_1_043
@ 048   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        Gn4 
@ 049   ----------------------------------------
	.byte		N48   , Cn4 , v112
	.byte		N48   , Gn4 
	.byte	W48
	.byte		        Bn3 
	.byte		N48   , Gn4 
	.byte	W48
@ 050   ----------------------------------------
	.byte		N96   , Cn4 
	.byte		N96   , Gn4 
	.byte	W96
@ 051   ----------------------------------------
mus_touhou5_stage3_boss_1_051:
	.byte		TIE   , Gn4 , v112
	.byte		TIE   , Cn5 
	.byte	W96
	.byte	PEND
@ 052   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn4 
	.byte		        Cn5 
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_1_051
@ 054   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte		N48   , Gn4 , v112
	.byte		N48   , Dn5 
	.byte	W48
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_1_051
@ 056   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte		N48   , Gn4 , v112
	.byte		N48   , Dn5 
	.byte	W48
@ 057   ----------------------------------------
	.byte		        Gs4 
	.byte		N48   , Ds5 
	.byte	W48
	.byte		        Dn5 
	.byte		N48   , Fn5 
	.byte	W48
@ 058   ----------------------------------------
	.byte		N96   , Cn5 
	.byte		N96   , Gn5 
	.byte	W96
@ 059   ----------------------------------------
mus_touhou5_stage3_boss_1_059:
	.byte		TIE   , Cs4 , v112
	.byte		TIE   , Gs4 
	.byte	W96
	.byte	PEND
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs4 
	.byte		        Gs4 
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_1_059
@ 062   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs4 
	.byte		        Gs4 
	.byte		N48   , Cn4 , v112
	.byte		N48   , Gs4 
	.byte	W48
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_1_059
@ 064   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs4 
	.byte		        Gs4 
@ 065   ----------------------------------------
	.byte		N48   , Cs4 , v112
	.byte		N48   , Gs4 
	.byte	W48
	.byte		        Cn4 
	.byte		N48   , Gs4 
	.byte	W48
@ 066   ----------------------------------------
	.byte		N96   , Cs4 
	.byte		N96   , Gs4 
	.byte	W96
@ 067   ----------------------------------------
mus_touhou5_stage3_boss_1_067:
	.byte		TIE   , Gs4 , v112
	.byte		TIE   , Cs5 
	.byte	W96
	.byte	PEND
@ 068   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs4 
	.byte		        Cs5 
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_1_067
@ 070   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs4 
	.byte		        Cs5 
	.byte		N48   , Gs4 , v112
	.byte		N48   , Ds5 
	.byte	W48
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_1_067
@ 072   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs4 
	.byte		        Cs5 
	.byte		N48   , Gs4 , v112
	.byte		N48   , Ds5 
	.byte	W48
@ 073   ----------------------------------------
	.byte		        An4 
	.byte		N48   , En5 
	.byte	W48
	.byte		        Ds5 
	.byte		N48   , Fs5 
	.byte	W48
@ 074   ----------------------------------------
	.byte		N96   , Cs5 
	.byte		N96   , Gs5 
	.byte	W96
@ 075   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_touhou5_stage3_boss_2:
	.byte	KEYSH , mus_touhou5_stage3_boss_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte		VOICE , 56
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v+8
	.byte	W24
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
mus_touhou5_stage3_boss_2_018:
	.byte		MOD   , 0
	.byte		N48   , Ds3 , v100
	.byte		N48   , Ds4 
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
	.byte		N12   , Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
@ 019   ----------------------------------------
mus_touhou5_stage3_boss_2_019:
	.byte		MOD   , 0
	.byte		N36   , Dn3 , v100
	.byte		N36   , Dn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte	PEND
	.byte		        0
	.byte		N36   , As2 
	.byte		N36   , As3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N24   , Fn2 
	.byte		N24   , Fn3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 020   ----------------------------------------
mus_touhou5_stage3_boss_2_020:
	.byte		MOD   , 0
	.byte		TIE   , Gn2 , v100
	.byte		TIE   , Gn3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W72
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn2 
	.byte		        Gn3 
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_018
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Gn2 , v100
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_019
	.byte		MOD   , 0
	.byte		N36   , Ds3 , v100
	.byte		N36   , Ds4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N24   , Fn3 
	.byte		N24   , Fn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 024   ----------------------------------------
	.byte		        0
	.byte		TIE   , Cn3 
	.byte		TIE   , Cn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W72
@ 025   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Cn4 
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_018
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Gn2 , v100
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_019
	.byte		MOD   , 0
	.byte		N36   , As2 , v100
	.byte		N36   , As3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N24   , Fn2 
	.byte		N24   , Fn3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_020
@ 029   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn2 
	.byte		        Gn3 
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_018
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Gn2 , v100
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_019
	.byte		MOD   , 0
	.byte		N36   , Ds3 , v100
	.byte		N36   , Ds4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N12   , As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Fn4 
	.byte	W12
@ 032   ----------------------------------------
	.byte		MOD   , 0
	.byte		TIE   , Gn3 
	.byte		TIE   , Gn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W72
@ 033   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn3 
	.byte		        Gn4 
@ 034   ----------------------------------------
mus_touhou5_stage3_boss_2_034:
	.byte		MOD   , 0
	.byte		N48   , Gs3 , v100
	.byte		N48   , Gs4 
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
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Fn4 
	.byte	W12
@ 035   ----------------------------------------
mus_touhou5_stage3_boss_2_035:
	.byte		MOD   , 0
	.byte		N36   , Gn3 , v100
	.byte		N36   , Gn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte	PEND
	.byte		        0
	.byte		N36   , Ds3 
	.byte		N36   , Ds4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 036   ----------------------------------------
	.byte		        0
	.byte		N36   , Fn3 
	.byte		N36   , Fn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N36   , Gn3 
	.byte		N36   , Gn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N24   , Dn3 
	.byte		N24   , Dn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 037   ----------------------------------------
	.byte		        0
	.byte		N36   , Ds3 
	.byte		N36   , Ds4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N36   , Cn3 
	.byte		N36   , Cn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_034
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Gs3 , v100
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_035
	.byte		MOD   , 0
	.byte		N36   , Ds3 , v100
	.byte		N36   , Ds4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_034
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Gs3 , v100
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Fn4 
	.byte	W12
@ 041   ----------------------------------------
	.byte		MOD   , 0
	.byte		N48   , Cn4 
	.byte		N48   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
	.byte		        0
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 042   ----------------------------------------
mus_touhou5_stage3_boss_2_042:
	.byte		MOD   , 0
	.byte		N18   , Gn3 , v100
	.byte		N18   , Gn4 
	.byte	W18
	.byte	PEND
	.byte		        Cn4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		        Dn4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N18   , Fn4 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , Ds4 
	.byte		N48   , Ds5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 044   ----------------------------------------
mus_touhou5_stage3_boss_2_044:
	.byte		MOD   , 0
	.byte		N18   , Cn4 , v100
	.byte		N18   , Cn5 
	.byte	W18
	.byte	PEND
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , Dn4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 045   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		        Dn4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_044
	.byte		N18   , Gn3 , v100
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , Dn4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		        Fn4 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		N12   , Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N18   , Fn4 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 048   ----------------------------------------
	.byte		N18   , Cn4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , Bn4 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
@ 049   ----------------------------------------
mus_touhou5_stage3_boss_2_049:
	.byte		MOD   , 0
	.byte		N96   , Cn4 , v100
	.byte		N96   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W72
	.byte	PEND
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_042
	.byte		N18   , Cn4 , v100
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		        Dn4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N18   , Fn4 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , Ds4 
	.byte		N48   , Ds5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_044
	.byte		N18   , Gn3 , v100
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , Dn4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 053   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		        Dn4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_044
	.byte		N18   , Gn3 , v100
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , Dn4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		        Fn4 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		N12   , Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N18   , Fn4 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 056   ----------------------------------------
	.byte		N18   , Cn4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , Bn4 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_049
@ 058   ----------------------------------------
mus_touhou5_stage3_boss_2_058:
	.byte		MOD   , 0
	.byte		N18   , Gs3 , v100
	.byte		N18   , Gs4 
	.byte	W18
	.byte	PEND
	.byte		        Cs4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , En5 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 059   ----------------------------------------
	.byte		N18   , Fs4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		        En4 
	.byte		N18   , En5 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , En4 
	.byte		N48   , En5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 060   ----------------------------------------
mus_touhou5_stage3_boss_2_060:
	.byte		MOD   , 0
	.byte		N18   , Cs4 , v100
	.byte		N18   , Cs5 
	.byte	W18
	.byte	PEND
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N18   , En4 
	.byte		N18   , En5 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , Cn4 
	.byte		N48   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_060
	.byte		N18   , Gs3 , v100
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
@ 063   ----------------------------------------
	.byte		N18   , En4 
	.byte		N18   , En5 
	.byte	W18
	.byte		        Fs4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Gs4 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		N18   , Fs4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		        En4 
	.byte		N18   , En5 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N18   , Cs4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N18   , Cn4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
@ 065   ----------------------------------------
mus_touhou5_stage3_boss_2_065:
	.byte		MOD   , 0
	.byte		N96   , Cs4 , v100
	.byte		N96   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W72
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_058
	.byte		N18   , Cs4 , v100
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , En5 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 067   ----------------------------------------
	.byte		N18   , Fs4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		        En4 
	.byte		N18   , En5 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , En4 
	.byte		N48   , En5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_060
	.byte		N18   , Gs3 , v100
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
@ 069   ----------------------------------------
	.byte		N18   , En4 
	.byte		N18   , En5 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , Cn4 
	.byte		N48   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_060
	.byte		N18   , Gs3 , v100
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
@ 071   ----------------------------------------
	.byte		N18   , En4 
	.byte		N18   , En5 
	.byte	W18
	.byte		        Fs4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Gs4 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		N18   , Fs4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		        En4 
	.byte		N18   , En5 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N18   , Cs4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N18   , Cn4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_2_065
@ 074   ----------------------------------------
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_touhou5_stage3_boss_3:
	.byte	KEYSH , mus_touhou5_stage3_boss_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte		VOICE , 50
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte	W24
@ 002   ----------------------------------------
@ 003   ----------------------------------------
	.byte		N96   , Gn1 , v088
	.byte		N96   , Cn2 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Cn2 
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Cn2 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Cn2 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Cn2 
	.byte	W96
@ 008   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Cn2 
	.byte	W96
@ 009   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Cn2 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Cn2 
	.byte	W96
@ 011   ----------------------------------------
mus_touhou5_stage3_boss_3_011:
	.byte		TIE   , Cn2 , v088
	.byte		TIE   , Gn2 
	.byte	W96
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gn2 
@ 013   ----------------------------------------
mus_touhou5_stage3_boss_3_013:
	.byte		TIE   , Gs1 , v088
	.byte		TIE   , Ds2 
	.byte	W96
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		N48   , As1 
	.byte		N48   , Fn2 
	.byte	W48
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_011
@ 016   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gn2 
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_013
@ 018   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		N48   , As1 , v088
	.byte		N48   , Fn2 
	.byte	W48
@ 019   ----------------------------------------
	.byte		N96   , Cn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 020   ----------------------------------------
	.byte		        As1 
	.byte		N96   , Fn2 
	.byte	W96
@ 021   ----------------------------------------
	.byte		        Gs1 
	.byte		N96   , Ds2 
	.byte	W96
@ 022   ----------------------------------------
	.byte		        As1 
	.byte		N96   , Fn2 
	.byte	W96
@ 023   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 024   ----------------------------------------
	.byte		        As1 
	.byte		N96   , Fn2 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Gs1 
	.byte		N96   , Ds2 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        As1 
	.byte		N96   , Fn2 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        As1 
	.byte		N96   , Fn2 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        Gs1 
	.byte		N96   , Ds2 
	.byte	W96
@ 030   ----------------------------------------
	.byte		        As1 
	.byte		N96   , Fn2 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        As1 
	.byte		N96   , Fn2 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        Gs1 
	.byte		N96   , Ds2 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        As1 
	.byte		N96   , Fn2 
	.byte	W96
@ 035   ----------------------------------------
	.byte		N96   
	.byte		N96   , Cn3 
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , As2 
	.byte	W96
@ 037   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Gs2 
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gn2 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cn3 
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , As2 
	.byte	W96
@ 041   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Gs2 
	.byte	W96
@ 042   ----------------------------------------
	.byte		N48   , Gn2 
	.byte		N48   , Dn3 
	.byte	W48
	.byte		N24   , Gn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Dn3 
	.byte	W24
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_011
@ 044   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gn2 
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_011
@ 046   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn2 
	.byte		        Gn2 
	.byte		N48   , Bn1 , v088
	.byte		N48   , Gn2 
	.byte	W48
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_011
@ 048   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gn2 
@ 049   ----------------------------------------
	.byte		N48   , Cn2 , v088
	.byte		N48   , Gn2 
	.byte	W48
	.byte		        Bn1 
	.byte		N48   , Gn2 
	.byte	W48
@ 050   ----------------------------------------
	.byte		N96   , Cn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_011
@ 052   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gn2 
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_011
@ 054   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn2 
	.byte		        Gn2 
	.byte		N48   , Dn2 , v088
	.byte		N48   , Gn2 
	.byte	W48
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_011
@ 056   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn2 
	.byte		        Gn2 
	.byte		N48   , Dn2 , v088
	.byte		N48   , Gn2 
	.byte	W48
@ 057   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , Gs2 
	.byte	W48
	.byte		        Fn2 
	.byte		N48   , Dn3 
	.byte	W48
@ 058   ----------------------------------------
	.byte		N96   , Gn2 
	.byte		N96   , Cn3 
	.byte	W96
@ 059   ----------------------------------------
mus_touhou5_stage3_boss_3_059:
	.byte		TIE   , Cs2 , v088
	.byte		TIE   , Gs2 
	.byte	W96
	.byte	PEND
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs2 
	.byte		        Gs2 
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_059
@ 062   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs2 
	.byte		        Gs2 
	.byte		N48   , Cn2 , v088
	.byte		N48   , Gs2 
	.byte	W48
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_059
@ 064   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs2 
	.byte		        Gs2 
@ 065   ----------------------------------------
	.byte		N48   , Cs2 , v088
	.byte		N48   , Gs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gs2 
	.byte	W48
@ 066   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , Gs2 
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_059
@ 068   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs2 
	.byte		        Gs2 
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_059
@ 070   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs2 
	.byte		        Gs2 
	.byte		N48   , Ds2 , v088
	.byte		N48   , Gs2 
	.byte	W48
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_3_059
@ 072   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs2 
	.byte		        Gs2 
	.byte		N48   , Ds2 , v088
	.byte		N48   , Gs2 
	.byte	W48
@ 073   ----------------------------------------
	.byte		        En2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        Fs2 
	.byte		N48   , Ds3 
	.byte	W48
@ 074   ----------------------------------------
	.byte		N96   , Gs2 
	.byte		N96   , Cs3 
	.byte	W96
@ 075   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_touhou5_stage3_boss_4:
	.byte	KEYSH , mus_touhou5_stage3_boss_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte		VOICE , 34
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   , Cn2 , v100
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
@ 003   ----------------------------------------
	.byte		        c_v+0
	.byte		N96   
	.byte	W96
@ 004   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 005   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 006   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 007   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 012   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 014   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 016   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 018   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 019   ----------------------------------------
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
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        As1 
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
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        As1 
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
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        As1 
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
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        As1 
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
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 028   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 029   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 030   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 032   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 033   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 034   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 035   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 036   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 037   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 038   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 039   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 040   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 041   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 042   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
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
@ 043   ----------------------------------------
	.byte		        c_v+0
	.byte		TIE   , Cn2 
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 045   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 046   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , Bn1 
	.byte	W48
@ 047   ----------------------------------------
	.byte		TIE   , Cn2 
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 049   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		        Bn1 
	.byte	W48
@ 050   ----------------------------------------
	.byte		        Cn2 
	.byte	W48
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 051   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 052   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 053   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 054   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
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
@ 055   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 056   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
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
@ 057   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 059   ----------------------------------------
	.byte		TIE   , Cs2 
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 061   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 062   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , Cn2 
	.byte	W48
@ 063   ----------------------------------------
	.byte		TIE   , Cs2 
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 065   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		        Cn2 
	.byte	W48
@ 066   ----------------------------------------
	.byte		        Cs2 
	.byte	W48
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 068   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 069   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 070   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 071   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 072   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 073   ----------------------------------------
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
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
@ 075   ----------------------------------------
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_touhou5_stage3_boss_5:
	.byte	KEYSH , mus_touhou5_stage3_boss_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte		VOICE , 82
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v-64
	.byte	W24
@ 002   ----------------------------------------
@ 003   ----------------------------------------
mus_touhou5_stage3_boss_5_003:
	.byte		PAN   , c_v-64
	.byte		        c_v-63
	.byte		N06   , Gn2 , v076
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-62
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-57
	.byte	W01
	.byte	PEND
	.byte		        c_v-56
	.byte		        c_v-55
	.byte		N06   , As2 
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-47
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-39
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-31
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-23
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-15
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-7
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+1
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+9
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v+17
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+25
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+29
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+33
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+40
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+41
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+48
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+49
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+57
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+62
	.byte		        c_v+63
	.byte	W01
@ 004   ----------------------------------------
mus_touhou5_stage3_boss_5_004:
	.byte		PAN   , c_v+63
	.byte		        c_v+62
	.byte		N06   , Gn2 , v076
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v+61
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+59
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte	PEND
	.byte		        c_v+55
	.byte		        c_v+54
	.byte		N06   , As2 
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+46
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+38
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+31
	.byte		        c_v+30
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+27
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+22
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+15
	.byte		        c_v+14
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+6
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-50
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-64
	.byte	W01
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_003
	.byte		PAN   , c_v-56
	.byte		        c_v-55
	.byte		N06   , As2 , v076
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-47
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-39
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-31
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-23
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-15
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-7
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+1
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+9
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v+17
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+25
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+29
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+33
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+40
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+41
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+48
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+49
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+57
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+62
	.byte		        c_v+63
	.byte	W01
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_004
	.byte		PAN   , c_v+55
	.byte		        c_v+54
	.byte		N06   , As2 , v076
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+46
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+38
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+31
	.byte		        c_v+30
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+27
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+22
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+15
	.byte		        c_v+14
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+6
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-50
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-64
	.byte	W01
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_003
	.byte		PAN   , c_v-56
	.byte		        c_v-55
	.byte		N06   , As2 , v076
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-47
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-39
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-31
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-23
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-15
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-7
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+1
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+9
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v+17
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+25
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+29
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+33
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+40
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+41
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+48
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+49
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+57
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+62
	.byte		        c_v+63
	.byte	W01
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_004
	.byte		PAN   , c_v+55
	.byte		        c_v+54
	.byte		N06   , As2 , v076
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+46
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+38
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+31
	.byte		        c_v+30
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+27
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+22
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+15
	.byte		        c_v+14
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+6
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-50
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-64
	.byte	W01
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_003
	.byte		PAN   , c_v-56
	.byte		        c_v-55
	.byte		N06   , As2 , v076
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-47
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-39
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-31
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-23
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-15
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-7
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+1
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+9
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v+17
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+25
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+29
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+33
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+40
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+41
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+48
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+49
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+57
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+62
	.byte		        c_v+63
	.byte	W01
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_004
	.byte		PAN   , c_v+55
	.byte		        c_v+54
	.byte		N06   , As2 , v076
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+46
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+38
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+31
	.byte		        c_v+30
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+27
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+22
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+15
	.byte		        c_v+14
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+6
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-50
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-64
	.byte	W01
@ 011   ----------------------------------------
mus_touhou5_stage3_boss_5_011:
	.byte		PAN   , c_v-64
	.byte		N06   , Gn4 , v076
	.byte		N06   , Cn5 
	.byte	W06
	.byte	PEND
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 012   ----------------------------------------
mus_touhou5_stage3_boss_5_012:
	.byte		PAN   , c_v+63
	.byte		N06   , Gn4 , v076
	.byte		N06   , Cn5 
	.byte	W06
	.byte	PEND
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_011
	.byte		N06   , Ds4 , v076
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_012
	.byte		N06   , Ds4 , v076
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_011
	.byte		N06   , Ds4 , v076
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_012
	.byte		N06   , Ds4 , v076
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_011
	.byte		N06   , Ds4 , v076
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_012
	.byte		N06   , Ds4 , v076
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
@ 019   ----------------------------------------
	.byte		PAN   , c_v-64
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
mus_touhou5_stage3_boss_5_027:
	.byte		PAN   , c_v-64
	.byte		N06   , Cn5 , v076
	.byte	W06
	.byte	PEND
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 028   ----------------------------------------
mus_touhou5_stage3_boss_5_028:
	.byte		PAN   , c_v+63
	.byte		N06   , Cn5 , v076
	.byte	W06
	.byte	PEND
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_027
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_028
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_027
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_028
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_027
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_028
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 035   ----------------------------------------
	.byte		PAN   , c_v-64
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
mus_touhou5_stage3_boss_5_043:
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 , v076
	.byte	W01
	.byte		PAN   , c_v-63
	.byte	W02
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-61
	.byte	W02
	.byte	PEND
	.byte		        c_v-60
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-59
	.byte	W02
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v-56
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-55
	.byte	W02
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-52
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-51
	.byte	W02
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W02
	.byte		        c_v-48
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-47
	.byte	W02
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v-44
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-43
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-40
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-39
	.byte	W02
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-36
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-35
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W02
	.byte		        c_v-32
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-31
	.byte	W02
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W02
	.byte		        c_v-28
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-27
	.byte	W02
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-24
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-23
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-20
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v-19
	.byte	W02
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-16
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
@ 044   ----------------------------------------
mus_touhou5_stage3_boss_5_044:
	.byte		PAN   , c_v+0
	.byte		N06   , Gn6 , v076
	.byte	W02
	.byte		PAN   , c_v+1
	.byte	W01
	.byte		        c_v+2
	.byte	W02
	.byte		        c_v+3
	.byte	W01
	.byte	PEND
	.byte		        c_v+4
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		        c_v+10
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W01
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , Dn5 
	.byte	W02
	.byte		PAN   , c_v+25
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte		N06   , Cn5 
	.byte	W02
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+30
	.byte	W02
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte	W02
	.byte		PAN   , c_v+33
	.byte	W02
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte	W02
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+40
	.byte	W01
	.byte		        c_v+41
	.byte	W02
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte	W02
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+48
	.byte	W01
	.byte		        c_v+49
	.byte	W02
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W02
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W02
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W01
@ 045   ----------------------------------------
mus_touhou5_stage3_boss_5_045:
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 , v076
	.byte	W01
	.byte		PAN   , c_v+62
	.byte	W02
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+60
	.byte	W02
	.byte	PEND
	.byte		        c_v+59
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v+58
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+55
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+54
	.byte	W02
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+51
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+50
	.byte	W02
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W02
	.byte		        c_v+47
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W02
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W02
	.byte		        c_v+43
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+42
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W02
	.byte		        c_v+39
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+38
	.byte	W02
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+35
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+34
	.byte	W02
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+31
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+30
	.byte	W02
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W02
	.byte		        c_v+27
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+26
	.byte	W02
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+23
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W02
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W02
	.byte		        c_v+19
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v+18
	.byte	W02
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+15
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v+14
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte	W01
@ 046   ----------------------------------------
mus_touhou5_stage3_boss_5_046:
	.byte		PAN   , c_v-1
	.byte		N06   , Gn6 , v076
	.byte	W02
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte	PEND
	.byte		        c_v-5
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v-18
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , Dn5 
	.byte	W02
	.byte		PAN   , c_v-26
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte		N06   , Cn5 
	.byte	W02
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte	W02
	.byte		PAN   , c_v-34
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte	W02
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-42
	.byte	W02
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-49
	.byte	W01
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W02
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-57
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W01
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_043
	.byte		PAN   , c_v-60
	.byte		N06   , Cn3 , v076
	.byte	W01
	.byte		PAN   , c_v-59
	.byte	W02
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v-56
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-55
	.byte	W02
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-52
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-51
	.byte	W02
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W02
	.byte		        c_v-48
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-47
	.byte	W02
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v-44
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-43
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-40
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-39
	.byte	W02
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-36
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-35
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W02
	.byte		        c_v-32
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-31
	.byte	W02
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W02
	.byte		        c_v-28
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-27
	.byte	W02
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-24
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-23
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-20
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v-19
	.byte	W02
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-16
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_044
	.byte		PAN   , c_v+4
	.byte		N06   , Ds6 , v076
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		        c_v+10
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W01
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , Dn5 
	.byte	W02
	.byte		PAN   , c_v+25
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte		N06   , Cn5 
	.byte	W02
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+30
	.byte	W02
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte	W02
	.byte		PAN   , c_v+33
	.byte	W02
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte	W02
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+40
	.byte	W01
	.byte		        c_v+41
	.byte	W02
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte	W02
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+48
	.byte	W01
	.byte		        c_v+49
	.byte	W02
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W02
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W02
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W01
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_045
	.byte		PAN   , c_v+59
	.byte		N06   , Cn3 , v076
	.byte	W01
	.byte		PAN   , c_v+58
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+55
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+54
	.byte	W02
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+51
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+50
	.byte	W02
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W02
	.byte		        c_v+47
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W02
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W02
	.byte		        c_v+43
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+42
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W02
	.byte		        c_v+39
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+38
	.byte	W02
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+35
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+34
	.byte	W02
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+31
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+30
	.byte	W02
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W02
	.byte		        c_v+27
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+26
	.byte	W02
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+23
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W02
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W02
	.byte		        c_v+19
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v+18
	.byte	W02
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+15
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v+14
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte	W01
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_046
	.byte		PAN   , c_v-5
	.byte		N06   , Ds6 , v076
	.byte	W02
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v-18
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , Dn5 
	.byte	W02
	.byte		PAN   , c_v-26
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte		N06   , Cn5 
	.byte	W02
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte	W02
	.byte		PAN   , c_v-34
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte	W02
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-42
	.byte	W02
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-49
	.byte	W01
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W02
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-57
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W01
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_027
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_028
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_027
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_028
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_027
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_028
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_027
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_028
	.byte		N06   , Gn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 059   ----------------------------------------
mus_touhou5_stage3_boss_5_059:
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 , v076
	.byte	W01
	.byte		PAN   , c_v-63
	.byte	W02
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-61
	.byte	W02
	.byte	PEND
	.byte		        c_v-60
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v-59
	.byte	W02
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v-56
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-55
	.byte	W02
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-52
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v-51
	.byte	W02
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W02
	.byte		        c_v-48
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v-47
	.byte	W02
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v-44
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v-43
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-40
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-39
	.byte	W02
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-36
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v-35
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W02
	.byte		        c_v-32
	.byte		N06   , Gs4 
	.byte	W01
	.byte		PAN   , c_v-31
	.byte	W02
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W02
	.byte		        c_v-28
	.byte		N06   , Cs5 
	.byte	W01
	.byte		PAN   , c_v-27
	.byte	W02
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-24
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v-23
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-20
	.byte		N06   , En5 
	.byte	W01
	.byte		PAN   , c_v-19
	.byte	W02
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-16
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
@ 060   ----------------------------------------
mus_touhou5_stage3_boss_5_060:
	.byte		PAN   , c_v+0
	.byte		N06   , Gs6 , v076
	.byte	W02
	.byte		PAN   , c_v+1
	.byte	W01
	.byte		        c_v+2
	.byte	W02
	.byte		        c_v+3
	.byte	W01
	.byte	PEND
	.byte		        c_v+4
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		        c_v+10
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W01
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte		N06   , En5 
	.byte	W02
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+25
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte		N06   , Cs5 
	.byte	W02
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+30
	.byte	W02
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gs4 
	.byte	W02
	.byte		PAN   , c_v+33
	.byte	W02
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte	W02
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+40
	.byte	W01
	.byte		        c_v+41
	.byte	W02
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte	W02
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v+48
	.byte	W01
	.byte		        c_v+49
	.byte	W02
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W02
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W02
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W01
@ 061   ----------------------------------------
mus_touhou5_stage3_boss_5_061:
	.byte		PAN   , c_v+63
	.byte		N06   , Gs2 , v076
	.byte	W01
	.byte		PAN   , c_v+62
	.byte	W02
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+60
	.byte	W02
	.byte	PEND
	.byte		        c_v+59
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v+58
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+55
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+54
	.byte	W02
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+51
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+50
	.byte	W02
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W02
	.byte		        c_v+47
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W02
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W02
	.byte		        c_v+43
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v+42
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W02
	.byte		        c_v+39
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+38
	.byte	W02
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+35
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v+34
	.byte	W02
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+31
	.byte		N06   , Gs4 
	.byte	W01
	.byte		PAN   , c_v+30
	.byte	W02
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W02
	.byte		        c_v+27
	.byte		N06   , Cs5 
	.byte	W01
	.byte		PAN   , c_v+26
	.byte	W02
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+23
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W02
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W02
	.byte		        c_v+19
	.byte		N06   , En5 
	.byte	W01
	.byte		PAN   , c_v+18
	.byte	W02
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+15
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v+14
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte	W01
@ 062   ----------------------------------------
mus_touhou5_stage3_boss_5_062:
	.byte		PAN   , c_v-1
	.byte		N06   , Gs6 , v076
	.byte	W02
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte	PEND
	.byte		        c_v-5
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v-18
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte		N06   , En5 
	.byte	W02
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v-26
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte		N06   , Cs5 
	.byte	W02
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gs4 
	.byte	W02
	.byte		PAN   , c_v-34
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte	W02
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-42
	.byte	W02
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v-49
	.byte	W01
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W02
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-57
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W01
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_059
	.byte		PAN   , c_v-60
	.byte		N06   , Cs3 , v076
	.byte	W01
	.byte		PAN   , c_v-59
	.byte	W02
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v-56
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-55
	.byte	W02
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-52
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v-51
	.byte	W02
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W02
	.byte		        c_v-48
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v-47
	.byte	W02
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v-44
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v-43
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-40
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-39
	.byte	W02
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-36
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v-35
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W02
	.byte		        c_v-32
	.byte		N06   , Gs4 
	.byte	W01
	.byte		PAN   , c_v-31
	.byte	W02
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W02
	.byte		        c_v-28
	.byte		N06   , Cs5 
	.byte	W01
	.byte		PAN   , c_v-27
	.byte	W02
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-24
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v-23
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-20
	.byte		N06   , En5 
	.byte	W01
	.byte		PAN   , c_v-19
	.byte	W02
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-16
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_060
	.byte		PAN   , c_v+4
	.byte		N06   , En6 , v076
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		        c_v+10
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W01
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte		N06   , En5 
	.byte	W02
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+25
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte		N06   , Cs5 
	.byte	W02
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+30
	.byte	W02
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gs4 
	.byte	W02
	.byte		PAN   , c_v+33
	.byte	W02
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte	W02
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+40
	.byte	W01
	.byte		        c_v+41
	.byte	W02
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte	W02
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v+48
	.byte	W01
	.byte		        c_v+49
	.byte	W02
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W02
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W02
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W01
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_061
	.byte		PAN   , c_v+59
	.byte		N06   , Cs3 , v076
	.byte	W01
	.byte		PAN   , c_v+58
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+55
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+54
	.byte	W02
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+51
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+50
	.byte	W02
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W02
	.byte		        c_v+47
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W02
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W02
	.byte		        c_v+43
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v+42
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W02
	.byte		        c_v+39
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+38
	.byte	W02
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+35
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v+34
	.byte	W02
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+31
	.byte		N06   , Gs4 
	.byte	W01
	.byte		PAN   , c_v+30
	.byte	W02
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W02
	.byte		        c_v+27
	.byte		N06   , Cs5 
	.byte	W01
	.byte		PAN   , c_v+26
	.byte	W02
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+23
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W02
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W02
	.byte		        c_v+19
	.byte		N06   , En5 
	.byte	W01
	.byte		PAN   , c_v+18
	.byte	W02
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+15
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v+14
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte	W01
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_062
	.byte		PAN   , c_v-5
	.byte		N06   , En6 , v076
	.byte	W02
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v-18
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte		N06   , En5 
	.byte	W02
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v-26
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte		N06   , Cs5 
	.byte	W02
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gs4 
	.byte	W02
	.byte		PAN   , c_v-34
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte	W02
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-42
	.byte	W02
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v-49
	.byte	W01
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W02
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-57
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W01
@ 067   ----------------------------------------
mus_touhou5_stage3_boss_5_067:
	.byte		PAN   , c_v-64
	.byte		N06   , Cs5 , v076
	.byte	W06
	.byte	PEND
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 068   ----------------------------------------
mus_touhou5_stage3_boss_5_068:
	.byte		PAN   , c_v+63
	.byte		N06   , Cs5 , v076
	.byte	W06
	.byte	PEND
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_067
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_068
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_067
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_068
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_067
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_5_068
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 075   ----------------------------------------
	.byte		PAN   , c_v-64
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_touhou5_stage3_boss_6:
	.byte	KEYSH , mus_touhou5_stage3_boss_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v+18
	.byte	W24
@ 002   ----------------------------------------
@ 003   ----------------------------------------
	.byte		N96   , Gn3 , v088
	.byte		N96   , Cn4 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        Gn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Gn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Gn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Gn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 008   ----------------------------------------
	.byte		        Gn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 009   ----------------------------------------
	.byte		        Gn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Gn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 011   ----------------------------------------
mus_touhou5_stage3_boss_6_011:
	.byte		TIE   , Cn4 , v088
	.byte		TIE   , Gn4 
	.byte	W96
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        Gn4 
@ 013   ----------------------------------------
mus_touhou5_stage3_boss_6_013:
	.byte		TIE   , Gs3 , v088
	.byte		TIE   , Ds4 
	.byte	W96
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs3 
	.byte		        Ds4 
	.byte		N48   , As3 
	.byte		N48   , Fn4 
	.byte	W48
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_011
@ 016   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        Gn4 
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_013
@ 018   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs3 
	.byte		        Ds4 
	.byte		N48   , As3 , v088
	.byte		N48   , Fn4 
	.byte	W48
@ 019   ----------------------------------------
	.byte		N96   , Ds4 
	.byte		N96   , Ds5 
	.byte	W96
@ 020   ----------------------------------------
	.byte		        Dn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 021   ----------------------------------------
mus_touhou5_stage3_boss_6_021:
	.byte		TIE   , Ds4 , v088
	.byte		TIE   , Ds5 
	.byte	W96
	.byte	PEND
@ 022   ----------------------------------------
	.byte	W48
	.byte		EOT   , Ds4 
	.byte		        Ds5 
	.byte		N48   , Fn4 
	.byte		N48   , Fn5 
	.byte	W48
@ 023   ----------------------------------------
	.byte		N96   , Ds4 
	.byte		N96   , Ds5 
	.byte	W96
@ 024   ----------------------------------------
	.byte		        Dn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , Ds5 
	.byte	W96
@ 026   ----------------------------------------
	.byte		N48   , Fn4 
	.byte		N48   , Fn5 
	.byte	W48
	.byte		        Dn4 
	.byte		N48   , Dn5 
	.byte	W48
@ 027   ----------------------------------------
	.byte		N96   , Ds4 
	.byte		N96   , Ds5 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Dn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_021
@ 030   ----------------------------------------
	.byte	W48
	.byte		EOT   , Ds4 
	.byte		        Ds5 
	.byte		N48   , Fn4 , v088
	.byte		N48   , Fn5 
	.byte	W48
@ 031   ----------------------------------------
	.byte		N96   , Ds4 
	.byte		N96   , Ds5 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        Dn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , Ds5 
	.byte	W96
@ 034   ----------------------------------------
	.byte		N48   , Fn4 
	.byte		N48   , Fn5 
	.byte	W48
	.byte		        Dn4 
	.byte		N48   
	.byte		N48   , Dn5 
	.byte	W48
@ 035   ----------------------------------------
	.byte		N96   , Fn4 
	.byte		N96   , Gs4 
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , Gn4 
	.byte	W96
@ 037   ----------------------------------------
	.byte		        Dn4 
	.byte		N96   , Fn4 
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Cn4 
	.byte		N96   , Ds4 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Gs4 
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , Gn4 
	.byte	W96
@ 041   ----------------------------------------
	.byte		        Dn4 
	.byte		N96   , Fn4 
	.byte	W96
@ 042   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N24   
	.byte		N24   , Bn4 
	.byte	W24
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_011
@ 044   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        Gn4 
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_011
@ 046   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn4 
	.byte		        Gn4 
	.byte		N48   , Bn3 , v088
	.byte		N48   , Gn4 
	.byte	W48
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_011
@ 048   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        Gn4 
@ 049   ----------------------------------------
	.byte		N48   , Cn4 , v088
	.byte		N48   , Gn4 
	.byte	W48
	.byte		        Bn3 
	.byte		N48   , Gn4 
	.byte	W48
@ 050   ----------------------------------------
	.byte		N96   , Cn4 
	.byte		N96   , Gn4 
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_011
@ 052   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        Gn4 
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_011
@ 054   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn4 
	.byte		        Gn4 
	.byte		N48   , Dn4 , v088
	.byte		N48   , Gn4 
	.byte	W48
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_011
@ 056   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn4 
	.byte		        Gn4 
	.byte		N48   , Dn4 , v088
	.byte		N48   , Gn4 
	.byte	W48
@ 057   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Dn5 
	.byte	W48
@ 058   ----------------------------------------
	.byte		N96   , Gn4 
	.byte		N96   , Cn5 
	.byte	W96
@ 059   ----------------------------------------
mus_touhou5_stage3_boss_6_059:
	.byte		TIE   , Cs4 , v088
	.byte		TIE   , Gs4 
	.byte	W96
	.byte	PEND
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs4 
	.byte		        Gs4 
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_059
@ 062   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs4 
	.byte		        Gs4 
	.byte		N48   , Cn4 , v088
	.byte		N48   , Gs4 
	.byte	W48
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_059
@ 064   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs4 
	.byte		        Gs4 
@ 065   ----------------------------------------
	.byte		N48   , Cs4 , v088
	.byte		N48   , Gs4 
	.byte	W48
	.byte		        Cn4 
	.byte		N48   , Gs4 
	.byte	W48
@ 066   ----------------------------------------
	.byte		N96   , Cs4 
	.byte		N96   , Gs4 
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_059
@ 068   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs4 
	.byte		        Gs4 
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_059
@ 070   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs4 
	.byte		        Gs4 
	.byte		N48   , Ds4 , v088
	.byte		N48   , Gs4 
	.byte	W48
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_6_059
@ 072   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs4 
	.byte		        Gs4 
	.byte		N48   , Ds4 , v088
	.byte		N48   , Gs4 
	.byte	W48
@ 073   ----------------------------------------
	.byte		        En4 
	.byte		N48   , An4 
	.byte	W48
	.byte		        Fs4 
	.byte		N48   , Ds5 
	.byte	W48
@ 074   ----------------------------------------
	.byte		N96   , Gs4 
	.byte		N96   , Cs5 
	.byte	W96
@ 075   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_touhou5_stage3_boss_7:
	.byte	KEYSH , mus_touhou5_stage3_boss_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W24
@ 002   ----------------------------------------
@ 003   ----------------------------------------
mus_touhou5_stage3_boss_7_003:
	.byte		PAN   , c_v+63
	.byte		        c_v+62
	.byte		N06   , Gn2 , v088
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v+61
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+59
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte	PEND
	.byte		        c_v+55
	.byte		        c_v+54
	.byte		N06   , As2 
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+46
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+38
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+31
	.byte		        c_v+30
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+27
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+22
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+15
	.byte		        c_v+14
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+6
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-50
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-64
	.byte	W01
@ 004   ----------------------------------------
mus_touhou5_stage3_boss_7_004:
	.byte		PAN   , c_v-64
	.byte		        c_v-63
	.byte		N06   , Gn2 , v088
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-62
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-57
	.byte	W01
	.byte	PEND
	.byte		        c_v-56
	.byte		        c_v-55
	.byte		N06   , As2 
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-47
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-39
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-31
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-23
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-15
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-7
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+1
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+9
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v+17
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+25
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+29
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+33
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+40
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+41
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+48
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+49
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+57
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+62
	.byte		        c_v+63
	.byte	W01
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_003
	.byte		PAN   , c_v+55
	.byte		        c_v+54
	.byte		N06   , As2 , v088
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+46
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+38
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+31
	.byte		        c_v+30
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+27
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+22
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+15
	.byte		        c_v+14
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+6
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-50
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-64
	.byte	W01
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_004
	.byte		PAN   , c_v-56
	.byte		        c_v-55
	.byte		N06   , As2 , v088
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-47
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-39
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-31
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-23
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-15
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-7
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+1
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+9
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v+17
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+25
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+29
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+33
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+40
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+41
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+48
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+49
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+57
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+62
	.byte		        c_v+63
	.byte	W01
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_003
	.byte		PAN   , c_v+55
	.byte		        c_v+54
	.byte		N06   , As2 , v088
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+46
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+38
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+31
	.byte		        c_v+30
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+27
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+22
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+15
	.byte		        c_v+14
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+6
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-50
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-64
	.byte	W01
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_004
	.byte		PAN   , c_v-56
	.byte		        c_v-55
	.byte		N06   , As2 , v088
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-47
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-39
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-31
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-23
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-15
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-7
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+1
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+9
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v+17
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+25
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+29
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+33
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+40
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+41
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+48
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+49
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+57
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+62
	.byte		        c_v+63
	.byte	W01
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_003
	.byte		PAN   , c_v+55
	.byte		        c_v+54
	.byte		N06   , As2 , v088
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+46
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+38
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+31
	.byte		        c_v+30
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+27
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+22
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+15
	.byte		        c_v+14
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+6
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-50
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-64
	.byte	W01
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_004
	.byte		PAN   , c_v-56
	.byte		        c_v-55
	.byte		N06   , As2 , v088
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-47
	.byte		N06   , Cn3 
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-39
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-31
	.byte		N06   
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-23
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-15
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-7
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+1
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+9
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Ds5 
	.byte		N06   , Gn5 
	.byte	W01
	.byte		PAN   , c_v+17
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+25
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+29
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+33
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+40
	.byte		N06   , Ds4 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+41
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+48
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+49
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , As3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+57
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+62
	.byte		        c_v+63
	.byte	W01
@ 011   ----------------------------------------
mus_touhou5_stage3_boss_7_011:
	.byte		PAN   , c_v+63
	.byte		N06   , Gn4 , v088
	.byte		N06   , Cn5 
	.byte	W06
	.byte	PEND
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 012   ----------------------------------------
mus_touhou5_stage3_boss_7_012:
	.byte		PAN   , c_v-64
	.byte		N06   , Gn4 , v088
	.byte		N06   , Cn5 
	.byte	W06
	.byte	PEND
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_011
	.byte		N06   , Ds4 , v088
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_012
	.byte		N06   , Ds4 , v088
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_011
	.byte		N06   , Ds4 , v088
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_012
	.byte		N06   , Ds4 , v088
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_011
	.byte		N06   , Ds4 , v088
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_012
	.byte		N06   , Ds4 , v088
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , As4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Dn4 
	.byte	W06
@ 019   ----------------------------------------
	.byte		PAN   , c_v+63
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
mus_touhou5_stage3_boss_7_027:
	.byte		PAN   , c_v+63
	.byte		N06   , Cn5 , v088
	.byte	W06
	.byte	PEND
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 028   ----------------------------------------
mus_touhou5_stage3_boss_7_028:
	.byte		PAN   , c_v-64
	.byte		N06   , Cn5 , v088
	.byte	W06
	.byte	PEND
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_027
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_028
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_027
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_028
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_027
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_028
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 035   ----------------------------------------
	.byte		PAN   , c_v+63
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
mus_touhou5_stage3_boss_7_043:
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 , v088
	.byte	W01
	.byte		PAN   , c_v+62
	.byte	W02
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+60
	.byte	W02
	.byte	PEND
	.byte		        c_v+59
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v+58
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+55
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+54
	.byte	W02
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+51
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+50
	.byte	W02
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W02
	.byte		        c_v+47
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W02
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W02
	.byte		        c_v+43
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+42
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W02
	.byte		        c_v+39
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+38
	.byte	W02
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+35
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+34
	.byte	W02
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+31
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+30
	.byte	W02
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W02
	.byte		        c_v+27
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+26
	.byte	W02
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+23
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W02
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W02
	.byte		        c_v+19
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v+18
	.byte	W02
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+15
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v+14
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte	W01
@ 044   ----------------------------------------
mus_touhou5_stage3_boss_7_044:
	.byte		PAN   , c_v-1
	.byte		N06   , Gn6 , v088
	.byte	W02
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte	PEND
	.byte		        c_v-5
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v-18
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , Dn5 
	.byte	W02
	.byte		PAN   , c_v-26
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte		N06   , Cn5 
	.byte	W02
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte	W02
	.byte		PAN   , c_v-34
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte	W02
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-42
	.byte	W02
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-49
	.byte	W01
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W02
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-57
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W01
@ 045   ----------------------------------------
mus_touhou5_stage3_boss_7_045:
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 , v088
	.byte	W01
	.byte		PAN   , c_v-63
	.byte	W02
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-61
	.byte	W02
	.byte	PEND
	.byte		        c_v-60
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-59
	.byte	W02
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v-56
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-55
	.byte	W02
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-52
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-51
	.byte	W02
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W02
	.byte		        c_v-48
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-47
	.byte	W02
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v-44
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-43
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-40
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-39
	.byte	W02
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-36
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-35
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W02
	.byte		        c_v-32
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-31
	.byte	W02
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W02
	.byte		        c_v-28
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-27
	.byte	W02
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-24
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-23
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-20
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v-19
	.byte	W02
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-16
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
@ 046   ----------------------------------------
mus_touhou5_stage3_boss_7_046:
	.byte		PAN   , c_v+0
	.byte		N06   , Gn6 , v088
	.byte	W02
	.byte		PAN   , c_v+1
	.byte	W01
	.byte		        c_v+2
	.byte	W02
	.byte		        c_v+3
	.byte	W01
	.byte	PEND
	.byte		        c_v+4
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		        c_v+10
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W01
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , Dn5 
	.byte	W02
	.byte		PAN   , c_v+25
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte		N06   , Cn5 
	.byte	W02
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+30
	.byte	W02
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte	W02
	.byte		PAN   , c_v+33
	.byte	W02
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte	W02
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+40
	.byte	W01
	.byte		        c_v+41
	.byte	W02
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte	W02
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+48
	.byte	W01
	.byte		        c_v+49
	.byte	W02
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W02
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W02
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W01
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_043
	.byte		PAN   , c_v+59
	.byte		N06   , Cn3 , v088
	.byte	W01
	.byte		PAN   , c_v+58
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+55
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+54
	.byte	W02
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+51
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+50
	.byte	W02
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W02
	.byte		        c_v+47
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W02
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W02
	.byte		        c_v+43
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+42
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W02
	.byte		        c_v+39
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+38
	.byte	W02
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+35
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+34
	.byte	W02
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+31
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v+30
	.byte	W02
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W02
	.byte		        c_v+27
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v+26
	.byte	W02
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+23
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W02
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W02
	.byte		        c_v+19
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v+18
	.byte	W02
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+15
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v+14
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte	W01
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_044
	.byte		PAN   , c_v-5
	.byte		N06   , Ds6 , v088
	.byte	W02
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v-18
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , Dn5 
	.byte	W02
	.byte		PAN   , c_v-26
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte		N06   , Cn5 
	.byte	W02
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gn4 
	.byte	W02
	.byte		PAN   , c_v-34
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte	W02
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-42
	.byte	W02
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-49
	.byte	W01
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W02
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-57
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W01
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_045
	.byte		PAN   , c_v-60
	.byte		N06   , Cn3 , v088
	.byte	W01
	.byte		PAN   , c_v-59
	.byte	W02
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v-56
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-55
	.byte	W02
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-52
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-51
	.byte	W02
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W02
	.byte		        c_v-48
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v-47
	.byte	W02
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v-44
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v-43
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-40
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-39
	.byte	W02
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-36
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-35
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W02
	.byte		        c_v-32
	.byte		N06   , Gn4 
	.byte	W01
	.byte		PAN   , c_v-31
	.byte	W02
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W02
	.byte		        c_v-28
	.byte		N06   , Cn5 
	.byte	W01
	.byte		PAN   , c_v-27
	.byte	W02
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-24
	.byte		N06   , Dn5 
	.byte	W01
	.byte		PAN   , c_v-23
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-20
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v-19
	.byte	W02
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-16
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_046
	.byte		PAN   , c_v+4
	.byte		N06   , Ds6 , v088
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , Dn6 
	.byte	W02
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		        c_v+10
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte		N06   , Cn6 
	.byte	W02
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Gn5 
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W01
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , Dn5 
	.byte	W02
	.byte		PAN   , c_v+25
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte		N06   , Cn5 
	.byte	W02
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+30
	.byte	W02
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gn4 
	.byte	W02
	.byte		PAN   , c_v+33
	.byte	W02
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte	W02
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W01
	.byte		PAN   , c_v+40
	.byte	W01
	.byte		        c_v+41
	.byte	W02
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		N06   , Cn4 
	.byte	W01
	.byte		PAN   , c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte	W02
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+48
	.byte	W01
	.byte		        c_v+49
	.byte	W02
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W02
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W02
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W01
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_027
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_028
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_027
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_028
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_027
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_028
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_027
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_028
	.byte		N06   , Gn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 059   ----------------------------------------
mus_touhou5_stage3_boss_7_059:
	.byte		PAN   , c_v+63
	.byte		N06   , Gs2 , v088
	.byte	W01
	.byte		PAN   , c_v+62
	.byte	W02
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+60
	.byte	W02
	.byte	PEND
	.byte		        c_v+59
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v+58
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+55
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+54
	.byte	W02
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+51
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+50
	.byte	W02
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W02
	.byte		        c_v+47
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W02
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W02
	.byte		        c_v+43
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v+42
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W02
	.byte		        c_v+39
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+38
	.byte	W02
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+35
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v+34
	.byte	W02
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+31
	.byte		N06   , Gs4 
	.byte	W01
	.byte		PAN   , c_v+30
	.byte	W02
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W02
	.byte		        c_v+27
	.byte		N06   , Cs5 
	.byte	W01
	.byte		PAN   , c_v+26
	.byte	W02
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+23
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W02
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W02
	.byte		        c_v+19
	.byte		N06   , En5 
	.byte	W01
	.byte		PAN   , c_v+18
	.byte	W02
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+15
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v+14
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte	W01
@ 060   ----------------------------------------
mus_touhou5_stage3_boss_7_060:
	.byte		PAN   , c_v-1
	.byte		N06   , Gs6 , v088
	.byte	W02
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte	PEND
	.byte		        c_v-5
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v-18
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte		N06   , En5 
	.byte	W02
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v-26
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte		N06   , Cs5 
	.byte	W02
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gs4 
	.byte	W02
	.byte		PAN   , c_v-34
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte	W02
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-42
	.byte	W02
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v-49
	.byte	W01
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W02
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-57
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W01
@ 061   ----------------------------------------
mus_touhou5_stage3_boss_7_061:
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 , v088
	.byte	W01
	.byte		PAN   , c_v-63
	.byte	W02
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-61
	.byte	W02
	.byte	PEND
	.byte		        c_v-60
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v-59
	.byte	W02
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v-56
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-55
	.byte	W02
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-52
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v-51
	.byte	W02
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W02
	.byte		        c_v-48
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v-47
	.byte	W02
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v-44
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v-43
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-40
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-39
	.byte	W02
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-36
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v-35
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W02
	.byte		        c_v-32
	.byte		N06   , Gs4 
	.byte	W01
	.byte		PAN   , c_v-31
	.byte	W02
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W02
	.byte		        c_v-28
	.byte		N06   , Cs5 
	.byte	W01
	.byte		PAN   , c_v-27
	.byte	W02
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-24
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v-23
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-20
	.byte		N06   , En5 
	.byte	W01
	.byte		PAN   , c_v-19
	.byte	W02
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-16
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
@ 062   ----------------------------------------
mus_touhou5_stage3_boss_7_062:
	.byte		PAN   , c_v+0
	.byte		N06   , Gs6 , v088
	.byte	W02
	.byte		PAN   , c_v+1
	.byte	W01
	.byte		        c_v+2
	.byte	W02
	.byte		        c_v+3
	.byte	W01
	.byte	PEND
	.byte		        c_v+4
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		        c_v+10
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W01
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte		N06   , En5 
	.byte	W02
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+25
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte		N06   , Cs5 
	.byte	W02
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+30
	.byte	W02
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gs4 
	.byte	W02
	.byte		PAN   , c_v+33
	.byte	W02
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte	W02
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+40
	.byte	W01
	.byte		        c_v+41
	.byte	W02
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte	W02
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v+48
	.byte	W01
	.byte		        c_v+49
	.byte	W02
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W02
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W02
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W01
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_059
	.byte		PAN   , c_v+59
	.byte		N06   , Cs3 , v088
	.byte	W01
	.byte		PAN   , c_v+58
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+55
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+54
	.byte	W02
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+51
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+50
	.byte	W02
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W02
	.byte		        c_v+47
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W02
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W02
	.byte		        c_v+43
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v+42
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W02
	.byte		        c_v+39
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+38
	.byte	W02
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+35
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v+34
	.byte	W02
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+31
	.byte		N06   , Gs4 
	.byte	W01
	.byte		PAN   , c_v+30
	.byte	W02
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W02
	.byte		        c_v+27
	.byte		N06   , Cs5 
	.byte	W01
	.byte		PAN   , c_v+26
	.byte	W02
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+23
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W02
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W02
	.byte		        c_v+19
	.byte		N06   , En5 
	.byte	W01
	.byte		PAN   , c_v+18
	.byte	W02
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+15
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v+14
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte	W01
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_060
	.byte		PAN   , c_v-5
	.byte		N06   , En6 , v088
	.byte	W02
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v-18
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte		N06   , En5 
	.byte	W02
	.byte		PAN   , c_v-22
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v-26
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte		N06   , Cs5 
	.byte	W02
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		N06   , Gs4 
	.byte	W02
	.byte		PAN   , c_v-34
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte	W02
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-42
	.byte	W02
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v-49
	.byte	W01
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte	W02
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-57
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W01
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_061
	.byte		PAN   , c_v-60
	.byte		N06   , Cs3 , v088
	.byte	W01
	.byte		PAN   , c_v-59
	.byte	W02
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v-56
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v-55
	.byte	W02
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-52
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v-51
	.byte	W02
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W02
	.byte		        c_v-48
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v-47
	.byte	W02
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v-44
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v-43
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-40
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v-39
	.byte	W02
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-36
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v-35
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W02
	.byte		        c_v-32
	.byte		N06   , Gs4 
	.byte	W01
	.byte		PAN   , c_v-31
	.byte	W02
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W02
	.byte		        c_v-28
	.byte		N06   , Cs5 
	.byte	W01
	.byte		PAN   , c_v-27
	.byte	W02
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-24
	.byte		N06   , Ds5 
	.byte	W01
	.byte		PAN   , c_v-23
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-20
	.byte		N06   , En5 
	.byte	W01
	.byte		PAN   , c_v-19
	.byte	W02
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-16
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		N06   , En6 
	.byte	W02
	.byte		PAN   , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_062
	.byte		PAN   , c_v+4
	.byte		N06   , En6 , v088
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		N06   , Ds6 
	.byte	W02
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		        c_v+10
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte		N06   , Cs6 
	.byte	W02
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Gs5 
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W01
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+20
	.byte		N06   , En5 
	.byte	W02
	.byte		PAN   , c_v+21
	.byte	W01
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte		N06   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+25
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+28
	.byte		N06   , Cs5 
	.byte	W02
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+30
	.byte	W02
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+32
	.byte		N06   , Gs4 
	.byte	W02
	.byte		PAN   , c_v+33
	.byte	W02
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		N06   , En4 
	.byte	W01
	.byte		PAN   , c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte	W02
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W01
	.byte		PAN   , c_v+40
	.byte	W01
	.byte		        c_v+41
	.byte	W02
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		N06   , Cs4 
	.byte	W01
	.byte		PAN   , c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte	W02
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		N06   , Gs3 
	.byte	W01
	.byte		PAN   , c_v+48
	.byte	W01
	.byte		        c_v+49
	.byte	W02
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W02
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v+60
	.byte	W01
	.byte		        c_v+61
	.byte	W02
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W01
@ 067   ----------------------------------------
mus_touhou5_stage3_boss_7_067:
	.byte		PAN   , c_v+63
	.byte		N06   , Cs5 , v088
	.byte	W06
	.byte	PEND
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 068   ----------------------------------------
mus_touhou5_stage3_boss_7_068:
	.byte		PAN   , c_v-64
	.byte		N06   , Cs5 , v088
	.byte	W06
	.byte	PEND
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_067
	.byte		N06   , Gs4 , v088
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_068
	.byte		N06   , Gs4 , v088
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_067
	.byte		N06   , Gs4 , v088
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_068
	.byte		N06   , Gs4 , v088
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_067
	.byte		N06   , Gs4 , v088
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_7_068
	.byte		N06   , Gs4 , v088
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 075   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.9) ****************@

mus_touhou5_stage3_boss_8:
	.byte	KEYSH , mus_touhou5_stage3_boss_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte		VOICE , 52
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 64
	.byte	W24
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
	.byte		N96   , Cn4 , v100
	.byte		N96   , Gn4 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        As3 
	.byte		N96   , Fn4 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Gs3 
	.byte		N96   , Ds4 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        As3 
	.byte		N96   , Fn4 
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Cn4 
	.byte		N96   , Gn4 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        As3 
	.byte		N96   , Fn4 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        Gs3 
	.byte		N96   , Ds4 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        As3 
	.byte		N96   , Fn4 
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
	.byte		N48   , Dn3 
	.byte		N48   , Gn3 
	.byte	W48
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N24   
	.byte		N24   , Bn3 
	.byte	W24
@ 042   ----------------------------------------
mus_touhou5_stage3_boss_8_042:
	.byte		TIE   , Gn3 , v100
	.byte		TIE   , Cn4 
	.byte	W96
	.byte	PEND
@ 043   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn3 
	.byte		        Cn4 
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_8_042
@ 045   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn3 
	.byte		        Cn4 
	.byte		N48   , Gn3 , v100
	.byte		N48   , Bn3 
	.byte	W48
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_8_042
@ 047   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn3 
	.byte		        Cn4 
@ 048   ----------------------------------------
	.byte		N48   , Gn3 , v100
	.byte		N48   , Cn4 
	.byte	W48
	.byte		        Gn3 
	.byte		N48   , Bn3 
	.byte	W48
@ 049   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_8_042
@ 051   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn3 
	.byte		        Cn4 
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_8_042
@ 053   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn3 
	.byte		        Cn4 
	.byte		N48   , Gn3 , v100
	.byte		N48   , Dn4 
	.byte	W48
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_8_042
@ 055   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn3 
	.byte		        Cn4 
	.byte		N48   , Gn3 , v100
	.byte		N48   , Dn4 
	.byte	W48
@ 056   ----------------------------------------
	.byte		        Gs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Dn4 
	.byte		N48   , Fn4 
	.byte	W48
@ 057   ----------------------------------------
	.byte		N96   , Cn4 
	.byte	W96
@ 058   ----------------------------------------
mus_touhou5_stage3_boss_8_058:
	.byte		TIE   , Gs3 , v100
	.byte		TIE   , Cs4 
	.byte	W96
	.byte	PEND
@ 059   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs3 
	.byte		        Cs4 
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_8_058
@ 061   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs3 
	.byte		        Cs4 
	.byte		N48   , Gs3 , v100
	.byte		N48   , Cn4 
	.byte	W48
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_8_058
@ 063   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs3 
	.byte		        Cs4 
@ 064   ----------------------------------------
	.byte		N48   , Gs3 , v100
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cn4 
	.byte	W48
@ 065   ----------------------------------------
	.byte		N96   , Gs3 
	.byte		N96   , Cs4 
	.byte	W96
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_8_058
@ 067   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs3 
	.byte		        Cs4 
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_8_058
@ 069   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs3 
	.byte		        Cs4 
	.byte		N48   , Gs3 , v100
	.byte		N48   , Ds4 
	.byte	W48
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_8_058
@ 071   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs3 
	.byte		        Cs4 
	.byte		N48   , Gs3 , v100
	.byte		N48   , Ds4 
	.byte	W48
@ 072   ----------------------------------------
	.byte		        An3 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Ds4 
	.byte		N48   , Fs4 
	.byte	W48
@ 073   ----------------------------------------
	.byte		N96   , Cs4 
	.byte	W96
@ 074   ----------------------------------------
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_touhou5_stage3_boss_9:
	.byte	KEYSH , mus_touhou5_stage3_boss_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte		VOICE , 16
	.byte		        16
	.byte		        16
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 002   ----------------------------------------
@ 003   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 004   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W92
	.byte	W01
@ 005   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W92
	.byte	W01
@ 006   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W68
	.byte	W01
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 007   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W80
	.byte	W01
	.byte		        Cn1 
	.byte	W03
	.byte	W09
@ 008   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W80
	.byte	W01
	.byte		        Cn1 
	.byte	W03
	.byte	W09
@ 009   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Cn1 
	.byte	W03
	.byte	W44
	.byte	W01
@ 010   ----------------------------------------
	.byte		N03   
	.byte		N03   , En1 , v008
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte		        En1 , v004
	.byte	W03
	.byte		        En1 , v008
	.byte	W03
	.byte		        En1 , v012
	.byte	W03
	.byte		        En1 , v016
	.byte	W03
	.byte		        En1 , v020
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v024
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 , v028
	.byte	W03
	.byte		        En1 , v032
	.byte	W03
	.byte		        En1 , v036
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v040
	.byte	W03
	.byte		        En1 , v044
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 , v052
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 , v080
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 , v092
	.byte		N03   , As1 , v088
	.byte	W03
	.byte		        En1 , v092
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 , v096
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
@ 011   ----------------------------------------
mus_touhou5_stage3_boss_9_011:
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte	PEND
	.byte	W03
	.byte		        Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 012   ----------------------------------------
mus_touhou5_stage3_boss_9_012:
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	PEND
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 018   ----------------------------------------
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Cn2 , v076
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte		        Cn2 , v076
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v076
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte		        An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_011
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 , v088
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 , v088
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_011
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Cs2 , v100
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v076
	.byte		N03   , As1 , v088
	.byte	W03
	.byte		        An1 , v076
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_011
	.byte	W09
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W09
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W09
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W09
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W09
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W09
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W09
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
@ 042   ----------------------------------------
	.byte		        En1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
@ 043   ----------------------------------------
mus_touhou5_stage3_boss_9_043:
	.byte		N03   , Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	PEND
	.byte	W92
	.byte	W01
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_043
	.byte	W92
	.byte	W01
@ 046   ----------------------------------------
mus_touhou5_stage3_boss_9_046:
	.byte	W48
	.byte		N03   , Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	PEND
	.byte	W44
	.byte	W01
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_043
	.byte	W92
	.byte	W01
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_043
	.byte	W92
	.byte	W01
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_043
	.byte	W44
	.byte	W01
	.byte		N03   , Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_043
	.byte	W21
	.byte		N03   , Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_011
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 058   ----------------------------------------
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_043
	.byte	W92
	.byte	W01
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_043
	.byte	W92
	.byte	W01
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_046
	.byte	W44
	.byte	W01
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_043
	.byte	W92
	.byte	W01
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_043
	.byte	W92
	.byte	W01
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_043
	.byte	W44
	.byte	W01
	.byte		N03   , Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_043
	.byte	W21
	.byte		N03   , Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_011
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_9_012
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 074   ----------------------------------------
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Cn2 , v076
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte		        Cn2 , v076
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v076
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte		        An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 075   ----------------------------------------
	.byte	FINE

@**************** Track 10 (Midi-Chn.11) ****************@

mus_touhou5_stage3_boss_10:
	.byte	KEYSH , mus_touhou5_stage3_boss_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte		VOICE , 19
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v+8
	.byte	W24
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
mus_touhou5_stage3_boss_10_042:
	.byte		TIE   , Cn4 , v100
	.byte		TIE   , Gn4 
	.byte	W96
	.byte	PEND
@ 043   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        Gn4 
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_10_042
@ 045   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn4 
	.byte		        Gn4 
	.byte		N48   , Bn3 , v100
	.byte		N48   , Gn4 
	.byte	W48
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_10_042
@ 047   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        Gn4 
@ 048   ----------------------------------------
	.byte		N48   , Cn4 , v100
	.byte		N48   , Gn4 
	.byte	W48
	.byte		        Bn3 
	.byte		N48   , Gn4 
	.byte	W48
@ 049   ----------------------------------------
	.byte		N96   , Cn4 
	.byte		N96   , Gn4 
	.byte	W96
@ 050   ----------------------------------------
mus_touhou5_stage3_boss_10_050:
	.byte		TIE   , Gn4 , v100
	.byte		TIE   , Cn5 
	.byte	W96
	.byte	PEND
@ 051   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn4 
	.byte		        Cn5 
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_10_050
@ 053   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte		N48   , Gn4 , v100
	.byte		N48   , Dn5 
	.byte	W48
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_10_050
@ 055   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte		N48   , Gn4 , v100
	.byte		N48   , Dn5 
	.byte	W48
@ 056   ----------------------------------------
	.byte		        Gs4 
	.byte		N48   , Ds5 
	.byte	W48
	.byte		        Dn5 
	.byte		N48   , Fn5 
	.byte	W48
@ 057   ----------------------------------------
	.byte		N96   , Cn5 
	.byte		N96   , Gn5 
	.byte	W96
@ 058   ----------------------------------------
mus_touhou5_stage3_boss_10_058:
	.byte		TIE   , Cs4 , v100
	.byte		TIE   , Gs4 
	.byte	W96
	.byte	PEND
@ 059   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs4 
	.byte		        Gs4 
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_10_058
@ 061   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs4 
	.byte		        Gs4 
	.byte		N48   , Cn4 , v100
	.byte		N48   , Gs4 
	.byte	W48
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_10_058
@ 063   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs4 
	.byte		        Gs4 
@ 064   ----------------------------------------
	.byte		N48   , Cs4 , v100
	.byte		N48   , Gs4 
	.byte	W48
	.byte		        Cn4 
	.byte		N48   , Gs4 
	.byte	W48
@ 065   ----------------------------------------
	.byte		N96   , Cs4 
	.byte		N96   , Gs4 
	.byte	W96
@ 066   ----------------------------------------
mus_touhou5_stage3_boss_10_066:
	.byte		TIE   , Gs4 , v100
	.byte		TIE   , Cs5 
	.byte	W96
	.byte	PEND
@ 067   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs4 
	.byte		        Cs5 
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_10_066
@ 069   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs4 
	.byte		        Cs5 
	.byte		N48   , Gs4 , v100
	.byte		N48   , Ds5 
	.byte	W48
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_10_066
@ 071   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs4 
	.byte		        Cs5 
	.byte		N48   , Gs4 , v100
	.byte		N48   , Ds5 
	.byte	W48
@ 072   ----------------------------------------
	.byte		        An4 
	.byte		N48   , En5 
	.byte	W48
	.byte		        Ds5 
	.byte		N48   , Fs5 
	.byte	W48
@ 073   ----------------------------------------
	.byte		N96   , Cs5 
	.byte		N96   , Gs5 
	.byte	W96
@ 074   ----------------------------------------
	.byte	FINE

@**************** Track 11 (Midi-Chn.12) ****************@

mus_touhou5_stage3_boss_11:
	.byte	KEYSH , mus_touhou5_stage3_boss_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte		VOICE , 19
	.byte		VOL   , 127*mus_touhou5_stage3_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte	W24
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
mus_touhou5_stage3_boss_11_042:
	.byte		TIE   , Cn1 , v088
	.byte		TIE   , Gn1 
	.byte	W96
	.byte	PEND
@ 043   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
	.byte		        Gn1 
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_11_042
@ 045   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn1 
	.byte		        Gn1 
	.byte		N48   , Bn0 , v088
	.byte		N48   , Gn1 
	.byte	W48
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_11_042
@ 047   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
	.byte		        Gn1 
@ 048   ----------------------------------------
	.byte		N48   , Cn1 , v088
	.byte		N48   , Gn1 
	.byte	W48
	.byte		        Bn0 
	.byte		N48   , Gn1 
	.byte	W48
@ 049   ----------------------------------------
	.byte		N96   , Cn1 
	.byte		N96   , Gn1 
	.byte	W96
@ 050   ----------------------------------------
mus_touhou5_stage3_boss_11_050:
	.byte		TIE   , Gn1 , v088
	.byte		TIE   , Cn2 
	.byte	W96
	.byte	PEND
@ 051   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn1 
	.byte		        Cn2 
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_11_050
@ 053   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn1 
	.byte		        Cn2 
	.byte		N48   , Gn1 , v088
	.byte		N48   , Dn2 
	.byte	W48
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_11_050
@ 055   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn1 
	.byte		        Cn2 
	.byte		N48   , Gn1 , v088
	.byte		N48   , Dn2 
	.byte	W48
@ 056   ----------------------------------------
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        Dn2 
	.byte		N48   , Fn2 
	.byte	W48
@ 057   ----------------------------------------
	.byte		N96   , Cn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 058   ----------------------------------------
mus_touhou5_stage3_boss_11_058:
	.byte		TIE   , Cs1 , v088
	.byte		TIE   , Gs1 
	.byte	W96
	.byte	PEND
@ 059   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs1 
	.byte		        Gs1 
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_11_058
@ 061   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs1 
	.byte		        Gs1 
	.byte		N48   , Cn1 , v088
	.byte		N48   , Gs1 
	.byte	W48
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_11_058
@ 063   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs1 
	.byte		        Gs1 
@ 064   ----------------------------------------
	.byte		N48   , Cs1 , v088
	.byte		N48   , Gs1 
	.byte	W48
	.byte		        Cn1 
	.byte		N48   , Gs1 
	.byte	W48
@ 065   ----------------------------------------
	.byte		N96   , Cs1 
	.byte		N96   , Gs1 
	.byte	W96
@ 066   ----------------------------------------
mus_touhou5_stage3_boss_11_066:
	.byte		TIE   , Gs1 , v088
	.byte		TIE   , Cs2 
	.byte	W96
	.byte	PEND
@ 067   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs1 
	.byte		        Cs2 
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_11_066
@ 069   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs1 
	.byte		        Cs2 
	.byte		N48   , Gs1 , v088
	.byte		N48   , Ds2 
	.byte	W48
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage3_boss_11_066
@ 071   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs1 
	.byte		        Cs2 
	.byte		N48   , Gs1 , v088
	.byte		N48   , Ds2 
	.byte	W48
@ 072   ----------------------------------------
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Ds2 
	.byte		N48   , Fs2 
	.byte	W48
@ 073   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , Gs2 
	.byte	W96
@ 074   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_touhou5_stage3_boss:
	.byte	11	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_touhou5_stage3_boss_pri	@ Priority
	.byte	mus_touhou5_stage3_boss_rev	@ Reverb.

	.word	mus_touhou5_stage3_boss_grp

	.word	mus_touhou5_stage3_boss_1
	.word	mus_touhou5_stage3_boss_2
	.word	mus_touhou5_stage3_boss_3
	.word	mus_touhou5_stage3_boss_4
	.word	mus_touhou5_stage3_boss_5
	.word	mus_touhou5_stage3_boss_6
	.word	mus_touhou5_stage3_boss_7
	.word	mus_touhou5_stage3_boss_8
	.word	mus_touhou5_stage3_boss_9
	.word	mus_touhou5_stage3_boss_10
	.word	mus_touhou5_stage3_boss_11

	.end
