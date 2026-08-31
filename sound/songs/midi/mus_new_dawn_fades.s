	.include "MPlayDef.s"

	.equ	mus_new_dawn_fades_grp, voicegroup_hlw_indie_guitar
	.equ	mus_new_dawn_fades_pri, 0
	.equ	mus_new_dawn_fades_rev, reverb_set+35
	.equ	mus_new_dawn_fades_mvl, 96
	.equ	mus_new_dawn_fades_key, 0
	.equ	mus_new_dawn_fades_tbs, 1
	.equ	mus_new_dawn_fades_exg, 1
	.equ	mus_new_dawn_fades_cmp, 1

	.section .rodata
	.global	mus_new_dawn_fades
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_new_dawn_fades_1:
	.byte		VOL   , 127*mus_new_dawn_fades_mvl/mxv
	.byte	KEYSH , mus_new_dawn_fades_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 75*mus_new_dawn_fades_tbs/2
	.byte		VOICE , 29
	.byte		N48   , En1 , v104
	.byte	W48
	.byte		N24   , Fs1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 002   ----------------------------------------
mus_new_dawn_fades_1_002:
	.byte		N36   , An1 , v104
	.byte	W36
	.byte		N24   , Bn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N12   , Gn1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_002
@ 004   ----------------------------------------
mus_new_dawn_fades_1_004:
	.byte		N24   , Fs1 , v104
	.byte	W24
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W60
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N24   , Fs1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_004
@ 009   ----------------------------------------
mus_new_dawn_fades_1_009:
	.byte		N12   , En1 , v104
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_009
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_009
@ 013   ----------------------------------------
mus_new_dawn_fades_1_013:
	.byte		N12   , En2 , v104
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_013
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_013
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
mus_new_dawn_fades_1_041:
	.byte		N72   , En2 , v080
	.byte		N72   , Bn2 
	.byte		N72   , En3 
	.byte	W72
	.byte		N24   , En2 , v060
	.byte		N24   , Bn2 
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 042   ----------------------------------------
mus_new_dawn_fades_1_042:
	.byte		N72   , Dn2 , v080
	.byte		N72   , An2 
	.byte		N72   , Dn3 
	.byte	W72
	.byte		N24   , Dn2 , v060
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 043   ----------------------------------------
mus_new_dawn_fades_1_043:
	.byte		N72   , Cn2 , v080
	.byte		N72   , Gn2 
	.byte		N72   , Cn3 
	.byte	W72
	.byte		N24   , Cn2 , v060
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
mus_new_dawn_fades_1_044:
	.byte		N72   , An1 , v080
	.byte		N72   , En2 
	.byte		N72   , An2 
	.byte	W72
	.byte		N24   , An1 , v060
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte	PEND
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_043
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_044
@ 049   ----------------------------------------
	.byte		N24   , En2 , v080
	.byte		N24   , Bn2 
	.byte		N24   , En3 
	.byte	W24
	.byte		N48   , En2 , v060
	.byte		N48   , Bn2 
	.byte		N48   , En3 
	.byte		N48   , Fs3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		N24   , En2 
	.byte		N24   , Bn2 
	.byte		N24   , En3 
	.byte	W24
@ 050   ----------------------------------------
	.byte		        Dn2 , v080
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N48   , Dn2 , v060
	.byte		N48   , An2 
	.byte		N48   , Dn3 
	.byte		N48   , Fs3 
	.byte		N48   , An3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
@ 051   ----------------------------------------
	.byte		        Cn2 , v080
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N48   , Cn2 , v060
	.byte		N48   , Gn2 
	.byte		N48   , Cn3 
	.byte		N48   , En3 
	.byte		N48   , Gn3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte		N24   , Cn2 
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W24
@ 052   ----------------------------------------
	.byte		        An1 , v080
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , An1 , v060
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte		N48   , En3 
	.byte		N48   , An3 
	.byte	W48
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
@ 053   ----------------------------------------
mus_new_dawn_fades_1_053:
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_053
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_053
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_053
@ 057   ----------------------------------------
	.byte		N12   , En2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N72   , Dn2 
	.byte	W72
