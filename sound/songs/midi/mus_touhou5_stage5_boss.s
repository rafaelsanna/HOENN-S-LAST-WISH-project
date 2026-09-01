	.include "MPlayDef.s"

	.equ	mus_touhou5_stage5_boss_grp, voicegroup_ancient_groover
	.equ	mus_touhou5_stage5_boss_pri, 0
	.equ	mus_touhou5_stage5_boss_rev, reverb_set+50
	.equ	mus_touhou5_stage5_boss_mvl, 100
	.equ	mus_touhou5_stage5_boss_key, 0
	.equ	mus_touhou5_stage5_boss_tbs, 1
	.equ	mus_touhou5_stage5_boss_exg, 1
	.equ	mus_touhou5_stage5_boss_cmp, 1

	.section .rodata
	.global	mus_touhou5_stage5_boss
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_touhou5_stage5_boss_1:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 161*mus_touhou5_stage5_boss_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
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
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	TEMPO , 158*mus_touhou5_stage5_boss_tbs/2
	.byte		N48   , Gn3 , v112
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W36
	.byte		TIE   , As3 
	.byte		TIE   , As4 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   , As3 
	.byte		        As4 
@ 010   ----------------------------------------
	.byte		N48   , Fn3 
	.byte		N48   , Fn4 
	.byte	W48
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W36
	.byte		TIE   , As3 
	.byte		TIE   , As4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   , As3 
	.byte		        As4 
@ 012   ----------------------------------------
	.byte		N60   , Ds3 
	.byte		N60   , Ds4 
	.byte	W60
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N84   , An3 
	.byte		N84   , An4 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W72
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N84   , Gn3 
	.byte		N84   , Gn4 
	.byte	W84
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Gn4 
	.byte	W06
@ 015   ----------------------------------------
	.byte	TEMPO , 161*mus_touhou5_stage5_boss_tbs/2
	.byte		N96   , Fs3 
	.byte		N96   , Fs4 
	.byte	W96
@ 016   ----------------------------------------
	.byte		N48   , Gn3 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N18   , Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N48   , Cn4 
	.byte		N48   , Cn5 
	.byte	W48
	.byte		N18   , As3 
	.byte		N18   , As4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N48   , Fn3 
	.byte		N48   , Fn4 
	.byte	W48
	.byte		N18   , Fn3 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		N18   , Cn4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        As3 
	.byte		N18   , As4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N48   , Ds3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		N18   , Ds3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N18   , Cs4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N48   , Cs4 
	.byte		N48   , Cs5 
	.byte	W48
@ 022   ----------------------------------------
	.byte		N18   , Dn4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
@ 023   ----------------------------------------
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N48   , Gn3 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N18   , Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N48   , Cn4 
	.byte		N48   , Cn5 
	.byte	W48
	.byte		N18   , As3 
	.byte		N18   , As4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N48   , Fn3 
	.byte		N48   , Fn4 
	.byte	W48
	.byte		N18   , Fn3 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		N18   , Cn4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        As3 
	.byte		N18   , As4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N48   , Ds3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		N18   , Ds3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N18   , Cs4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N48   , Cs4 
	.byte		N48   , Cs5 
	.byte	W48
@ 030   ----------------------------------------
	.byte		N18   , Dn4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		TIE   , Dn4 
	.byte		TIE   , Dn5 
	.byte	W48
@ 031   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn4 
	.byte		        Dn5 
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
	.byte		N06   , Gn3 , v092
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 041   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 042   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 043   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 047   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
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
	.byte		N48   , Gn3 , v112
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W36
	.byte		TIE   , As3 
	.byte		TIE   , As4 
	.byte	W12
@ 058   ----------------------------------------
	.byte	W96
	.byte		EOT   , As3 
	.byte		        As4 
@ 059   ----------------------------------------
	.byte		N48   , Fn3 
	.byte		N48   , Fn4 
	.byte	W48
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W36
	.byte		TIE   , As3 
	.byte		TIE   , As4 
	.byte	W12
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   , As3 
	.byte		        As4 
@ 061   ----------------------------------------
	.byte		N60   , Ds3 
	.byte		N60   , Ds4 
	.byte	W60
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N84   , An3 
	.byte		N84   , An4 
	.byte	W12
@ 062   ----------------------------------------
	.byte	W72
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
@ 063   ----------------------------------------
	.byte		N84   , Gn3 
	.byte		N84   , Gn4 
	.byte	W84
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Gn4 
	.byte	W06
@ 064   ----------------------------------------
	.byte		N96   , Fs3 
	.byte		N96   , Fs4 
	.byte	W96
@ 065   ----------------------------------------
	.byte		N48   , Gn3 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W36
	.byte		TIE   , As3 
	.byte		TIE   , As4 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W96
	.byte		EOT   , As3 
	.byte		        As4 
@ 067   ----------------------------------------
	.byte		N48   , Fn3 
	.byte		N48   , Fn4 
	.byte	W48
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W36
	.byte		TIE   , As3 
	.byte		TIE   , As4 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W96
	.byte		EOT   , As3 
	.byte		        As4 
@ 069   ----------------------------------------
	.byte		N60   , Ds3 
	.byte		N60   , Ds4 
	.byte	W60
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N84   , An3 
	.byte		N84   , An4 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W72
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
@ 071   ----------------------------------------
	.byte		N84   , Gn3 
	.byte		N84   , Gn4 
	.byte	W84
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Gn4 
	.byte	W06
@ 072   ----------------------------------------
	.byte		N96   , Fs3 
	.byte		N96   , Fs4 
	.byte	W96
@ 073   ----------------------------------------
	.byte		N48   , Gn3 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W36
	.byte		TIE   , As3 
	.byte		TIE   , As4 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W96
	.byte		EOT   , As3 
	.byte		        As4 
@ 075   ----------------------------------------
	.byte		N48   , Fn3 
	.byte		N48   , Fn4 
	.byte	W48
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W36
	.byte		TIE   , As3 
	.byte		TIE   , As4 
	.byte	W12
@ 076   ----------------------------------------
	.byte	W96
	.byte		EOT   , As3 
	.byte		        As4 
@ 077   ----------------------------------------
	.byte		N60   , Ds3 
	.byte		N60   , Ds4 
	.byte	W60
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N84   , An3 
	.byte		N84   , An4 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W72
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
@ 079   ----------------------------------------
	.byte		N84   , Gn3 
	.byte		N84   , Gn4 
	.byte	W84
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Gn4 
	.byte	W06
