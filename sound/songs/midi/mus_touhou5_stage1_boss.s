	.include "MPlayDef.s"

	.equ	mus_touhou5_stage1_boss_grp, voicegroup_ancient_groover
	.equ	mus_touhou5_stage1_boss_pri, 0
	.equ	mus_touhou5_stage1_boss_rev, reverb_set+50
	.equ	mus_touhou5_stage1_boss_mvl, 100
	.equ	mus_touhou5_stage1_boss_key, 0
	.equ	mus_touhou5_stage1_boss_tbs, 1
	.equ	mus_touhou5_stage1_boss_exg, 1
	.equ	mus_touhou5_stage1_boss_cmp, 1

	.section .rodata
	.global	mus_touhou5_stage1_boss
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_touhou5_stage1_boss_1:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 161*mus_touhou5_stage1_boss_tbs/2
	.byte		VOICE , 56
	.byte		MOD   , 0
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+18
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	TEMPO , 135*mus_touhou5_stage1_boss_tbs/2
	.byte	W48
@ 005   ----------------------------------------
	.byte	TEMPO , 80*mus_touhou5_stage1_boss_tbs/2
	.byte	W48
@ 006   ----------------------------------------
@ 007   ----------------------------------------
	.byte	TEMPO , 135*mus_touhou5_stage1_boss_tbs/2
	.byte		MOD   , 0
	.byte		N24   , En3 , v112
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        0
	.byte		N24   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        0
	.byte		N24   , Bn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 008   ----------------------------------------
@ 009   ----------------------------------------
	.byte	TEMPO , 150*mus_touhou5_stage1_boss_tbs/2
	.byte		        0
	.byte		N36   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte		        0
	.byte		N12   , En4 
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 010   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 011   ----------------------------------------
mus_touhou5_stage1_boss_1_011:
	.byte		MOD   , 0
	.byte		N36   , An3 , v112
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 012   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 013   ----------------------------------------
mus_touhou5_stage1_boss_1_013:
	.byte		MOD   , 0
	.byte		N36   , En4 , v112
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 014   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 015   ----------------------------------------
mus_touhou5_stage1_boss_1_015:
	.byte		MOD   , 0
	.byte		N36   , An4 , v112
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , An4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 016   ----------------------------------------
mus_touhou5_stage1_boss_1_016:
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , An4 , v112
	.byte	W12
	.byte	PEND
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_011
	.byte		MOD   , 0
	.byte		N12   , En4 , v112
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 018   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_011
	.byte		MOD   , 0
	.byte		N06   , Dn4 , v112
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 020   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_013
	.byte		MOD   , 0
	.byte		N06   , An4 , v112
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 022   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_015
	.byte		MOD   , 0
	.byte		N06   , Bn4 , v112
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , An4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_016
	.byte		N12   , Dn4 , v112
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_011
	.byte		MOD   , 0
	.byte		N12   , En4 , v112
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 026   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_011
	.byte		MOD   , 0
	.byte		N06   , Dn4 , v112
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 028   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_013
	.byte		MOD   , 0
	.byte		N06   , An4 , v112
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 030   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_015
	.byte		MOD   , 0
	.byte		N06   , Bn4 , v112
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , An4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_016
	.byte		N12   , Dn4 , v112
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
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
	.byte	W48
@ 050   ----------------------------------------
@ 051   ----------------------------------------
mus_touhou5_stage1_boss_1_051:
	.byte		MOD   , 0
	.byte		N36   , Gs3 , v112
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 052   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_051
	.byte		MOD   , 0
	.byte		N06   , Cs4 , v112
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 054   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 055   ----------------------------------------
mus_touhou5_stage1_boss_1_055:
	.byte		MOD   , 0
	.byte		N36   , Ds4 , v112
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 056   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 057   ----------------------------------------
mus_touhou5_stage1_boss_1_057:
	.byte		MOD   , 0
	.byte		N36   , Gs4 , v112
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 058   ----------------------------------------
mus_touhou5_stage1_boss_1_058:
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Gs4 , v112
	.byte	W12
	.byte	PEND
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_051
	.byte		MOD   , 0
	.byte		N12   , Ds4 , v112
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 060   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_051
	.byte		MOD   , 0
	.byte		N06   , Cs4 , v112
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 062   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_055
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v112
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 064   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_057
	.byte		MOD   , 0
	.byte		N06   , As4 , v112
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_058
	.byte		N12   , Cs4 , v112
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_051
	.byte		MOD   , 0
	.byte		N12   , Ds4 , v112
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 068   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_051
	.byte		MOD   , 0
	.byte		N06   , Cs4 , v112
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 070   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_055
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v112
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 072   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_057
	.byte		MOD   , 0
	.byte		N06   , As4 , v112
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_058
	.byte		N12   , Cs4 , v112
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_051
	.byte		MOD   , 0
	.byte		N12   , Ds4 , v112
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 076   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_051
	.byte		MOD   , 0
	.byte		N06   , Cs4 , v112
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 078   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_055
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v112
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 080   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_057
	.byte		MOD   , 0
	.byte		N06   , As4 , v112
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_1_058
	.byte		N12   , Cs4 , v112
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 083   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_touhou5_stage1_boss_2:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 56
	.byte		MOD   , 0
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
@ 007   ----------------------------------------
	.byte		MOD   , 0
	.byte		N24   , Bn2 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        0
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        0
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 008   ----------------------------------------
@ 009   ----------------------------------------
mus_touhou5_stage1_boss_2_009:
	.byte		MOD   , 0
	.byte		N36   , En3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N12   , An3 
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , En3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 010   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_009
	.byte		MOD   , 0
	.byte		N06   , Gn3 , v076
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 012   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 013   ----------------------------------------
mus_touhou5_stage1_boss_2_013:
	.byte		MOD   , 0
	.byte		N36   , Cn4 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Cn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 014   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 015   ----------------------------------------
