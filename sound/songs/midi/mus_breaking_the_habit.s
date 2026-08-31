	.include "MPlayDef.s"

	.equ	mus_breaking_the_habit_grp, voicegroup_hlw_rock_metal
	.equ	mus_breaking_the_habit_pri, 0
	.equ	mus_breaking_the_habit_rev, reverb_set+38
	.equ	mus_breaking_the_habit_mvl, 98
	.equ	mus_breaking_the_habit_key, 0
	.equ	mus_breaking_the_habit_tbs, 1
	.equ	mus_breaking_the_habit_exg, 1
	.equ	mus_breaking_the_habit_cmp, 1

	.section .rodata
	.global	mus_breaking_the_habit
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_breaking_the_habit_1:
	.byte	KEYSH , mus_breaking_the_habit_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 105*mus_breaking_the_habit_tbs/2
	.byte		VOICE , 48
	.byte		VOL   , 82*mus_breaking_the_habit_mvl/mxv
	.byte		N12   , En3 , v060
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 002   ----------------------------------------
mus_breaking_the_habit_1_002:
	.byte		N12   , En3 , v060
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 004   ----------------------------------------
	.byte		N12   , En3 , v060
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_1_002
@ 077   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_breaking_the_habit_2:
	.byte	KEYSH , mus_breaking_the_habit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 28
	.byte		VOL   , 112*mus_breaking_the_habit_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_breaking_the_habit_2_004:
	.byte		N12   , Bn2 , v088
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 020   ----------------------------------------
mus_breaking_the_habit_2_020:
	.byte		N12   , Bn2 , v088
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_004
@ 043   ----------------------------------------
	.byte		N12   , Bn2 , v088
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N06   
	.byte	W60
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_2_020
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_breaking_the_habit_3:
	.byte	KEYSH , mus_breaking_the_habit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 118*mus_breaking_the_habit_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_breaking_the_habit_3_004:
	.byte		N48   , En0 , v096
	.byte	W48
	.byte		        Cn1 
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N96   , Bn0 
	.byte	W96
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_004
@ 007   ----------------------------------------
	.byte		N96   , Bn0 , v096
	.byte	W96
@ 008   ----------------------------------------
mus_breaking_the_habit_3_008:
	.byte		N12   , En0 , v096
	.byte	W90
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_008
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_008
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_008
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_008
@ 015   ----------------------------------------
	.byte		N12   , En0 , v096
	.byte	W72
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
@ 016   ----------------------------------------
	.byte		N12   , Cn1 
	.byte	W96
@ 017   ----------------------------------------
mus_breaking_the_habit_3_017:
	.byte		N12   , Cn1 , v096
	.byte	W78
	.byte		N06   
	.byte	W18
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_017
@ 019   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte	W30
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W48
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_004
@ 021   ----------------------------------------
	.byte		N96   , Bn0 , v096
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_004
@ 023   ----------------------------------------
	.byte		N96   , Bn0 , v096
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_004
@ 025   ----------------------------------------
	.byte		N96   , Bn0 , v096
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
mus_breaking_the_habit_3_032:
	.byte		N48   , En0 , v096
	.byte	W48
	.byte		        Dn0 
	.byte	W48
	.byte	PEND
@ 033   ----------------------------------------
mus_breaking_the_habit_3_033:
	.byte		N24   , En0 , v096
	.byte	W72
	.byte		        Gn0 
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_032
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_033
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_032
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_032
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_033
@ 040   ----------------------------------------
mus_breaking_the_habit_3_040:
	.byte		N24   , Cn1 , v096
	.byte	W48
	.byte		        An0 
	.byte	W48
	.byte	PEND
@ 041   ----------------------------------------
	.byte		        Cn1 
	.byte	W72
	.byte		N24   
	.byte	W24
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_040
@ 043   ----------------------------------------
	.byte		N24   , Cn1 , v096
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_004
@ 045   ----------------------------------------
	.byte		N96   , Bn0 , v096
	.byte	W96
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_004
@ 047   ----------------------------------------
	.byte		N96   , Bn0 , v096
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_004
@ 049   ----------------------------------------
	.byte		N96   , Bn0 , v096
	.byte	W96