@ 080   ----------------------------------------
	.byte		N96   , Fs3 
	.byte		N96   , Fs4 
	.byte	W48
	.byte	TEMPO , 140*mus_touhou5_stage5_boss_tbs/2
	.byte	W48
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_touhou5_stage5_boss_2:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 56
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
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
	.byte	W48
	.byte		MOD   , 0
	.byte		N12   , Fs3 , v100
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 032   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Gn3 
	.byte	W12
@ 033   ----------------------------------------
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Gn3 
	.byte	W12
@ 034   ----------------------------------------
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N36   , An3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 036   ----------------------------------------
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Gn3 
	.byte	W12
@ 037   ----------------------------------------
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Gn3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , An3 
	.byte	W12
@ 039   ----------------------------------------
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Fn4 
	.byte	W12
@ 040   ----------------------------------------
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W12
@ 041   ----------------------------------------
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N12   , As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W12
@ 042   ----------------------------------------
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N12   , As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
@ 043   ----------------------------------------
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N36   , Fn4 
	.byte		N36   , An4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 044   ----------------------------------------
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W12
@ 045   ----------------------------------------
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N12   , As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W12
@ 046   ----------------------------------------
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N12   , As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Fn4 
	.byte		N24   , An4 
	.byte	W12
@ 047   ----------------------------------------
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn5 
	.byte	W12
@ 048   ----------------------------------------
mus_touhou5_stage5_boss_2_048:
	.byte		MOD   , 0
	.byte		N96   , An3 , v100
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W72
	.byte	PEND
@ 049   ----------------------------------------
mus_touhou5_stage5_boss_2_049:
	.byte		MOD   , 0
	.byte		N96   , Fn3 , v100
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
	 .word	mus_touhou5_stage5_boss_2_048
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_2_049
@ 052   ----------------------------------------
mus_touhou5_stage5_boss_2_052:
	.byte		MOD   , 0
	.byte		N96   , An3 , v100
	.byte		N96   , Cs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W72
	.byte	PEND
@ 053   ----------------------------------------
mus_touhou5_stage5_boss_2_053:
	.byte		MOD   , 0
	.byte		N96   , Fn3 , v100
	.byte		N96   , Fn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W72
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_2_052
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_2_053
@ 056   ----------------------------------------
	.byte		MOD   , 0
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
	.byte		        0
	.byte		N48   , Gn3 , v100
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
	.byte		        0
	.byte		N36   , An3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		TIE   , As3 
	.byte	W12
@ 066   ----------------------------------------
mus_touhou5_stage5_boss_2_066:
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W84
	.byte	PEND
	.byte		EOT   , As3 
@ 067   ----------------------------------------
	.byte		MOD   , 0
	.byte		N48   , Fn3 , v100
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
	.byte		        0
	.byte		N36   , An3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N84   , As3 
	.byte	W12
@ 068   ----------------------------------------
mus_touhou5_stage5_boss_2_068:
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W60
	.byte	PEND
	.byte		        0
	.byte		N24   , Fn3 , v100
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 069   ----------------------------------------
	.byte		        0
	.byte		N60   , Ds3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W36
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N84   , An3 
	.byte	W12
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_2_068
	.byte		MOD   , 0
	.byte		N24   , Gn3 , v100
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 071   ----------------------------------------
	.byte		        0
	.byte		N96   
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W72
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_2_048
@ 073   ----------------------------------------
	.byte		MOD   , 0
	.byte		N48   , Gn3 , v100
	.byte		N48   , Gn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
	.byte		        0
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		TIE   , As3 
	.byte		TIE   , As4 
	.byte	W12
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_2_066
	.byte		EOT   , As3 
	.byte		        As4 
@ 075   ----------------------------------------
	.byte		MOD   , 0
	.byte		N48   , Fn3 , v100
	.byte		N48   , Fn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
	.byte		        0
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W12
	.byte		        0
	.byte		N84   , As3 
	.byte		N84   , As4 
	.byte	W12
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_2_068
	.byte		MOD   , 0
	.byte		N24   , Fn3 , v100
	.byte		N24   , Fn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 077   ----------------------------------------
	.byte		        0
	.byte		N60   , Ds3 
	.byte		N60   , Ds4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W36
	.byte		        0
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte		N84   , An3 
	.byte		N84   , An4 
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_2_068
	.byte		MOD   , 0
	.byte		N24   , Gn3 , v100
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 079   ----------------------------------------
	.byte		        0
	.byte		N96   , Gn3 
	.byte		N96   , Gn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W72
@ 080   ----------------------------------------
	.byte		        0
	.byte		N96   , An3 
	.byte		N96   , An4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W72
@ 081   ----------------------------------------
	.byte		        0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_touhou5_stage5_boss_3:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 50
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte		N96   , An2 , v088
	.byte		N96   , Cs3 
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cs3 
	.byte	W96
@ 002   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Cs3 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cs3 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Cs3 
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cs3 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Cs3 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cs3 
	.byte	W96
@ 008   ----------------------------------------
	.byte		N84   , Gn1 
	.byte		N84   , Dn2 
	.byte	W84
	.byte		TIE   , Gn1 
	.byte		TIE   , Ds2 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn1 
	.byte		        Ds2 
@ 010   ----------------------------------------
	.byte		N84   , Fn1 
	.byte		N84   , Cn2 
	.byte	W84
	.byte		TIE   , Fn1 
	.byte		TIE   , Dn2 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Dn2 
@ 012   ----------------------------------------
	.byte		N84   , Ds1 
	.byte		N84   , As1 
	.byte	W84
	.byte		TIE   , En1 
	.byte		TIE   , Cs2 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Cs2 
@ 014   ----------------------------------------
mus_touhou5_stage5_boss_3_014:
	.byte		TIE   , Fs1 , v088
	.byte		TIE   , Dn2 
	.byte	W96
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Dn2 
@ 016   ----------------------------------------
	.byte		N96   , Gn1 
	.byte		N96   , Dn3 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Ds3 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Cn3 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Dn3 
	.byte	W96
@ 020   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , As2 
	.byte	W96
@ 021   ----------------------------------------
	.byte		        En1 
	.byte		N96   , Cs3 
	.byte	W96
@ 022   ----------------------------------------
mus_touhou5_stage5_boss_3_022:
	.byte		TIE   , Fs1 , v088
	.byte		TIE   , Dn3 
	.byte	W96
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Dn3 
@ 024   ----------------------------------------
	.byte		N96   , Gn1 
	.byte		N96   , Dn3 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Ds3 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Cn3 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Dn3 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , As2 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        En1 
	.byte		N96   , Cs3 
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_3_022
@ 031   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Dn3 
@ 032   ----------------------------------------
	.byte		N48   , Ds1 , v088
	.byte		N48   , As1 
	.byte	W48
	.byte		        Fn1 
	.byte		N48   , Cn2 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Gn1 
	.byte		N48   , Dn2 
	.byte	W48
	.byte		        Fn1 
	.byte		N48   , Cn2 
	.byte	W48