mus_touhou5_stage1_boss_2_015:
	.byte		MOD   , 0
	.byte		N36   , En4 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , An4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 016   ----------------------------------------
mus_touhou5_stage1_boss_2_016:
	.byte		MOD   , 0
	.byte		N72   , An3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W42
	.byte	PEND
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_009
	.byte		MOD   , 0
	.byte		N12   , An3 , v076
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , En3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 018   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_009
	.byte		MOD   , 0
	.byte		N06   , Gn3 , v076
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 020   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_013
	.byte		MOD   , 0
	.byte		N06   , En4 , v076
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Cn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 022   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_015
	.byte		MOD   , 0
	.byte		N06   , An4 , v076
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_016
	.byte		MOD   , 0
	.byte		N24   , Gn3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_009
	.byte		MOD   , 0
	.byte		N12   , An3 , v076
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , En3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 026   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_009
	.byte		MOD   , 0
	.byte		N06   , Gn3 , v076
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 028   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_013
	.byte		MOD   , 0
	.byte		N06   , En4 , v076
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Cn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 030   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_015
	.byte		MOD   , 0
	.byte		N06   , An4 , v076
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_016
	.byte		MOD   , 0
	.byte		N24   , Gn3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 033   ----------------------------------------
	.byte		        0
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
	.byte	W48
@ 050   ----------------------------------------
@ 051   ----------------------------------------
mus_touhou5_stage1_boss_2_051:
	.byte		MOD   , 0
	.byte		N36   , Ds3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N12   , Gs3 
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Ds3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 052   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_051
	.byte		MOD   , 0
	.byte		N06   , Fs3 , v076
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 054   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 055   ----------------------------------------
mus_touhou5_stage1_boss_2_055:
	.byte		MOD   , 0
	.byte		N36   , Bn3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Bn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 056   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 057   ----------------------------------------
mus_touhou5_stage1_boss_2_057:
	.byte		MOD   , 0
	.byte		N36   , Ds4 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 058   ----------------------------------------
mus_touhou5_stage1_boss_2_058:
	.byte		MOD   , 0
	.byte		N72   , Gs3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W42
	.byte	PEND
	.byte		        0
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_051
	.byte		MOD   , 0
	.byte		N12   , Gs3 , v076
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Ds3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 060   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_051
	.byte		MOD   , 0
	.byte		N06   , Fs3 , v076
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 062   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_055
	.byte		MOD   , 0
	.byte		N06   , Ds4 , v076
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Bn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 064   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_057
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_058
	.byte		MOD   , 0
	.byte		N24   , As3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_051
	.byte		MOD   , 0
	.byte		N12   , Gs3 , v076
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Ds3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 068   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_051
	.byte		MOD   , 0
	.byte		N06   , Fs3 , v076
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 070   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_055
	.byte		MOD   , 0
	.byte		N06   , Ds4 , v076
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Bn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 072   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_057
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_058
	.byte		MOD   , 0
	.byte		N24   , As3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_051
	.byte		MOD   , 0
	.byte		N12   , Gs3 , v076
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Ds3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 076   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_051
	.byte		MOD   , 0
	.byte		N06   , Fs3 , v076
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 078   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_055
	.byte		MOD   , 0
	.byte		N06   , Ds4 , v076
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Bn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 080   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_057
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_2_058
	.byte		MOD   , 0
	.byte		N24   , As3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 083   ----------------------------------------
	.byte		        0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_touhou5_stage1_boss_3:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N96   , An2 , v076
	.byte		N96   , En3 
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Bn2 
	.byte		N96   , Gs3 
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , An3 
	.byte	W96
@ 003   ----------------------------------------
@ 004   ----------------------------------------
	.byte		N48   , Dn3 
	.byte		N48   , Bn3 
	.byte	W48
@ 005   ----------------------------------------
	.byte		N24   , Cn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Bn3 
	.byte	W24
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
@ 008   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , En4 
	.byte	W24
@ 009   ----------------------------------------
@ 010   ----------------------------------------
	.byte		TIE   , An3 
	.byte		TIE   , En4 
	.byte	W96
@ 011   ----------------------------------------
	.byte	W72
	.byte		EOT   , An3 
	.byte		        En4 
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte	W24
@ 012   ----------------------------------------
	.byte		TIE   , Fn3 
	.byte		TIE   , Cn4 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn3 
	.byte		        Cn4 