@ 050   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 052   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 053   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 054   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Fs0 
	.byte	W96
@ 056   ----------------------------------------
	.byte		        Gn0 
	.byte	W96
@ 057   ----------------------------------------
	.byte		        An0 
	.byte	W96
@ 058   ----------------------------------------
	.byte		        En0 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Fs0 
	.byte	W96
@ 060   ----------------------------------------
	.byte		        Gn0 
	.byte	W96
@ 061   ----------------------------------------
	.byte		        An0 
	.byte	W96
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_004
@ 063   ----------------------------------------
	.byte		N96   , Bn0 , v096
	.byte	W96
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_004
@ 065   ----------------------------------------
	.byte		N96   , Bn0 , v096
	.byte	W96
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_3_004
@ 067   ----------------------------------------
	.byte		N96   , Bn0 , v096
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 069   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 070   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 071   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 072   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 073   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.7) ****************@

mus_breaking_the_habit_4:
	.byte	KEYSH , mus_breaking_the_habit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 82*mus_breaking_the_habit_mvl/mxv
	.byte		N06   , En1 , v060
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W90
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
	.byte		N24   , Bn2 
	.byte	W84
@ 009   ----------------------------------------
	.byte		N48   , En3 
	.byte	W48
	.byte		        Bn3 
	.byte	W48
@ 010   ----------------------------------------
	.byte		N96   , Fs3 
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Gn3 
	.byte	W96
@ 012   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 013   ----------------------------------------
	.byte		N48   , En3 
	.byte	W48
	.byte		        Bn3 
	.byte	W48
@ 014   ----------------------------------------
	.byte		N96   , Fs3 
	.byte	W96
@ 015   ----------------------------------------
	.byte		        Gn3 
	.byte	W96
@ 016   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , An2 
	.byte		N96   , An3 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Gn2 
	.byte		N96   , Gn3 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fs2 
	.byte		N96   , Fs3 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , En2 
	.byte		N96   , En3 
	.byte	W96
@ 020   ----------------------------------------
mus_breaking_the_habit_4_020:
	.byte		N48   , Bn2 , v060
	.byte	W48
	.byte		        Dn3 
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
mus_breaking_the_habit_4_021:
	.byte		N24   , Gn3 , v060
	.byte	W48
	.byte		        Fs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W48
	.byte		        En3 
	.byte	W48
@ 023   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_4_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_4_021
@ 026   ----------------------------------------
	.byte		N96   , En2 , v060
	.byte		N96   , En3 
	.byte		N96   , En4 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Dn3 
	.byte		N96   , Gn4 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , En3 
	.byte		N96   , En4 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        Bn1 
	.byte		N96   , Dn3 
	.byte		N96   , Dn4 
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte	W84
@ 033   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		        Bn3 
	.byte	W48
@ 034   ----------------------------------------
	.byte		N96   , Fs3 
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Gn3 
	.byte	W96
@ 036   ----------------------------------------
	.byte		N24   , Bn2 
	.byte		N24   , Fs4 
	.byte	W96
@ 037   ----------------------------------------
	.byte		        En3 
	.byte		N24   
	.byte		N24   , En4 
	.byte	W48
	.byte		        Bn3 
	.byte	W48
@ 038   ----------------------------------------
	.byte		N96   , Fs3 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Gn3 
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Gn2 
	.byte		N96   , Dn3 
	.byte		N96   , Dn4 
	.byte	W96
@ 041   ----------------------------------------
	.byte		        Gn2 
	.byte		N96   , Cn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 042   ----------------------------------------
	.byte		        Gn2 
	.byte		N96   , Bn2 
	.byte		N96   , Bn4 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Gn2 
	.byte		N96   , En5 
	.byte	W96
@ 044   ----------------------------------------
mus_breaking_the_habit_4_044:
	.byte		N48   , Bn2 , v060
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte	PEND
@ 045   ----------------------------------------
mus_breaking_the_habit_4_045:
	.byte		N24   , Gn3 , v060
	.byte		N24   , Gn4 
	.byte	W48
	.byte		        Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
@ 046   ----------------------------------------
mus_breaking_the_habit_4_046:
	.byte		N48   , Bn2 , v060
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W48
	.byte	PEND