@ 034   ----------------------------------------
	.byte		        Ds1 
	.byte		N48   , As1 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Cn2 
	.byte	W48
@ 035   ----------------------------------------
	.byte		N72   , Gn1 
	.byte		N72   , Dn2 
	.byte	W72
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte	W24
@ 036   ----------------------------------------
	.byte		N48   , Ds1 
	.byte		N48   , As1 
	.byte	W48
	.byte		        Fn1 
	.byte		N48   , Cn2 
	.byte	W48
@ 037   ----------------------------------------
	.byte		        Gn1 
	.byte		N48   , Dn2 
	.byte	W48
	.byte		        Fn1 
	.byte		N48   , Cn2 
	.byte	W48
@ 038   ----------------------------------------
	.byte		        Cn1 
	.byte		N48   , Gn1 
	.byte	W48
	.byte		        Dn1 
	.byte		N48   , An1 
	.byte	W48
@ 039   ----------------------------------------
	.byte		        Ds1 
	.byte		N48   , As1 
	.byte	W48
	.byte		        Fn1 
	.byte		N48   , Cn2 
	.byte	W48
@ 040   ----------------------------------------
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Cn2 
	.byte	W12
@ 043   ----------------------------------------
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
@ 044   ----------------------------------------
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
@ 045   ----------------------------------------
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
@ 046   ----------------------------------------
	.byte		        Cn1 
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , An1 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte	W12
@ 048   ----------------------------------------
	.byte		N96   , An2 
	.byte		N96   , Cs3 
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cs3 
	.byte	W96
@ 050   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Cs3 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cs3 
	.byte	W96
@ 052   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Cs3 
	.byte	W96
@ 053   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cs3 
	.byte	W96
@ 054   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Cs3 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cs3 
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte		N84   , Gn1 
	.byte		N84   , Dn2 
	.byte	W84
	.byte		TIE   , Gn1 
	.byte		TIE   , Ds2 
	.byte	W12
@ 058   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn1 
	.byte		        Ds2 
@ 059   ----------------------------------------
	.byte		N84   , Fn1 
	.byte		N84   , Cn2 
	.byte	W84
	.byte		TIE   , Fn1 
	.byte		TIE   , Dn2 
	.byte	W12
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Dn2 
@ 061   ----------------------------------------
	.byte		N84   , Ds1 
	.byte		N84   , As1 
	.byte	W84
	.byte		TIE   , En1 
	.byte		TIE   , Cs2 
	.byte	W12
@ 062   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Cs2 
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_3_014
@ 064   ----------------------------------------
	.byte	W72
	.byte		EOT   , Dn2 
	.byte		N24   , An1 , v088
	.byte	W24
	.byte		EOT   , Fs1 
@ 065   ----------------------------------------
	.byte		N84   , Gn1 
	.byte		N84   , Dn2 
	.byte	W84
	.byte		TIE   , Gn1 
	.byte		TIE   , Ds2 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn1 
	.byte		        Ds2 
@ 067   ----------------------------------------
	.byte		N84   , Fn1 
	.byte		N84   , Cn2 
	.byte	W84
	.byte		TIE   , Fn1 
	.byte		TIE   , Dn2 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Dn2 
@ 069   ----------------------------------------
	.byte		N84   , Ds1 
	.byte		N84   , As1 
	.byte	W84
	.byte		TIE   , En1 
	.byte		TIE   , Cs2 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Cs2 
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_3_014
@ 072   ----------------------------------------
	.byte	W72
	.byte		EOT   , Dn2 
	.byte		N24   , An1 , v088
	.byte	W24
	.byte		EOT   , Fs1 
@ 073   ----------------------------------------
	.byte		N84   , Gn1 
	.byte		N84   , Dn2 
	.byte	W84
	.byte		TIE   , Gn1 
	.byte		TIE   , Ds2 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn1 
	.byte		        Ds2 
@ 075   ----------------------------------------
	.byte		N84   , Fn1 
	.byte		N84   , Cn2 
	.byte	W84
	.byte		TIE   , Fn1 
	.byte		TIE   , Dn2 
	.byte	W12
@ 076   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Dn2 
@ 077   ----------------------------------------
	.byte		N84   , Ds1 
	.byte		N84   , As1 
	.byte	W84
	.byte		TIE   , En1 
	.byte		TIE   , Cs2 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Cs2 
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_3_014
@ 080   ----------------------------------------
	.byte	W72
	.byte		EOT   , Dn2 
	.byte		N24   , An1 , v088
	.byte	W24
	.byte		EOT   , Fs1 
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_touhou5_stage5_boss_4:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Fn4 , v088
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N84   , Gn4 
	.byte		N84   , Dn5 
	.byte	W84
	.byte		TIE   , Gn4 
	.byte		TIE   , Ds5 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn4 
	.byte		        Ds5 
@ 010   ----------------------------------------
	.byte		N84   , Fn4 
	.byte		N84   , Cn5 
	.byte	W84
	.byte		TIE   , Fn4 
	.byte		TIE   , Dn5 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn4 
	.byte		        Dn5 
@ 012   ----------------------------------------
	.byte		N84   , Ds4 
	.byte		N84   , As4 
	.byte	W84
	.byte		TIE   , En4 
	.byte		TIE   , Cs5 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W96
	.byte		EOT   , En4 
	.byte		        Cs5 
@ 014   ----------------------------------------
mus_touhou5_stage5_boss_4_014:
	.byte		TIE   , Fs4 , v088
	.byte		TIE   , Dn5 
	.byte	W96
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs4 
	.byte		        Dn5 
@ 016   ----------------------------------------
	.byte		N96   , Gn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Gn4 
	.byte		N96   , Ds5 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cn5 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 020   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , As4 
	.byte	W96
@ 021   ----------------------------------------
	.byte		        En4 
	.byte		N96   , Cs5 
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_4_014
@ 023   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs4 
	.byte		        Dn5 
@ 024   ----------------------------------------
	.byte		N96   , Gn4 , v088
	.byte		N96   , Dn5 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Gn4 
	.byte		N96   , Ds5 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cn5 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , As4 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        En4 
	.byte		N96   , Cs5 
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_4_014
@ 031   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs4 
	.byte		        Dn5 
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
	.byte		N12   , Fn4 , v088
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 054   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 056   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte	W24
	.byte		N06   , Gs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        En4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , En4 
	.byte	W06