@ 014   ----------------------------------------
	.byte		TIE   , En4 
	.byte		TIE   , An4 
	.byte	W96
@ 015   ----------------------------------------
	.byte	W72
	.byte		EOT   , En4 
	.byte		        An4 
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
@ 016   ----------------------------------------
	.byte		TIE   , Cn4 
	.byte		TIE   , Fn4 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        Fn4 
@ 018   ----------------------------------------
mus_touhou5_stage1_boss_3_018:
	.byte		TIE   , An3 , v076
	.byte		TIE   , Cn4 
	.byte	W96
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W72
	.byte		EOT   , An3 
	.byte		        Cn4 
	.byte		N24   , Gn3 
	.byte		N24   , Bn3 
	.byte	W24
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_018
@ 021   ----------------------------------------
	.byte	W96
	.byte		EOT   , An3 
	.byte		        Cn4 
@ 022   ----------------------------------------
mus_touhou5_stage1_boss_3_022:
	.byte		TIE   , Cn4 , v076
	.byte		TIE   , An4 
	.byte	W96
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W72
	.byte		EOT   , Cn4 
	.byte		        An4 
	.byte		N24   , Bn3 
	.byte		N24   , Gn4 
	.byte	W24
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_022
@ 025   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        An4 
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_018
@ 027   ----------------------------------------
	.byte	W72
	.byte		EOT   , An3 
	.byte		        Cn4 
	.byte		N24   , Gn3 , v076
	.byte		N24   , Bn3 
	.byte	W24
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_018
@ 029   ----------------------------------------
	.byte	W96
	.byte		EOT   , An3 
	.byte		        Cn4 
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_022
@ 031   ----------------------------------------
	.byte	W72
	.byte		EOT   , Cn4 
	.byte		        An4 
	.byte		N24   , Bn3 , v076
	.byte		N24   , Gn4 
	.byte	W24
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_022
@ 033   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte		        An4 
@ 034   ----------------------------------------
mus_touhou5_stage1_boss_3_034:
	.byte		TIE   , Fn3 , v076
	.byte		TIE   , Cs4 
	.byte	W96
	.byte	PEND
@ 035   ----------------------------------------
	.byte	W72
	.byte		EOT   , Fn3 
	.byte		        Cs4 
	.byte		N24   , Ds3 
	.byte		N24   , Cn4 
	.byte	W24
@ 036   ----------------------------------------
mus_touhou5_stage1_boss_3_036:
	.byte		TIE   , Cs3 , v076
	.byte		TIE   , As3 
	.byte	W96
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        As3 
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_034
@ 039   ----------------------------------------
	.byte	W72
	.byte		EOT   , Fn3 
	.byte		        Cs4 
	.byte		N24   , Ds3 , v076
	.byte		N24   , Cn4 
	.byte	W24
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_036
@ 041   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        As3 
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_034
@ 043   ----------------------------------------
	.byte	W72
	.byte		EOT   , Fn3 
	.byte		        Cs4 
	.byte		N24   , Ds3 , v076
	.byte		N24   , Cn4 
	.byte	W24
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_036
@ 045   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        As3 
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_034
@ 047   ----------------------------------------
	.byte	W72
	.byte		EOT   , Fn3 
	.byte		        Cs4 
	.byte		N24   , Ds3 , v076
	.byte		N24   , Cn4 
	.byte	W24
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_036
@ 049   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        As3 
@ 050   ----------------------------------------
	.byte	W48
@ 051   ----------------------------------------
@ 052   ----------------------------------------
	.byte		TIE   , Gs3 , v076
	.byte		TIE   , Ds4 
	.byte	W96
@ 053   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gs3 
	.byte		        Ds4 
	.byte		N24   , Fs3 
	.byte		N24   , Cs4 
	.byte	W24
@ 054   ----------------------------------------
	.byte		TIE   , En3 
	.byte		TIE   , Bn3 
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
	.byte		EOT   , En3 
	.byte		        Bn3 
@ 056   ----------------------------------------
	.byte		TIE   , Ds4 
	.byte		TIE   , Gs4 
	.byte	W96
@ 057   ----------------------------------------
	.byte	W72
	.byte		EOT   , Ds4 
	.byte		        Gs4 
	.byte		N24   , Cs4 
	.byte		N24   , Fs4 
	.byte	W24
@ 058   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte		TIE   , En4 
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn3 
	.byte		        En4 
@ 060   ----------------------------------------
mus_touhou5_stage1_boss_3_060:
	.byte		TIE   , Bn3 , v076
	.byte		TIE   , Ds4 
	.byte	W96
	.byte	PEND
@ 061   ----------------------------------------
	.byte	W72
	.byte		EOT   , Bn3 
	.byte		        Ds4 
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W24
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_060
@ 063   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn3 
	.byte		        Ds4 
@ 064   ----------------------------------------
mus_touhou5_stage1_boss_3_064:
	.byte		TIE   , Ds4 , v076
	.byte		TIE   , Bn4 
	.byte	W96
	.byte	PEND