@ 047   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Dn4 
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_4_044
@ 049   ----------------------------------------
	.byte		N24   , Gn3 , v060
	.byte		N24   , Gn4 
	.byte	W48
	.byte		        Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Dn4 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N96   , En3 
	.byte		N96   , En4 
	.byte	W96
@ 051   ----------------------------------------
	.byte		N24   , Dn3 
	.byte		N24   , Gn4 
	.byte	W48
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 052   ----------------------------------------
	.byte		N96   , Cn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 053   ----------------------------------------
	.byte		        Bn2 
	.byte		N96   , Bn3 
	.byte	W96
@ 054   ----------------------------------------
	.byte		        En4 
	.byte		N96   , En5 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Fs4 
	.byte		N96   , Dn5 
	.byte	W96
@ 056   ----------------------------------------
mus_breaking_the_habit_4_056:
	.byte		N24   , Gn4 , v060
	.byte		N24   , Gn5 
	.byte	W72
	.byte		N12   , Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
	.byte		N96   , An3 
	.byte		N96   , Cn5 
	.byte	W96
@ 058   ----------------------------------------
	.byte		        En4 
	.byte		N96   , En5 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Fs4 
	.byte		N96   , Dn5 
	.byte	W96
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_4_056
@ 061   ----------------------------------------
	.byte		N48   , An4 , v060
	.byte		N48   , An5 
	.byte	W48
	.byte		        Fs4 
	.byte		N48   , Fs5 
	.byte	W48
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_4_044
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_4_045
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_4_046
@ 065   ----------------------------------------
	.byte		N48   , Dn3 , v060
	.byte		N48   , Dn4 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Bn2 
	.byte		N48   , Bn3 
	.byte		N48   , En5 
	.byte	W48
	.byte		        Dn3 
	.byte		N48   , Dn4 
	.byte	W48
@ 067   ----------------------------------------
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W48
	.byte		        En3 
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Dn4 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N96   , En3 
	.byte		N96   , En4 
	.byte		N96   , En5 
	.byte	W96
@ 069   ----------------------------------------
mus_breaking_the_habit_4_069:
	.byte		N24   , Dn3 , v060
	.byte		N24   , Dn4 
	.byte	W48
	.byte		        En3 
	.byte	W48
	.byte	PEND
@ 070   ----------------------------------------
	.byte		N96   
	.byte		N96   , En4 
	.byte		N96   , En5 
	.byte	W96
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_4_069
@ 072   ----------------------------------------
	.byte		N96   , Cn3 , v060
	.byte		N96   , Cn4 
	.byte		N96   , En5 
	.byte	W96
@ 073   ----------------------------------------
	.byte		N24   , Bn2 
	.byte		N24   , En3 
	.byte		N24   , Bn3 
	.byte	W48
	.byte		        An2 
	.byte		N24   , Dn4 
	.byte		N24   , En5 
	.byte	W48
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.9) ****************@

mus_breaking_the_habit_5:
	.byte	KEYSH , mus_breaking_the_habit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 112*mus_breaking_the_habit_mvl/mxv
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
mus_breaking_the_habit_5_008:
	.byte	W24
	.byte		N12   , Bn2 , v084
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W18
	.byte		N06   , En2 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
mus_breaking_the_habit_5_009:
	.byte	W36
	.byte		N12   , Dn2 , v084
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
	.byte	W36
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W18
	.byte		        Fs2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        En2 
	.byte	W78
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_009
@ 014   ----------------------------------------
	.byte	W36
	.byte		N12   , Dn2 , v084
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W78
@ 016   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W18
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W42
	.byte		        Gn2 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Dn3 
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W06
@ 019   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W18
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W36
	.byte		N12   
	.byte	W12