@ 058   ----------------------------------------
	.byte		N12   , En2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W60
	.byte		        Dn2 
	.byte	W12
@ 059   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte	W60
	.byte		        En2 
	.byte	W12
@ 060   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N72   , Fs2 
	.byte	W72
@ 061   ----------------------------------------
mus_new_dawn_fades_1_061:
	.byte		N12   , Fs3 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		N36   , Bn2 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_061
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_061
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_061
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_061
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_061
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_061
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_061
@ 069   ----------------------------------------
mus_new_dawn_fades_1_069:
	.byte		N48   , En3 , v080
	.byte	W48
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N06   , Gn3 , v052
	.byte	W06
	.byte		N18   , Gn3 , v080
	.byte	W18
	.byte		N06   , An3 , v052
	.byte	W06
	.byte	PEND
@ 070   ----------------------------------------
mus_new_dawn_fades_1_070:
	.byte		N24   , An3 , v080
	.byte	W30
	.byte		N06   , Bn3 , v060
	.byte	W06
	.byte		N18   , Bn3 , v080
	.byte	W18
	.byte		N06   , An3 , v052
	.byte	W06
	.byte		N24   , An3 , v080
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_070
@ 072   ----------------------------------------
mus_new_dawn_fades_1_072:
	.byte		N24   , Fs3 , v080
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N48   , En3 
	.byte	W48
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_069
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_070
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_070
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_1_072
@ 077   ----------------------------------------
	.byte		N96   , En3 , v072
	.byte	W96
@ 078   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.5) ****************@

mus_new_dawn_fades_2:
	.byte		VOL   , 127*mus_new_dawn_fades_mvl/mxv
	.byte	KEYSH , mus_new_dawn_fades_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
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
mus_new_dawn_fades_2_016:
	.byte		N24   , En3 , v060
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_new_dawn_fades_2_017:
	.byte		N12   , Dn2 , v060
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_new_dawn_fades_2_018:
	.byte	W12
	.byte		N12   , Cn3 , v060
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_new_dawn_fades_2_019:
	.byte	W12
	.byte		N12   , An2 , v060
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_new_dawn_fades_2_020:
	.byte		N12   , Cn3 , v060
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_018
@ 023   ----------------------------------------
mus_new_dawn_fades_2_023:
	.byte	W12
	.byte		N12   , Bn2 , v060
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_020
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_023
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_017
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_018
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_023
@ 040   ----------------------------------------
mus_new_dawn_fades_2_040:
	.byte	W24
	.byte		N72   , En3 , v052
	.byte		N72   , Fs3 
	.byte		N72   , Bn3 
	.byte	W72
	.byte	PEND
@ 041   ----------------------------------------
mus_new_dawn_fades_2_041:
	.byte	W24
	.byte		N72   , Dn3 , v052
	.byte		N72   , Fs3 
	.byte		N72   , An3 
	.byte		N72   , Dn4 
	.byte	W72
	.byte	PEND
@ 042   ----------------------------------------
mus_new_dawn_fades_2_042:
	.byte	W24
	.byte		N72   , Cn3 , v052
	.byte		N72   , En3 
	.byte		N72   , Gn3 
	.byte		N72   , Cn4 
	.byte	W72
	.byte	PEND
@ 043   ----------------------------------------
mus_new_dawn_fades_2_043:
	.byte	W24
	.byte		N72   , An2 , v052
	.byte		N72   , Cs3 
	.byte		N72   , En3 
	.byte		N72   , An3 
	.byte	W72
	.byte	PEND
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_040
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_043
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_023
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_020
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_018
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_023
@ 060   ----------------------------------------
	.byte		N12   , Fs3 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		N48   , Fs3 , v060
	.byte	W48
@ 061   ----------------------------------------
mus_new_dawn_fades_2_061:
	.byte		N12   , Fs3 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		N48   , Fs3 
	.byte	W48
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_061
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_061
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_061
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_061
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_061
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_061
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte		N12   , Bn2 , v060
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 073   ----------------------------------------
mus_new_dawn_fades_2_073:
	.byte		N12   , Bn2 , v060
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_073
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_073
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_2_073
@ 077   ----------------------------------------
	.byte		N12   , Bn2 , v060
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 078   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_new_dawn_fades_3:
	.byte		VOL   , 127*mus_new_dawn_fades_mvl/mxv
	.byte	KEYSH , mus_new_dawn_fades_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		N24   , En1 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An0 
	.byte	W06