@ 065   ----------------------------------------
	.byte	W72
	.byte		EOT   , Ds4 
	.byte		        Bn4 
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_064
@ 067   ----------------------------------------
	.byte	W96
	.byte		EOT   , Ds4 
	.byte		        Bn4 
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_060
@ 069   ----------------------------------------
	.byte	W72
	.byte		EOT   , Bn3 
	.byte		        Ds4 
	.byte		N24   , As3 , v076
	.byte		N24   , Cs4 
	.byte	W24
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_060
@ 071   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn3 
	.byte		        Ds4 
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_064
@ 073   ----------------------------------------
	.byte	W72
	.byte		EOT   , Ds4 
	.byte		        Bn4 
	.byte		N24   , Cs4 , v076
	.byte		N24   , As4 
	.byte	W24
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_064
@ 075   ----------------------------------------
	.byte	W96
	.byte		EOT   , Ds4 
	.byte		        Bn4 
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_060
@ 077   ----------------------------------------
	.byte	W72
	.byte		EOT   , Bn3 
	.byte		        Ds4 
	.byte		N24   , As3 , v076
	.byte		N24   , Cs4 
	.byte	W24
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_060
@ 079   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn3 
	.byte		        Ds4 
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_064
@ 081   ----------------------------------------
	.byte	W72
	.byte		EOT   , Ds4 
	.byte		        Bn4 
	.byte		N24   , Cs4 , v076
	.byte		N24   , As4 
	.byte	W24
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_3_064
@ 083   ----------------------------------------
	.byte	W96
	.byte		EOT   , Ds4 
	.byte		        Bn4 
@ 084   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_touhou5_stage1_boss_4:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 50
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte		N96   , Dn2 , v068
	.byte		N96   , An2 
	.byte	W96
@ 001   ----------------------------------------
	.byte		        En2 
	.byte		N96   , Bn2 
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cn3 
	.byte	W96
@ 003   ----------------------------------------
@ 004   ----------------------------------------
	.byte		        Gn2 
	.byte		N96   , Dn3 
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
@ 008   ----------------------------------------
	.byte		N24   , En1 
	.byte		N24   , Bn1 
	.byte	W24
	.byte		        Gs1 
	.byte		N24   , Dn2 
	.byte	W24
	.byte		        Bn1 
	.byte		N24   , En2 
	.byte	W24
@ 009   ----------------------------------------
@ 010   ----------------------------------------
mus_touhou5_stage1_boss_4_010:
	.byte		TIE   , An1 , v068
	.byte		TIE   , En2 
	.byte	W96
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W72
	.byte		EOT   , An1 
	.byte		        En2 
	.byte		N24   , Gn1 
	.byte		N24   , Dn2 
	.byte	W24
@ 012   ----------------------------------------
mus_touhou5_stage1_boss_4_012:
	.byte		TIE   , Fn1 , v068
	.byte		TIE   , Cn2 
	.byte	W96
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Cn2 
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_010
@ 015   ----------------------------------------
	.byte	W72
	.byte		EOT   , An1 
	.byte		        En2 
	.byte		N24   , Gn1 , v068
	.byte		N24   , Dn2 
	.byte	W24
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_012
@ 017   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Cn2 
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_010
@ 019   ----------------------------------------
	.byte	W72
	.byte		EOT   , An1 
	.byte		        En2 
	.byte		N24   , Gn1 , v068
	.byte		N24   , Dn2 
	.byte	W24
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_012
@ 021   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Cn2 
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_010
@ 023   ----------------------------------------
	.byte	W72
	.byte		EOT   , An1 
	.byte		        En2 
	.byte		N24   , Gn1 , v068
	.byte		N24   , Dn2 
	.byte	W24
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_012
@ 025   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Cn2 
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_010
@ 027   ----------------------------------------
	.byte	W72
	.byte		EOT   , An1 
	.byte		        En2 
	.byte		N24   , Gn1 , v068
	.byte		N24   , Dn2 
	.byte	W24
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_012
@ 029   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Cn2 
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_010
@ 031   ----------------------------------------
	.byte	W72
	.byte		EOT   , An1 
	.byte		        En2 
	.byte		N24   , Gn1 , v068
	.byte		N24   , Dn2 
	.byte	W24
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_012
@ 033   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Cn2 
@ 034   ----------------------------------------
mus_touhou5_stage1_boss_4_034:
	.byte		TIE   , As1 , v068
	.byte		TIE   , Fn2 
	.byte	W96
	.byte	PEND
@ 035   ----------------------------------------
	.byte	W72
	.byte		EOT   , As1 
	.byte		        Fn2 
	.byte		N24   , Gs1 
	.byte		N24   , Ds2 
	.byte	W24