@ 020   ----------------------------------------
mus_breaking_the_habit_5_020:
	.byte		N12   , Gn3 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_breaking_the_habit_5_021:
	.byte		N12   , Gn3 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W42
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_breaking_the_habit_5_022:
	.byte		N12   , Gn3 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W18
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   
	.byte	W24
	.byte		N06   , Bn2 
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_breaking_the_habit_5_023:
	.byte		N12   , Gn3 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W42
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_breaking_the_habit_5_024:
	.byte		N12   , Gn3 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W18
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N12   
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
mus_breaking_the_habit_5_025:
	.byte		N12   , Gn3 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W36
	.byte		        Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_breaking_the_habit_5_026:
	.byte		N12   , Gn3 , v084
	.byte	W48
	.byte		        Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_breaking_the_habit_5_027:
	.byte		N12   , Gn3 , v084
	.byte	W48
	.byte		        Fs3 
	.byte	W36
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_026
@ 029   ----------------------------------------
mus_breaking_the_habit_5_029:
	.byte		N12   , Gn3 , v084
	.byte	W48
	.byte		        Fs3 
	.byte	W36
	.byte		N06   , En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W24
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W18
	.byte		N06   , En2 
	.byte	W06
@ 033   ----------------------------------------
mus_breaking_the_habit_5_033:
	.byte	W36
	.byte		N12   , Dn2 , v084
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , En2 
	.byte		N06   , En3 
	.byte	W06
	.byte	PEND
@ 034   ----------------------------------------
	.byte	W36
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W78
@ 036   ----------------------------------------
	.byte	W12
	.byte		N02   , Bn2 
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N12   
	.byte		N12   , Bn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        An2 
	.byte		N12   , An3 
	.byte	W18
	.byte		N06   , En2 
	.byte		N06   , En3 
	.byte	W06
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_033
@ 038   ----------------------------------------
	.byte	W36
	.byte		N12   , Dn2 , v084
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N12   , An2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W78
@ 040   ----------------------------------------
mus_breaking_the_habit_5_040:
	.byte		N06   , Dn3 , v084
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W18
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 041   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W48
	.byte		N06   , Gn2 
	.byte	W06
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_040
@ 043   ----------------------------------------
	.byte		N06   , Dn3 , v084
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W42
	.byte		        Dn3 
	.byte	W12
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_024
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_026
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_027
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_026
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_029
@ 054   ----------------------------------------
mus_breaking_the_habit_5_054:
	.byte	W36
	.byte		N12   , En3 , v084
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W18
	.byte	PEND
@ 055   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_054
@ 057   ----------------------------------------
	.byte		N96   , An3 , v084
	.byte	W96
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_054
@ 059   ----------------------------------------
	.byte		N96   , An3 , v084
	.byte	W96
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_054
@ 061   ----------------------------------------
	.byte		N48   , An3 , v084
	.byte	W48
	.byte		N12   , Fs3 
	.byte	W36
	.byte		        Dn3 
	.byte	W12
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_020
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_021
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_022
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_023
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_024
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_025
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_026
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_027
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_026
@ 071   ----------------------------------------
	.byte		N12   , Gn3 , v084
	.byte	W48
	.byte		        Fs3 
	.byte	W36
	.byte		        En3 
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Gn3 
	.byte	W48
	.byte		        An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_5_029
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.12) ****************@

mus_breaking_the_habit_6:
	.byte	KEYSH , mus_breaking_the_habit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 82*mus_breaking_the_habit_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_breaking_the_habit_6_004:
	.byte	W48
	.byte		N01   , Bn4 , v060
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W44
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
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
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_004
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
mus_breaking_the_habit_6_054:
	.byte		N96   , En1 , v060
	.byte		N96   , Bn1 
	.byte		N96   , En2 
	.byte	W96
	.byte	PEND
@ 055   ----------------------------------------
mus_breaking_the_habit_6_055:
	.byte		N96   , Fs1 , v060
	.byte		N96   , Cs2 
	.byte		N96   , Fs2 
	.byte	W96
	.byte	PEND
@ 056   ----------------------------------------
mus_breaking_the_habit_6_056:
	.byte		N96   , Gn1 , v060
	.byte		N96   , Dn2 
	.byte		N96   , Gn2 
	.byte	W96
	.byte	PEND
@ 057   ----------------------------------------
mus_breaking_the_habit_6_057:
	.byte		N96   , An1 , v060
	.byte		N96   , En2 
	.byte		N96   , An2 
	.byte	W96
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_054
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_055
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_056
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_057
@ 062   ----------------------------------------
mus_breaking_the_habit_6_062:
	.byte		N48   , En1 , v060
	.byte		N48   , Bn1 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gn2 
	.byte	W48
	.byte	PEND