@ 057   ----------------------------------------
	.byte		N96   , Gn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 058   ----------------------------------------
	.byte		        Gn4 
	.byte		N96   , Ds5 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cn5 
	.byte	W96
@ 060   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 061   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , As4 
	.byte	W96
@ 062   ----------------------------------------
	.byte		        En4 
	.byte		N96   , Cs5 
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_4_014
@ 064   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs4 
	.byte		        Dn5 
@ 065   ----------------------------------------
	.byte		N96   , Gn4 , v088
	.byte		N96   , Dn5 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Gn4 
	.byte		N96   , Ds5 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cn5 
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 069   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , As4 
	.byte	W96
@ 070   ----------------------------------------
	.byte		        En4 
	.byte		N96   , Cs5 
	.byte	W96
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_4_014
@ 072   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs4 
	.byte		        Dn5 
@ 073   ----------------------------------------
	.byte		N96   , Gn4 , v088
	.byte		N96   , Dn5 
	.byte	W96
@ 074   ----------------------------------------
	.byte		        Gn4 
	.byte		N96   , Ds5 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cn5 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 077   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , As4 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        En4 
	.byte		N96   , Cs5 
	.byte	W96
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_4_014
@ 080   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs4 
	.byte		        Dn5 
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_touhou5_stage5_boss_5:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 19
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
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
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N84   , Gn3 , v100
	.byte		N84   , Dn4 
	.byte	W84
	.byte		TIE   , Gn3 
	.byte		TIE   , Ds4 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn3 
	.byte		        Ds4 
@ 010   ----------------------------------------
	.byte		N84   , Fn3 
	.byte		N84   , Cn4 
	.byte	W84
	.byte		TIE   , Fn3 
	.byte		TIE   , Dn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn3 
	.byte		        Dn4 
@ 012   ----------------------------------------
	.byte		N84   , Ds3 
	.byte		N84   , As3 
	.byte	W84
	.byte		TIE   , En3 
	.byte		TIE   , Cs4 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W96
	.byte		EOT   , En3 
	.byte		        Cs4 
@ 014   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte		TIE   , Dn4 
	.byte	W96
@ 015   ----------------------------------------
	.byte	W48
	.byte		EOT   , Fs3 
	.byte		        Dn4 
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N06   , Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , An4 
	.byte		N06   , Cn5 
	.byte	W06
@ 016   ----------------------------------------
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Gn4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , As4 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An4 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        An3 
	.byte		N06   , Fs4 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Gn4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N06   , An4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Fs5 
	.byte		N06   , An5 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        An4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Fs5 
	.byte		N06   , An5 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        An4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Fs5 
	.byte		N06   , An5 
	.byte	W06
	.byte		        An4 
	.byte		N06   , Dn5 
	.byte	W06
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
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds5 
	.byte	W12
@ 058   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
@ 059   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , As4 
	.byte		N24   , Dn5 
	.byte	W12
@ 060   ----------------------------------------
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , An4 
	.byte		N24   , Cs5 
	.byte	W12
@ 062   ----------------------------------------
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds5 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , As4 
	.byte		N24   , Dn5 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , An4 
	.byte		N24   , Cs5 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 072   ----------------------------------------
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds5 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
@ 075   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , As4 
	.byte		N24   , Dn5 
	.byte	W12
@ 076   ----------------------------------------
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
@ 077   ----------------------------------------
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , An4 
	.byte		N24   , Cs5 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 079   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 080   ----------------------------------------
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_touhou5_stage5_boss_6:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 19
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
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
mus_touhou5_stage5_boss_6_008:
	.byte		N84   , Gn1 , v088
	.byte		N84   , Dn2 
	.byte		N84   , Gn2 
	.byte		N84   , Dn3 
	.byte	W84
	.byte	PEND
	.byte		TIE   , Gn1 
	.byte		TIE   , Ds2 
	.byte		TIE   , Gn2 
	.byte		TIE   , Ds3 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn1 
	.byte		        Ds2 
	.byte		        Gn2 
	.byte		        Ds3 
@ 010   ----------------------------------------
mus_touhou5_stage5_boss_6_010:
	.byte		N84   , Fn1 , v088
	.byte		N84   , Cn2 
	.byte		N84   , Fn2 
	.byte		N84   , Cn3 
	.byte	W84
	.byte	PEND
	.byte		TIE   , Fn1 
	.byte		TIE   , Dn2 
	.byte		TIE   , Fn2 
	.byte		TIE   , Dn3 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Dn2 
	.byte		        Fn2 
	.byte		        Dn3 
@ 012   ----------------------------------------
mus_touhou5_stage5_boss_6_012:
	.byte		N84   , Ds1 , v088
	.byte		N84   , As1 
	.byte		N84   , Ds2 
	.byte		N84   , As2 
	.byte	W84
	.byte	PEND
	.byte		TIE   , En1 
	.byte		TIE   , Cs2 
	.byte		TIE   , En2 
	.byte		TIE   , Cs3 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Cs2 
	.byte		        En2 
	.byte		        Cs3 
@ 014   ----------------------------------------
mus_touhou5_stage5_boss_6_014:
	.byte		TIE   , Fs1 , v088
	.byte		TIE   , Dn2 
	.byte		TIE   , Fs2 
	.byte		TIE   , Dn3 
	.byte	W96
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Dn2 
	.byte		        Fs2 
	.byte		        Dn3 
@ 016   ----------------------------------------
mus_touhou5_stage5_boss_6_016:
	.byte		N96   , Gn1 , v088
	.byte		N96   , Dn2 
	.byte		N96   , Gn2 
	.byte		N96   , Dn3 
	.byte	W96
	.byte	PEND
@ 017   ----------------------------------------
mus_touhou5_stage5_boss_6_017:
	.byte		N96   , Gn1 , v088
	.byte		N96   , Ds2 
	.byte		N96   , Gn2 
	.byte		N96   , Ds3 
	.byte	W96
	.byte	PEND
@ 018   ----------------------------------------
mus_touhou5_stage5_boss_6_018:
	.byte		N96   , Fn1 , v088
	.byte		N96   , Cn2 
	.byte		N96   , Fn2 
	.byte		N96   , Cn3 
	.byte	W96
	.byte	PEND