@ 036   ----------------------------------------
mus_touhou5_stage1_boss_4_036:
	.byte		TIE   , Fs1 , v068
	.byte		TIE   , Cs2 
	.byte	W96
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Cs2 
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_034
@ 039   ----------------------------------------
	.byte	W72
	.byte		EOT   , As1 
	.byte		        Fn2 
	.byte		N24   , Gs1 , v068
	.byte		N24   , Ds2 
	.byte	W24
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_036
@ 041   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Cs2 
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_034
@ 043   ----------------------------------------
	.byte	W72
	.byte		EOT   , As1 
	.byte		        Fn2 
	.byte		N24   , Gs1 , v068
	.byte		N24   , Ds2 
	.byte	W24
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_036
@ 045   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Cs2 
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_034
@ 047   ----------------------------------------
	.byte	W72
	.byte		EOT   , As1 
	.byte		        Fn2 
	.byte		N24   , Gs1 , v068
	.byte		N24   , Ds2 
	.byte	W24
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_036
@ 049   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs1 
	.byte		        Cs2 
@ 050   ----------------------------------------
	.byte	W48
@ 051   ----------------------------------------
@ 052   ----------------------------------------
mus_touhou5_stage1_boss_4_052:
	.byte		TIE   , Gs1 , v068
	.byte		TIE   , Ds2 
	.byte	W96
	.byte	PEND
@ 053   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		N24   , Fs1 
	.byte		N24   , Cs2 
	.byte	W24
@ 054   ----------------------------------------
mus_touhou5_stage1_boss_4_054:
	.byte		TIE   , En1 , v068
	.byte		TIE   , Bn1 
	.byte	W96
	.byte	PEND
@ 055   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Bn1 
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_052
@ 057   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		N24   , Fs1 , v068
	.byte		N24   , Cs2 
	.byte	W24
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_054
@ 059   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Bn1 
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_052
@ 061   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		N24   , Fs1 , v068
	.byte		N24   , Cs2 
	.byte	W24
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_054
@ 063   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Bn1 
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_052
@ 065   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		N24   , Fs1 , v068
	.byte		N24   , Cs2 
	.byte	W24
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_054
@ 067   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Bn1 
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_052
@ 069   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		N24   , Fs1 , v068
	.byte		N24   , Cs2 
	.byte	W24
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_054
@ 071   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Bn1 
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_052
@ 073   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		N24   , Fs1 , v068
	.byte		N24   , Cs2 
	.byte	W24
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_054
@ 075   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Bn1 
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_052
@ 077   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		N24   , Fs1 , v068
	.byte		N24   , Cs2 
	.byte	W24
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_054
@ 079   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Bn1 
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_052
@ 081   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		N24   , Fs1 , v068
	.byte		N24   , Cs2 
	.byte	W24
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_4_054
@ 083   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Bn1 
@ 084   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_touhou5_stage1_boss_5:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 34
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N96   , An1 , v100
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Cn2 
	.byte	W96
@ 003   ----------------------------------------
@ 004   ----------------------------------------
	.byte		N48   , Dn2 
	.byte	W48
@ 005   ----------------------------------------
	.byte		N24   , Cn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