@ 001   ----------------------------------------
mus_new_dawn_fades_3_001:
	.byte		N36   , Dn1 , v080
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_new_dawn_fades_3_002:
	.byte		N12   , Cn1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_new_dawn_fades_3_003:
	.byte		N12   , An0 , v080
	.byte	W12
	.byte		N06   , An0 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An0 , v072
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_new_dawn_fades_3_004:
	.byte		N24   , En1 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 039   ----------------------------------------
mus_new_dawn_fades_3_039:
	.byte		N12   , An0 , v080
	.byte	W12
	.byte		N06   , An0 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_039
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_039
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_039
@ 072   ----------------------------------------
	.byte		N48   , En1 , v080
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_001
@ 074   ----------------------------------------
	.byte		N36   , Cn1 , v080
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
@ 075   ----------------------------------------
	.byte		N48   , An0 
	.byte	W48
	.byte		N06   , Gn2 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 076   ----------------------------------------
mus_new_dawn_fades_3_076:
	.byte		N06   , Gn2 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_076
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_3_076
@ 079   ----------------------------------------
	.byte		N06   , Gn2 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v056
	.byte	W06
	.byte		        Dn2 , v064
	.byte	W06
	.byte		N48   , Dn2 , v072
	.byte	W48
@ 080   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_new_dawn_fades_4:
	.byte		VOL   , 127*mus_new_dawn_fades_mvl/mxv
	.byte	KEYSH , mus_new_dawn_fades_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W06
@ 001   ----------------------------------------
mus_new_dawn_fades_4_001:
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 003   ----------------------------------------
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn1 , v080
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 007   ----------------------------------------
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
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
@ 008   ----------------------------------------
mus_new_dawn_fades_4_008:
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 011   ----------------------------------------
mus_new_dawn_fades_4_011:
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 015   ----------------------------------------
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v056
	.byte	W18
	.byte		N03   , Cn1 , v080
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Dn1 , v064
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 027   ----------------------------------------
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		        Cn1 , v080
	.byte	W06
	.byte		N03   , Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 031   ----------------------------------------
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N03   , Cn1 , v072
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Dn1 , v064
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 035   ----------------------------------------
mus_new_dawn_fades_4_035:
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N09   
	.byte		N09   , Dn1 
	.byte	W09
	.byte		N03   , Dn1 , v080
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 039   ----------------------------------------
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N03   , Cn1 , v072
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Dn1 , v056
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 047   ----------------------------------------
mus_new_dawn_fades_4_047:
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v072
	.byte	W18
	.byte		N03   , Cn1 , v088
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Dn1 , v056
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	PEND
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_047
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 055   ----------------------------------------
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v072
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        Cn1 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N03   , Dn1 , v044
	.byte	W03
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
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 059   ----------------------------------------
mus_new_dawn_fades_4_059:
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v072
	.byte		N06   , Dn1 
	.byte	W09
	.byte		N03   , Dn1 , v080
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn1 
	.byte		N03   , Dn1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v044
	.byte	W03
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
	.byte	PEND
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_059
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_011
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_011
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_008
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_001
@ 080   ----------------------------------------
	.byte		N06   , Cn1 , v064
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W06
@ 081   ----------------------------------------
mus_new_dawn_fades_4_081:
	.byte		N18   , Cn1 , v080
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_new_dawn_fades_4_081
@ 083   ----------------------------------------
	.byte		N18   , Cn1 , v080
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N48   
	.byte	W48
@ 084   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_new_dawn_fades:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_new_dawn_fades_pri	@ Priority
	.byte	mus_new_dawn_fades_rev	@ Reverb.

	.word	mus_new_dawn_fades_grp

	.word	mus_new_dawn_fades_1
	.word	mus_new_dawn_fades_2
	.word	mus_new_dawn_fades_3
	.word	mus_new_dawn_fades_4

	.end