@ 019   ----------------------------------------
mus_touhou5_stage5_boss_6_019:
	.byte		N96   , Fn1 , v088
	.byte		N96   , Dn2 
	.byte		N96   , Fn2 
	.byte		N96   , Dn3 
	.byte	W96
	.byte	PEND
@ 020   ----------------------------------------
mus_touhou5_stage5_boss_6_020:
	.byte		N96   , Ds1 , v088
	.byte		N96   , As1 
	.byte		N96   , Ds2 
	.byte		N96   , As2 
	.byte	W96
	.byte	PEND
@ 021   ----------------------------------------
mus_touhou5_stage5_boss_6_021:
	.byte		N96   , En1 , v088
	.byte		N96   , Cs2 
	.byte		N96   , En2 
	.byte		N96   , Cs3 
	.byte	W96
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_014
@ 023   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Dn2 
	.byte		        Fs2 
	.byte		        Dn3 
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_014
@ 031   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Dn2 
	.byte		        Fs2 
	.byte		        Dn3 
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
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_008
	.byte		TIE   , Gn1 , v088
	.byte		TIE   , Ds2 
	.byte		TIE   , Gn2 
	.byte		TIE   , Ds3 
	.byte	W12
@ 058   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn1 
	.byte		        Ds2 
	.byte		        Gn2 
	.byte		        Ds3 
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_010
	.byte		TIE   , Fn1 , v088
	.byte		TIE   , Dn2 
	.byte		TIE   , Fn2 
	.byte		TIE   , Dn3 
	.byte	W12
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Dn2 
	.byte		        Fn2 
	.byte		        Dn3 
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_012
	.byte		TIE   , En1 , v088
	.byte		TIE   , Cs2 
	.byte		TIE   , En2 
	.byte		TIE   , Cs3 
	.byte	W12
@ 062   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Cs2 
	.byte		        En2 
	.byte		        Cs3 
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_014
@ 064   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Dn2 
	.byte		        Fs2 
	.byte		        Dn3 
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_008
	.byte		TIE   , Gn1 , v088
	.byte		TIE   , Ds2 
	.byte		TIE   , Gn2 
	.byte		TIE   , Ds3 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn1 
	.byte		        Ds2 
	.byte		        Gn2 
	.byte		        Ds3 
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_010
	.byte		TIE   , Fn1 , v088
	.byte		TIE   , Dn2 
	.byte		TIE   , Fn2 
	.byte		TIE   , Dn3 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Dn2 
	.byte		        Fn2 
	.byte		        Dn3 
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_012
	.byte		TIE   , En1 , v088
	.byte		TIE   , Cs2 
	.byte		TIE   , En2 
	.byte		TIE   , Cs3 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Cs2 
	.byte		        En2 
	.byte		        Cs3 
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_014
@ 072   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Dn2 
	.byte		        Fs2 
	.byte		        Dn3 
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_008
	.byte		TIE   , Gn1 , v088
	.byte		TIE   , Ds2 
	.byte		TIE   , Gn2 
	.byte		TIE   , Ds3 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn1 
	.byte		        Ds2 
	.byte		        Gn2 
	.byte		        Ds3 
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_010
	.byte		TIE   , Fn1 , v088
	.byte		TIE   , Dn2 
	.byte		TIE   , Fn2 
	.byte		TIE   , Dn3 
	.byte	W12
@ 076   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Dn2 
	.byte		        Fn2 
	.byte		        Dn3 
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_012
	.byte		TIE   , En1 , v088
	.byte		TIE   , Cs2 
	.byte		TIE   , En2 
	.byte		TIE   , Cs3 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Cs2 
	.byte		        En2 
	.byte		        Cs3 
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_6_014
@ 080   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Dn2 
	.byte		        Fs2 
	.byte		        Dn3 
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_touhou5_stage5_boss_7:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
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
	.byte		N06   , Gn3 , v100
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 033   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 034   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 035   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 036   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 037   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 038   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 039   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 040   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 041   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 042   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 043   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 047   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds5 
	.byte	W12
@ 058   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
@ 059   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , As4 
	.byte		N24   , Dn5 
	.byte	W12
@ 060   ----------------------------------------
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , An4 
	.byte		N24   , Cs5 
	.byte	W12
@ 062   ----------------------------------------
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds5 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , As4 
	.byte		N24   , Dn5 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , An4 
	.byte		N24   , Cs5 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 072   ----------------------------------------
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds5 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
@ 075   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , As4 
	.byte		N24   , Dn5 
	.byte	W12
@ 076   ----------------------------------------
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
@ 077   ----------------------------------------
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , An4 
	.byte		N24   , Cs5 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 079   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 080   ----------------------------------------
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_touhou5_stage5_boss_8:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 51
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N96   , Cs5 , v088
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cs5 
	.byte	W96
@ 002   ----------------------------------------
	.byte		        An4 
	.byte		N96   , Cs5 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cs5 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        An4 
	.byte		N96   , Cs5 
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cs5 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        An4 
	.byte		N96   , Cs5 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cs5 
	.byte	W96
@ 008   ----------------------------------------
	.byte		N84   , Gn4 
	.byte		N84   , Dn5 
	.byte	W84
	.byte		TIE   , Gn4 
	.byte		TIE   , Ds5 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn4 
	.byte		        Ds5 
@ 010   ----------------------------------------
	.byte		N84   , Fn4 
	.byte		N84   , Cn5 
	.byte	W84
	.byte		TIE   , Fn4 
	.byte		TIE   , Dn5 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn4 
	.byte		        Dn5 
@ 012   ----------------------------------------
	.byte		N84   , Ds4 
	.byte		N84   , As4 
	.byte	W84
	.byte		TIE   , En4 
	.byte		TIE   , Cs5 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W96
	.byte		EOT   , En4 
	.byte		        Cs5 
@ 014   ----------------------------------------
mus_touhou5_stage5_boss_8_014:
	.byte		TIE   , Fs4 , v088
	.byte		TIE   , Dn5 
	.byte	W96
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs4 
	.byte		        Dn5 
@ 016   ----------------------------------------
	.byte		N96   , Gn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Gn4 
	.byte		N96   , Ds5 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cn5 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 020   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , As4 
	.byte	W96
@ 021   ----------------------------------------
	.byte		        En4 
	.byte		N96   , Cs5 
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_8_014
@ 023   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs4 
	.byte		        Dn5 
@ 024   ----------------------------------------
	.byte		N96   , Gn4 , v088
	.byte		N96   , Dn5 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Gn4 
	.byte		N96   , Ds5 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cn5 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , As4 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        En4 
	.byte		N96   , Cs5 
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_8_014
@ 031   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs4 
	.byte		        Dn5 