@ 006   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   , En2 
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
@ 007   ----------------------------------------
@ 008   ----------------------------------------
	.byte		        c_v+0
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
@ 009   ----------------------------------------
@ 010   ----------------------------------------
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
	.byte		N06   
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
@ 011   ----------------------------------------
	.byte		N06   
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 012   ----------------------------------------
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
	.byte		N06   
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
@ 013   ----------------------------------------
	.byte		N06   
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
	.byte		N06   
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
@ 014   ----------------------------------------
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
	.byte		N06   
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
@ 015   ----------------------------------------
	.byte		N06   
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 017   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 018   ----------------------------------------
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
	.byte		N06   
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
@ 019   ----------------------------------------
	.byte		N06   
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 020   ----------------------------------------
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
	.byte		N06   
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
@ 021   ----------------------------------------
	.byte		N06   
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
	.byte		N06   
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
@ 022   ----------------------------------------
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
	.byte		N06   
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
@ 023   ----------------------------------------
	.byte		N06   
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 024   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 025   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 026   ----------------------------------------
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
	.byte		N06   
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
@ 027   ----------------------------------------
	.byte		N06   
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 028   ----------------------------------------
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
	.byte		N06   
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
@ 029   ----------------------------------------
	.byte		N06   
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
	.byte		N06   
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
@ 030   ----------------------------------------
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
	.byte		N06   
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
@ 031   ----------------------------------------
	.byte		N06   
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 032   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 033   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
@ 036   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 037   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 038   ----------------------------------------
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
@ 039   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
@ 040   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 041   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 042   ----------------------------------------
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
@ 043   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 045   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 046   ----------------------------------------
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
@ 047   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
@ 048   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 049   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 050   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   , Ds2 
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
@ 051   ----------------------------------------
@ 052   ----------------------------------------
	.byte		        c_v+0
	.byte		N06   , Gs1 
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
@ 053   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 054   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 055   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 056   ----------------------------------------
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
@ 057   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 059   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 060   ----------------------------------------
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
@ 061   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 063   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 064   ----------------------------------------
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
@ 065   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 067   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 068   ----------------------------------------
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
@ 069   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 070   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 071   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 072   ----------------------------------------
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
@ 073   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 075   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 076   ----------------------------------------
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
@ 077   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 078   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 079   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 080   ----------------------------------------
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
@ 081   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 082   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 083   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 084   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_touhou5_stage1_boss_6:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N06   , An3 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 003   ----------------------------------------
@ 004   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
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
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 018   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 019   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 021   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 022   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 023   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 024   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 025   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 026   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 029   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 030   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 032   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 033   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 034   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 035   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 036   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 037   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 038   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 039   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 040   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 041   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 042   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 043   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 047   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 048   ----------------------------------------
	.byte	W48
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
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 059   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 060   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 065   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 070   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 075   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 076   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 077   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 078   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 079   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 080   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_touhou5_stage1_boss_7:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W72
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
	.byte		N06   , En4 , v088
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 021   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 022   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 029   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 030   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 036   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 037   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 038   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 047   ----------------------------------------
	.byte	W48
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
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 070   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 077   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 078   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 079   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 080   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_touhou5_stage1_boss_8:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		        16
	.byte		        16
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , En1 , v088
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
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
	.byte		        En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 001   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
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
@ 002   ----------------------------------------
mus_touhou5_stage1_boss_8_002:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	PEND
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 003   ----------------------------------------
@ 004   ----------------------------------------
	.byte		        Cn1 , v088
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
@ 005   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , En1 , v056
	.byte		N03   , Fs1 , v076
	.byte		N03   , Dn2 , v068
	.byte	W03
	.byte		        En1 , v060
	.byte		N03   , Dn2 , v068
	.byte	W03
	.byte		        En1 , v060
	.byte		N03   , Dn2 , v068
	.byte	W03
	.byte		        En1 , v064
	.byte		N03   , Dn2 , v068
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        En1 , v072
	.byte		N03   , Cn2 , v068
	.byte	W03
	.byte		        En1 , v076
	.byte		N03   , Cn2 , v068
	.byte	W03
	.byte		        En1 , v076
	.byte		N03   , Cn2 , v068
	.byte	W03
	.byte		        En1 , v080
	.byte		N03   , Bn1 , v068
	.byte	W03
	.byte		        En1 , v084
	.byte		N03   , Bn1 , v068
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , Bn1 , v068
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , Bn1 , v068
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte		N03   , An1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte		N03   , An1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
@ 006   ----------------------------------------
	.byte		        Cn1 , v088
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
@ 007   ----------------------------------------
@ 008   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 009   ----------------------------------------
@ 010   ----------------------------------------
mus_touhou5_stage1_boss_8_010:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte		N03   , Cs2 , v088
	.byte	W03
	.byte	PEND
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte	W03
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte	W03
@ 018   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 019   ----------------------------------------
	.byte	W48
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
@ 020   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 021   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Dn1 , v056
	.byte	W03
	.byte		        Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v064
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
@ 022   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W68
	.byte	W01
	.byte		        Cn1 
	.byte	W03
	.byte	W21
@ 023   ----------------------------------------
	.byte	W72
	.byte		N03   
	.byte	W03
	.byte	W21
@ 024   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W21
@ 025   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_010
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte	W03
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte	W03
@ 034   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 035   ----------------------------------------
	.byte	W48
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
@ 036   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 037   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Dn1 , v056
	.byte	W03
	.byte		        Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v064
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
@ 038   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W68
	.byte	W01
	.byte		        Cn1 
	.byte	W03
	.byte	W21
@ 039   ----------------------------------------
	.byte	W72
	.byte		N03   
	.byte	W03
	.byte	W21
@ 040   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W21
@ 041   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte		N03   , Dn2 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Cn2 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , En1 
	.byte		N03   , Bn1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , En1 
	.byte		N03   , An1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , En1 
	.byte		N03   , An1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_010
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 050   ----------------------------------------
@ 051   ----------------------------------------
	.byte		        Dn2 , v068
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
	.byte		        Bn1 
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
@ 052   ----------------------------------------
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_010
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_010
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte	W03
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte	W03
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_010
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W09
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_010
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte	W03
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_010
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_002
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_010
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_8_010
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte		N03   , Cs2 , v088
	.byte	W03
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte		N03   , Cs2 , v088
	.byte		N03   , Dn2 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte		N03   , Dn2 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , As1 , v076
	.byte		N03   , Cn2 , v068
	.byte		N03   , Cs2 , v088
	.byte	W03
	.byte		        Cn2 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte		N03   , Bn1 , v068
	.byte		N03   , Cs2 , v088
	.byte	W03
	.byte		        Bn1 , v068
	.byte	W03
	.byte		        Fs1 , v076
	.byte		N03   , Bn1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , An1 , v068
	.byte		N03   , Cs2 , v088
	.byte	W03
	.byte		        An1 , v068
	.byte	W03
	.byte		        En1 , v088
	.byte		N03   , An1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
@ 085   ----------------------------------------
	.byte	FINE

@**************** Track 9 (Midi-Chn.11) ****************@