@ 063   ----------------------------------------
	.byte		N96   , Bn1 
	.byte		N96   , Fs2 
	.byte	W96
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_062
@ 065   ----------------------------------------
	.byte		N96   , Bn1 , v060
	.byte		N96   , Fs2 
	.byte	W96
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_6_062
@ 067   ----------------------------------------
	.byte		N96   , Bn1 , v060
	.byte		N96   , Fs2 
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 069   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , An2 
	.byte	W96
@ 070   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 071   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , An2 
	.byte	W96
@ 072   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 073   ----------------------------------------
	.byte		        Bn1 
	.byte		N96   , Gn2 
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_breaking_the_habit_7:
	.byte	KEYSH , mus_breaking_the_habit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 120*mus_breaking_the_habit_mvl/mxv
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 001   ----------------------------------------
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
@ 002   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
@ 003   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 004   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 008   ----------------------------------------
mus_breaking_the_habit_7_008:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_008
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_008
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_008
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_008
@ 015   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W06
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
@ 017   ----------------------------------------
mus_breaking_the_habit_7_017:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W06
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_017
@ 019   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W48
@ 020   ----------------------------------------
mus_breaking_the_habit_7_020:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cs2 , v072
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_breaking_the_habit_7_021:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_021
@ 023   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_021
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_020
@ 027   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Cs2 , v072
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Bn1 , v080
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_021
@ 030   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 031   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
@ 032   ----------------------------------------
mus_breaking_the_habit_7_032:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 033   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N01   , Dn1 , v092
	.byte		N01   , Fs1 , v068
	.byte	W01
	.byte		        Dn1 , v092
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte		N01   , Fs1 , v068
	.byte	W02
	.byte		        Dn1 , v092
	.byte		N01   , Fs1 , v068
	.byte	W04
	.byte		N01   
	.byte	W02
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 034   ----------------------------------------
mus_breaking_the_habit_7_034:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 036   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N02   , Dn1 , v092
	.byte		N02   , Fs1 , v068
	.byte	W02
	.byte		        Dn1 , v092
	.byte		N02   , Fs1 , v068
	.byte	W02
	.byte		        Dn1 , v092
	.byte		N02   , Fs1 , v068
	.byte	W02
	.byte		N01   , Dn1 , v092
	.byte		N01   , Fs1 , v068
	.byte	W02
	.byte		        Dn1 , v092
	.byte		N01   , Fs1 , v068
	.byte	W01
	.byte		N02   , Dn1 , v092
	.byte	W03
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 039   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W12
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 043   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_032
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 047   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_032
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_032
@ 051   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 052   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 053   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_032
@ 055   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Dn1 , v092
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 057   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_032
@ 059   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N01   , Dn1 , v092
	.byte		N01   , Fs1 , v068
	.byte	W01
	.byte		        Dn1 , v092
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte		N01   , Fs1 , v068
	.byte	W01
	.byte		        Dn1 , v092
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 061   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_032
@ 063   ----------------------------------------
mus_breaking_the_habit_7_063:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 065   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Dn1 , v092
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_063
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_032
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_breaking_the_habit_7_034
@ 070   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Dn1 , v092
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
@ 072   ----------------------------------------
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte		N03   , Fs1 , v068
	.byte		N03   , Bn1 , v080
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte		N03   , Fs1 , v068
	.byte		N03   , Bn1 , v080
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v096
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
@ 074   ----------------------------------------
	.byte		N96   , Cn1 , v096
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_breaking_the_habit:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_breaking_the_habit_pri	@ Priority
	.byte	mus_breaking_the_habit_rev	@ Reverb.

	.word	mus_breaking_the_habit_grp

	.word	mus_breaking_the_habit_1
	.word	mus_breaking_the_habit_2
	.word	mus_breaking_the_habit_3
	.word	mus_breaking_the_habit_4
	.word	mus_breaking_the_habit_5
	.word	mus_breaking_the_habit_6
	.word	mus_breaking_the_habit_7

	.end