@ 032   ----------------------------------------
	.byte		N48   , Ds4 , v088
	.byte		N48   , As4 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Cn5 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Gn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Cn5 
	.byte	W48
@ 034   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , As4 
	.byte	W48
	.byte		        Fs4 
	.byte		N48   , Cn5 
	.byte	W48
@ 035   ----------------------------------------
	.byte		N72   , Gn4 
	.byte		N72   , Dn5 
	.byte	W72
	.byte		N24   , Fn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 036   ----------------------------------------
	.byte		N48   , Ds4 
	.byte		N48   , As4 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Cn5 
	.byte	W48
@ 037   ----------------------------------------
	.byte		        Gn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Cn5 
	.byte	W48
@ 038   ----------------------------------------
	.byte		        Cn4 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		        Dn4 
	.byte		N48   , An4 
	.byte	W48
@ 039   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , As4 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Cn5 
	.byte	W48
@ 040   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , As4 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Cn5 
	.byte	W48
@ 041   ----------------------------------------
	.byte		        Gn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Cn5 
	.byte	W48
@ 042   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , As4 
	.byte	W48
	.byte		        Fs4 
	.byte		N48   , Cn5 
	.byte	W48
@ 043   ----------------------------------------
	.byte		N72   , Gn4 
	.byte		N72   , Dn5 
	.byte	W72
	.byte		N24   , Fn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 044   ----------------------------------------
	.byte		N48   , Ds4 
	.byte		N48   , As4 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Cn5 
	.byte	W48
@ 045   ----------------------------------------
	.byte		        Gn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Cn5 
	.byte	W48
@ 046   ----------------------------------------
	.byte		        Cn4 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		        Dn4 
	.byte		N48   , An4 
	.byte	W48
@ 047   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , As4 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Cn5 
	.byte	W48
@ 048   ----------------------------------------
	.byte		N96   , An4 
	.byte		N96   , Cs5 
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cs5 
	.byte	W96
@ 050   ----------------------------------------
	.byte		        An4 
	.byte		N96   , Cs5 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cs5 
	.byte	W96
@ 052   ----------------------------------------
	.byte		        An4 
	.byte		N96   , Cs5 
	.byte	W96
@ 053   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cs5 
	.byte	W96
@ 054   ----------------------------------------
	.byte		        An4 
	.byte		N96   , Cs5 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Fn4 
	.byte		N96   , Cs5 
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte		N84   , Gn4 
	.byte		N84   , Dn5 
	.byte	W84
	.byte		TIE   , Gn4 
	.byte		TIE   , Ds5 
	.byte	W12
@ 058   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn4 
	.byte		        Ds5 
@ 059   ----------------------------------------
	.byte		N84   , Fn4 
	.byte		N84   , Cn5 
	.byte	W84
	.byte		TIE   , Fn4 
	.byte		TIE   , Dn5 
	.byte	W12
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn4 
	.byte		        Dn5 
@ 061   ----------------------------------------
	.byte		N84   , Ds4 
	.byte		N84   , As4 
	.byte	W84
	.byte		TIE   , En4 
	.byte		TIE   , Cs5 
	.byte	W12
@ 062   ----------------------------------------
	.byte	W96
	.byte		EOT   , En4 
	.byte		        Cs5 
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_8_014
@ 064   ----------------------------------------
	.byte	W72
	.byte		EOT   , Fs4 
	.byte		        Dn5 
	.byte		N24   , Fs4 , v088
	.byte		N24   , An4 
	.byte	W24
@ 065   ----------------------------------------
	.byte		N84   , Gn4 
	.byte		N84   , Dn5 
	.byte	W84
	.byte		TIE   , Gn4 
	.byte		TIE   , Ds5 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn4 
	.byte		        Ds5 
@ 067   ----------------------------------------
	.byte		N84   , Fn4 
	.byte		N84   , Cn5 
	.byte	W84
	.byte		TIE   , Fn4 
	.byte		TIE   , Dn5 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn4 
	.byte		        Dn5 
@ 069   ----------------------------------------
	.byte		N84   , Ds4 
	.byte		N84   , As4 
	.byte	W84
	.byte		TIE   , En4 
	.byte		TIE   , Cs5 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W96
	.byte		EOT   , En4 
	.byte		        Cs5 
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_8_014
@ 072   ----------------------------------------
	.byte	W72
	.byte		EOT   , Fs4 
	.byte		        Dn5 
	.byte		N24   , Fs4 , v088
	.byte		N24   , An4 
	.byte	W24
@ 073   ----------------------------------------
	.byte		N84   , Gn4 
	.byte		N84   , Dn5 
	.byte	W84
	.byte		TIE   , Gn4 
	.byte		TIE   , Ds5 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn4 
	.byte		        Ds5 
@ 075   ----------------------------------------
	.byte		N84   , Fn4 
	.byte		N84   , Cn5 
	.byte	W84
	.byte		TIE   , Fn4 
	.byte		TIE   , Dn5 
	.byte	W12
@ 076   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn4 
	.byte		        Dn5 
@ 077   ----------------------------------------
	.byte		N84   , Ds4 
	.byte		N84   , As4 
	.byte	W84
	.byte		TIE   , En4 
	.byte		TIE   , Cs5 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W96
	.byte		EOT   , En4 
	.byte		        Cs5 
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_8_014
@ 080   ----------------------------------------
	.byte	W72
	.byte		EOT   , Fs4 
	.byte		        Dn5 
	.byte		N24   , Fs4 , v088
	.byte		N24   , An4 
	.byte	W24
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_touhou5_stage5_boss_9:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 36
	.byte		MOD   , 127
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N96   , An1 , v100
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 002   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 008   ----------------------------------------
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N84   , Dn1 
	.byte	W84
	.byte		        Ds1 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 010   ----------------------------------------
	.byte		N84   , Cn1 
	.byte	W84
	.byte		        Dn1 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 012   ----------------------------------------
	.byte		N84   , As0 
	.byte	W84
	.byte		TIE   , Cs1 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 014   ----------------------------------------
	.byte		N96   , Dn1 
	.byte	W96