mus_touhou5_stage1_boss_9:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 61
	.byte		MOD   , 0
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+18
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
@ 007   ----------------------------------------
	.byte		MOD   , 0
	.byte		N24   , En3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        0
	.byte		N24   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        0
	.byte		N24   , Bn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 008   ----------------------------------------
@ 009   ----------------------------------------
mus_touhou5_stage1_boss_9_009:
	.byte		MOD   , 0
	.byte		N36   , An3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N12   , En4 
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 010   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_009
	.byte		MOD   , 0
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 012   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 013   ----------------------------------------
mus_touhou5_stage1_boss_9_013:
	.byte		MOD   , 0
	.byte		N36   , En4 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 014   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 015   ----------------------------------------
mus_touhou5_stage1_boss_9_015:
	.byte		MOD   , 0
	.byte		N36   , An4 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , An4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 016   ----------------------------------------
mus_touhou5_stage1_boss_9_016:
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , An4 , v076
	.byte	W12
	.byte	PEND
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_009
	.byte		MOD   , 0
	.byte		N12   , En4 , v076
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 018   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_009
	.byte		MOD   , 0
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 020   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_013
	.byte		MOD   , 0
	.byte		N06   , An4 , v076
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 022   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_015
	.byte		MOD   , 0
	.byte		N06   , Bn4 , v076
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , An4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_016
	.byte		N12   , Dn4 , v076
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_009
	.byte		MOD   , 0
	.byte		N12   , En4 , v076
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 026   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_009
	.byte		MOD   , 0
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 028   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_013
	.byte		MOD   , 0
	.byte		N06   , An4 , v076
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 030   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_015
	.byte		MOD   , 0
	.byte		N06   , Bn4 , v076
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , An4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_016
	.byte		N12   , Dn4 , v076
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
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
	.byte	W48
@ 050   ----------------------------------------
@ 051   ----------------------------------------
mus_touhou5_stage1_boss_9_051:
	.byte		MOD   , 0
	.byte		N36   , Gs3 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 052   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_051
	.byte		MOD   , 0
	.byte		N06   , Cs4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 054   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 055   ----------------------------------------
mus_touhou5_stage1_boss_9_055:
	.byte		MOD   , 0
	.byte		N36   , Ds4 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 056   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 057   ----------------------------------------
mus_touhou5_stage1_boss_9_057:
	.byte		MOD   , 0
	.byte		N36   , Gs4 , v076
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 058   ----------------------------------------
mus_touhou5_stage1_boss_9_058:
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Gs4 , v076
	.byte	W12
	.byte	PEND
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_051
	.byte		MOD   , 0
	.byte		N12   , Ds4 , v076
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 060   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_051
	.byte		MOD   , 0
	.byte		N06   , Cs4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 062   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_055
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 064   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_057
	.byte		MOD   , 0
	.byte		N06   , As4 , v076
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_058
	.byte		N12   , Cs4 , v076
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_051
	.byte		MOD   , 0
	.byte		N12   , Ds4 , v076
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 068   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_051
	.byte		MOD   , 0
	.byte		N06   , Cs4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 070   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_055
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 072   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_057
	.byte		MOD   , 0
	.byte		N06   , As4 , v076
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_058
	.byte		N12   , Cs4 , v076
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_051
	.byte		MOD   , 0
	.byte		N12   , Ds4 , v076
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 076   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_051
	.byte		MOD   , 0
	.byte		N06   , Cs4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 078   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_055
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v076
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 080   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_057
	.byte		MOD   , 0
	.byte		N06   , As4 , v076
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_9_058
	.byte		N12   , Cs4 , v076
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 083   ----------------------------------------
	.byte	FINE

@**************** Track 10 (Midi-Chn.12) ****************@

mus_touhou5_stage1_boss_10:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 61
	.byte		MOD   , 0
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
@ 007   ----------------------------------------
	.byte		MOD   , 0
	.byte		N24   , Bn2 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        0
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        0
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 008   ----------------------------------------
@ 009   ----------------------------------------
mus_touhou5_stage1_boss_10_009:
	.byte		MOD   , 0
	.byte		N36   , En3 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N12   , An3 
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , En3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 010   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_009
	.byte		MOD   , 0
	.byte		N06   , Gn3 , v064
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 012   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 013   ----------------------------------------
mus_touhou5_stage1_boss_10_013:
	.byte		MOD   , 0
	.byte		N36   , Cn4 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Cn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 014   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 015   ----------------------------------------
mus_touhou5_stage1_boss_10_015:
	.byte		MOD   , 0
	.byte		N36   , En4 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , An4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 016   ----------------------------------------