@ 015   ----------------------------------------
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 016   ----------------------------------------
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
@ 017   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 018   ----------------------------------------
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
@ 019   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 020   ----------------------------------------
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
@ 021   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N06   , Gn1 
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
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 025   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
@ 026   ----------------------------------------
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
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 028   ----------------------------------------
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
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 029   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 030   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 032   ----------------------------------------
	.byte		N12   , Ds1 
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
@ 033   ----------------------------------------
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
@ 034   ----------------------------------------
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
@ 035   ----------------------------------------
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
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 037   ----------------------------------------
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
@ 038   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 039   ----------------------------------------
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
@ 040   ----------------------------------------
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
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
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 041   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
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
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 042   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
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
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 043   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
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
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 044   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
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
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
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
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 046   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 047   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
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
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 048   ----------------------------------------
	.byte		N12   , An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 054   ----------------------------------------
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 056   ----------------------------------------
	.byte	W72
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   , Bn1 
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
@ 057   ----------------------------------------
mus_touhou5_stage5_boss_9_057:
	.byte		BEND  , c_v+0
	.byte		N06   , Gn1 , v100
	.byte	W06
	.byte	PEND
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
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
@ 059   ----------------------------------------
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
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 060   ----------------------------------------
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 061   ----------------------------------------
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
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_9_057
	.byte		N06   , Gn1 , v100
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
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
@ 067   ----------------------------------------
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
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 069   ----------------------------------------
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
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 070   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_9_057
	.byte		N06   , Gn1 , v100
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
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
@ 075   ----------------------------------------
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
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 076   ----------------------------------------
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 077   ----------------------------------------
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
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 078   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 079   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 080   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   , Dn2 
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
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_touhou5_stage5_boss_10:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		        16
	.byte		        16
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W72
	.byte		N03   , Cn1 , v100
	.byte	W03
	.byte	W21
@ 005   ----------------------------------------
	.byte	W72
	.byte		N03   
	.byte	W03
	.byte	W21
@ 006   ----------------------------------------
	.byte	W72
	.byte		N03   
	.byte	W03
	.byte	W21
@ 007   ----------------------------------------
	.byte	W48
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v088
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 008   ----------------------------------------
mus_touhou5_stage5_boss_10_008:
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte	PEND
	.byte	W21
	.byte		        Cn1 
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W21
@ 009   ----------------------------------------
mus_touhou5_stage5_boss_10_009:
	.byte	W24
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	PEND
	.byte	W44
	.byte	W01
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W21
@ 010   ----------------------------------------
mus_touhou5_stage5_boss_10_010:
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	PEND
	.byte	W21
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W21
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_009
	.byte	W44
	.byte	W01
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W21
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W21
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W21
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_009
	.byte	W44
	.byte	W01
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W21
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W09
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , As1 , v088
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Fs1 , v088
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
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_008
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
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
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
@ 024   ----------------------------------------
mus_touhou5_stage5_boss_10_024:
	.byte		N03   , Cn1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte	PEND
	.byte	W09
	.byte		        En1 
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 025   ----------------------------------------
mus_touhou5_stage5_boss_10_025:
	.byte		N03   , Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	PEND
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 031   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
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
	.byte		N03   , Fs1 , v088
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Fs1 , v088
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_008
	.byte	W21
	.byte		N03   , En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W21
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W21
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W21
	.byte		N03   , En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W21
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
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
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W21
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W21
	.byte		N03   , En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W21
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W21
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W21
	.byte		N03   , En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W21
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
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
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
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
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
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
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_024
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
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
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
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
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
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
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_010
	.byte	W03
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
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
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_024
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
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
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
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
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_024
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
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
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Dn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
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
	.byte		N03   , Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v088
	.byte		N03   , Bn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte		N03   , An1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_024
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_10_025
	.byte	W09
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v088
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W03
@ 080   ----------------------------------------
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
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W05
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W05
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W05
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W05
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W05
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W05
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 11 (Midi-Chn.11) ****************@

mus_touhou5_stage5_boss_11:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 98
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		MOD   , 96
	.byte		PAN   , c_v-64
	.byte		        c_v-63
	.byte		N12   , Fn4 , v088
	.byte		N12   , Cs5 
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
	.byte		        c_v-56
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-54
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
	.byte		N12   , En4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v+57
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
@ 001   ----------------------------------------
mus_touhou5_stage5_boss_11_001:
	.byte		PAN   , c_v+63
	.byte		        c_v+62
	.byte		N12   , Fn4 , v088
	.byte		N12   , Cs5 
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
	.byte		        c_v+55
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+53
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
	.byte	PEND
	.byte		        c_v+47
	.byte		        c_v+46
	.byte		N12   , En4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v-58
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
@ 002   ----------------------------------------
mus_touhou5_stage5_boss_11_002:
	.byte		PAN   , c_v-64
	.byte		        c_v-63
	.byte		N12   , Fn4 , v088
	.byte		N12   , Cs5 
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
	.byte		        c_v-56
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-54
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
	.byte	PEND
	.byte		        c_v-48
	.byte		        c_v-47
	.byte		N12   , En4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v+57
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
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_11_001
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v-58
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
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_11_002
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v+57
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
	 .word	mus_touhou5_stage5_boss_11_001
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v-58
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
	 .word	mus_touhou5_stage5_boss_11_002
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v+57
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
	 .word	mus_touhou5_stage5_boss_11_001
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v-58
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
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_11_002
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v+57
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
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_11_001
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v-58
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
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_11_002
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v+57
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
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_11_001
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v-58
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
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_11_002
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v+57
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
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_11_001
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v-58
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
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_11_002
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v+57
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
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_11_001
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En4 , v088
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs4 
	.byte		N12   , An4 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs4 
	.byte		N12   , En4 
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
	.byte	W01
	.byte		        c_v-58
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
@ 056   ----------------------------------------
	.byte		N12   , Fn4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte	W24
	.byte		N06   , Gs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        En4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , En4 
	.byte	W06
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
	.byte	FINE

@**************** Track 12 (Midi-Chn.12) ****************@

mus_touhou5_stage5_boss_12:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		MOD   , 96
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		        c_v+63
	.byte		        c_v+62
	.byte		N12   , Fn3 , v088
	.byte		N12   , Cs4 
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
	.byte		        c_v+55
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+53
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
	.byte		N12   , En3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v-58
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
@ 001   ----------------------------------------
mus_touhou5_stage5_boss_12_001:
	.byte		PAN   , c_v-64
	.byte		        c_v-63
	.byte		N12   , Fn3 , v088
	.byte		N12   , Cs4 
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
	.byte		        c_v-56
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-54
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
	.byte	PEND
	.byte		        c_v-48
	.byte		        c_v-47
	.byte		N12   , En3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v+57
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
@ 002   ----------------------------------------
mus_touhou5_stage5_boss_12_002:
	.byte		PAN   , c_v+63
	.byte		        c_v+62
	.byte		N12   , Fn3 , v088
	.byte		N12   , Cs4 
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
	.byte		        c_v+55
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+53
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
	.byte	PEND
	.byte		        c_v+47
	.byte		        c_v+46
	.byte		N12   , En3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v-58
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
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_12_001
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v+57
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
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_12_002
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v-58
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
	 .word	mus_touhou5_stage5_boss_12_001
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v+57
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
	 .word	mus_touhou5_stage5_boss_12_002
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v-58
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
	 .word	mus_touhou5_stage5_boss_12_001
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v+57
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
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_12_002
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v-58
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
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_12_001
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v+57
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
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_12_002
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v-58
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
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_12_001
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v+57
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
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_12_002
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v-58
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
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_12_001
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v+57
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
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_12_002
	.byte		PAN   , c_v+47
	.byte		        c_v+46
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+37
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+21
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v+5
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-10
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-26
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v-42
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v-58
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
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_12_001
	.byte		PAN   , c_v-48
	.byte		        c_v-47
	.byte		N12   , En3 , v088
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v-38
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
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v-22
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
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
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
	.byte	W01
	.byte		        c_v-6
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
	.byte		N12   , Cs3 
	.byte		N12   , An3 
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
	.byte	W01
	.byte		        c_v+9
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
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
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
	.byte	W01
	.byte		        c_v+25
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
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
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
	.byte	W01
	.byte		        c_v+41
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
	.byte		N12   , Cs3 
	.byte		N12   , En3 
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
	.byte	W01
	.byte		        c_v+57
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
@ 056   ----------------------------------------
	.byte		N12   , Fn3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte	W24
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W06
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
	.byte	FINE

@**************** Track 13 (Midi-Chn.15) ****************@

mus_touhou5_stage5_boss_13:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+63
	.byte	W20
	.byte		BEND  , c_v-50
	.byte	W28
	.byte		N03   , Cs2 , v100
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
	.byte		        Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 001   ----------------------------------------
mus_touhou5_stage5_boss_13_001:
	.byte		PAN   , c_v-64
	.byte	W48
	.byte		N03   , Cs2 , v100
	.byte		N03   , An2 
	.byte	W03
	.byte	PEND
	.byte	W21
	.byte		        Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 002   ----------------------------------------
mus_touhou5_stage5_boss_13_002:
	.byte		PAN   , c_v+63
	.byte	W48
	.byte		N03   , Cs2 , v100
	.byte		N03   , An2 
	.byte	W03
	.byte	PEND
	.byte	W21
	.byte		        Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_13_001
	.byte	W21
	.byte		N03   , Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_13_002
	.byte	W21
	.byte		N03   , Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_13_001
	.byte	W21
	.byte		N03   , Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_13_002
	.byte	W21
	.byte		N03   , Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 007   ----------------------------------------
	.byte		PAN   , c_v-64
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
	.byte	W48
	.byte		        c_v+63
	.byte	W24
	.byte		N03   , Cs2 , v100
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 049   ----------------------------------------
	.byte		        Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W24
	.byte		N03   , Cs2 , v100
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 050   ----------------------------------------
	.byte		        Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W24
	.byte		N03   , Cs2 , v100
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 051   ----------------------------------------
	.byte		        Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W24
	.byte		N03   , Cs2 , v100
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 052   ----------------------------------------
	.byte		        Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W24
	.byte		N03   , Cs2 , v100
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 053   ----------------------------------------
	.byte		        Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W24
	.byte		N03   , Cs2 , v100
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 054   ----------------------------------------
	.byte		        Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W24
	.byte		N03   , Cs2 , v100
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
@ 055   ----------------------------------------
	.byte		        Cs2 , v064
	.byte		N03   , An2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W24
	.byte		N03   , Cs2 , v100
	.byte		N03   , An2 
	.byte	W03
	.byte	W21
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
	.byte	FINE

@**************** Track 14 (Midi-Chn.16) ****************@

mus_touhou5_stage5_boss_14:
	.byte	KEYSH , mus_touhou5_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 119
	.byte		VOL   , 127*mus_touhou5_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_touhou5_stage5_boss_14_004:
	.byte		N24   , Cn0 , v127
	.byte		N24   , Cs0 
	.byte		N24   , Dn0 
	.byte		N24   , Ds0 
	.byte		N24   , En0 
	.byte		N24   , Fn0 
	.byte		N24   , Fs0 
	.byte		N24   , Gn0 
	.byte		N24   , Gs0 
	.byte		N24   , An0 
	.byte		N24   , As0 
	.byte		N24   , Bn0 
	.byte	W24
	.byte	PEND
	.byte	W72
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_14_004
	.byte	W72
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_14_004
	.byte	W72
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_14_004
	.byte	W72
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
mus_touhou5_stage5_boss_14_048:
	.byte	W24
	.byte		N24   , Cn0 , v127
	.byte		N24   , Cs0 
	.byte		N24   , Dn0 
	.byte		N24   , Ds0 
	.byte		N24   , En0 
	.byte		N24   , Fn0 
	.byte		N24   , Fs0 
	.byte		N24   , Gn0 
	.byte		N24   , Gs0 
	.byte		N24   , An0 
	.byte		N24   , As0 
	.byte		N24   , Bn0 
	.byte	W24
	.byte	PEND
	.byte	W48
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_14_048
	.byte	W48
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_14_048
	.byte	W48
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_14_048
	.byte	W48
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_14_048
	.byte	W48
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_14_048
	.byte	W48
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_14_048
	.byte	W48
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_14_048
	.byte	W48
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage5_boss_14_004
	.byte	W72
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
	.byte	FINE

@******************************************************@
	.align	2

mus_touhou5_stage5_boss:
	.byte	14	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_touhou5_stage5_boss_pri	@ Priority
	.byte	mus_touhou5_stage5_boss_rev	@ Reverb.

	.word	mus_touhou5_stage5_boss_grp

	.word	mus_touhou5_stage5_boss_1
	.word	mus_touhou5_stage5_boss_2
	.word	mus_touhou5_stage5_boss_3
	.word	mus_touhou5_stage5_boss_4
	.word	mus_touhou5_stage5_boss_5
	.word	mus_touhou5_stage5_boss_6
	.word	mus_touhou5_stage5_boss_7
	.word	mus_touhou5_stage5_boss_8
	.word	mus_touhou5_stage5_boss_9
	.word	mus_touhou5_stage5_boss_10
	.word	mus_touhou5_stage5_boss_11
	.word	mus_touhou5_stage5_boss_12
	.word	mus_touhou5_stage5_boss_13
	.word	mus_touhou5_stage5_boss_14

	.end