mus_touhou5_stage1_boss_10_016:
	.byte		MOD   , 0
	.byte		N72   , An3 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W42
	.byte	PEND
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_009
	.byte		MOD   , 0
	.byte		N12   , An3 , v064
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , En3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 018   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_009
	.byte		MOD   , 0
	.byte		N06   , Gn3 , v064
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 020   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_013
	.byte		MOD   , 0
	.byte		N06   , En4 , v064
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Cn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 022   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_015
	.byte		MOD   , 0
	.byte		N06   , An4 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_016
	.byte		MOD   , 0
	.byte		N24   , Gn3 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_009
	.byte		MOD   , 0
	.byte		N12   , An3 , v064
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , En3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 026   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_009
	.byte		MOD   , 0
	.byte		N06   , Gn3 , v064
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 028   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_013
	.byte		MOD   , 0
	.byte		N06   , En4 , v064
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Cn4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 030   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_015
	.byte		MOD   , 0
	.byte		N06   , An4 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_016
	.byte		MOD   , 0
	.byte		N24   , Gn3 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 033   ----------------------------------------
	.byte		        0
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
	.byte	W48
@ 050   ----------------------------------------
@ 051   ----------------------------------------
mus_touhou5_stage1_boss_10_051:
	.byte		MOD   , 0
	.byte		N36   , Ds3 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N12   , Gs3 
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Ds3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 052   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_051
	.byte		MOD   , 0
	.byte		N06   , Fs3 , v064
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 054   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 055   ----------------------------------------
mus_touhou5_stage1_boss_10_055:
	.byte		MOD   , 0
	.byte		N36   , Bn3 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Bn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 056   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 057   ----------------------------------------
mus_touhou5_stage1_boss_10_057:
	.byte		MOD   , 0
	.byte		N36   , Ds4 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 058   ----------------------------------------
mus_touhou5_stage1_boss_10_058:
	.byte		MOD   , 0
	.byte		N72   , Gs3 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W42
	.byte	PEND
	.byte		        0
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_051
	.byte		MOD   , 0
	.byte		N12   , Gs3 , v064
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Ds3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 060   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_051
	.byte		MOD   , 0
	.byte		N06   , Fs3 , v064
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 062   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_055
	.byte		MOD   , 0
	.byte		N06   , Ds4 , v064
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Bn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 064   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_057
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_058
	.byte		MOD   , 0
	.byte		N24   , As3 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_051
	.byte		MOD   , 0
	.byte		N12   , Gs3 , v064
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Ds3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 068   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_051
	.byte		MOD   , 0
	.byte		N06   , Fs3 , v064
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 070   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_055
	.byte		MOD   , 0
	.byte		N06   , Ds4 , v064
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Bn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 072   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_057
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_058
	.byte		MOD   , 0
	.byte		N24   , As3 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_051
	.byte		MOD   , 0
	.byte		N12   , Gs3 , v064
	.byte	W12
	.byte		MOD   , 0
	.byte		TIE   , Ds3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 076   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_051
	.byte		MOD   , 0
	.byte		N06   , Fs3 , v064
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 078   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_055
	.byte		MOD   , 0
	.byte		N06   , Ds4 , v064
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		MOD   , 0
	.byte		TIE   , Bn3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 080   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_057
	.byte		MOD   , 0
	.byte		N06   , Gs4 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		MOD   , 0
	.byte		N48   , Ds4 
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W18
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage1_boss_10_058
	.byte		MOD   , 0
	.byte		N24   , As3 , v064
	.byte	W12
	.byte		MOD   , 32
	.byte	W06
	.byte		        64
	.byte	W06
@ 083   ----------------------------------------
	.byte		        0
	.byte	FINE

@**************** Track 11 (Midi-Chn.13) ****************@

mus_touhou5_stage1_boss_11:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 15
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N06   , An3 , v076
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 003   ----------------------------------------
@ 004   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
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
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 018   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 019   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 021   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 022   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 023   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 024   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 025   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 026   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 029   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 030   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 032   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 033   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 034   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 035   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 036   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 037   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 038   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 039   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 040   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 041   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 042   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 043   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 047   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 048   ----------------------------------------
	.byte	W48
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
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 059   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 060   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 065   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 070   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 075   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 076   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 077   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 078   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 079   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 080   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 12 (Midi-Chn.14) ****************@

mus_touhou5_stage1_boss_12:
	.byte	KEYSH , mus_touhou5_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 15
	.byte		VOL   , 127*mus_touhou5_stage1_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W72
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
	.byte		N06   , En4 , v076
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 021   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 022   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 029   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 030   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 036   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 037   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 038   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 047   ----------------------------------------
	.byte	W48
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
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 070   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 077   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 078   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 079   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 080   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_touhou5_stage1_boss:
	.byte	12	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_touhou5_stage1_boss_pri	@ Priority
	.byte	mus_touhou5_stage1_boss_rev	@ Reverb.

	.word	mus_touhou5_stage1_boss_grp

	.word	mus_touhou5_stage1_boss_1
	.word	mus_touhou5_stage1_boss_2
	.word	mus_touhou5_stage1_boss_3
	.word	mus_touhou5_stage1_boss_4
	.word	mus_touhou5_stage1_boss_5
	.word	mus_touhou5_stage1_boss_6
	.word	mus_touhou5_stage1_boss_7
	.word	mus_touhou5_stage1_boss_8
	.word	mus_touhou5_stage1_boss_9
	.word	mus_touhou5_stage1_boss_10
	.word	mus_touhou5_stage1_boss_11
	.word	mus_touhou5_stage1_boss_12

	.end
