	.include "MPlayDef.s"

	.equ	mus_rg_gym_grp, voicegroup_rg_gym
	.equ	mus_rg_gym_pri, 0
	.equ	mus_rg_gym_rev, reverb_set+50
	.equ	mus_rg_gym_mvl, 90
	.equ	mus_rg_gym_key, 0
	.equ	mus_rg_gym_tbs, 1
	.equ	mus_rg_gym_exg, 1
	.equ	mus_rg_gym_cmp, 1

	.section .rodata
	.global	mus_rg_gym
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_rg_gym_1:
	.byte	KEYSH , mus_rg_gym_key+0
mus_rg_gym_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 80*mus_rg_gym_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W24
	.byte		N02   , Fs4 , v064
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
@ 002   ----------------------------------------
mus_rg_gym_1_002:
	.byte		N02   , Fs4 , v064
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 008   ----------------------------------------
	.byte		N02   , Fs4 , v064
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N02   , Fs4 , v064
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
@ 009   ----------------------------------------
mus_rg_gym_1_009:
	.byte		N02   , Fs4 , v064
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N02   , Gs4 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N02   , Gs4 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
@ 011   ----------------------------------------
mus_rg_gym_1_011:
	.byte		N02   , Gs4 , v072
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N02   , Gs4 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
@ 013   ----------------------------------------
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		        Fs4 , v064
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 020   ----------------------------------------
	.byte		N02   , Fs4 , v064
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N02   , Fs4 , v064
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_011
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_011
@ 024   ----------------------------------------
	.byte		N02   , Gs4 , v072
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 025   ----------------------------------------
mus_rg_gym_1_025:
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 030   ----------------------------------------
	.byte		N11   , As4 , v080
	.byte	W96
@ 031   ----------------------------------------
	.byte		N11   
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_002
@ 041   ----------------------------------------
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N02   , Fs4 , v064
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
@ 042   ----------------------------------------
mus_rg_gym_1_042:
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N02   , Gs4 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_042
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_042
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_042
@ 046   ----------------------------------------
mus_rg_gym_1_046:
	.byte		N02   , Gs4 , v072
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N02   , Gs4 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_042
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_046
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_025
@ 057   ----------------------------------------
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W24
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte		N11   
	.byte	W78
	.byte		N02   , Fs4 , v064
	.byte	W18
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_042
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_1_042
@ 063   ----------------------------------------
	.byte		N11   , As4 , v080
	.byte	W12
	.byte		N02   , Gs4 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N11   , As4 , v080
	.byte	W18
@ 064   ----------------------------------------
	.byte		N02   , Gs4 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte	GOTO
	 .word	mus_rg_gym_1_B1
mus_rg_gym_1_B2:
@ 065   ----------------------------------------
	.byte		VOICE , 127
	.byte		        127
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_rg_gym_2:
	.byte	KEYSH , mus_rg_gym_key+0
mus_rg_gym_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W24
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 001   ----------------------------------------
mus_rg_gym_2_001:
	.byte		N05   , An1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 008   ----------------------------------------
mus_rg_gym_2_008:
	.byte		N05   , An1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte		N05   , Ds2 
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Gs1 
	.byte		N05   , Ds2 
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
mus_rg_gym_2_009:
	.byte		N05   , An1 , v127
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		N11   , Fn1 
	.byte		N11   , Cn2 
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N05   , Fn1 
	.byte		N05   , Cn2 
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte		N05   , Ds2 
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Gs1 
	.byte		N05   , Ds2 
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_009
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_009
@ 012   ----------------------------------------
	.byte		N05   , An1 , v127
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		N11   , Fn1 
	.byte		N11   , Cn2 
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N05   , Fn1 
	.byte		N05   , Cn2 
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_009
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_009
@ 024   ----------------------------------------
	.byte		N05   , An1 , v127
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		N11   , Fn1 
	.byte		N11   , Cn2 
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N05   , Fn1 
	.byte		N05   , Cn2 
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
@ 025   ----------------------------------------
mus_rg_gym_2_025:
	.byte		N05   , An1 , v127
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
mus_rg_gym_2_026:
	.byte		N05   , An1 , v127
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		N11   , Cs1 
	.byte		N11   , Gs1 
	.byte		N11   , Cs2 
	.byte	W12
	.byte		N05   , Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte	PEND
@ 027   ----------------------------------------
	.byte		N23   , Cs1 
	.byte		N23   , Gs1 
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N05   , An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_025
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_026
@ 030   ----------------------------------------
	.byte		TIE   , Cs1 , v127
	.byte		TIE   , Gs1 
	.byte		TIE   , Cs2 
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Cs1 
	.byte		        Gs1 
	.byte		        Cs2 
	.byte	W01
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
mus_rg_gym_2_041:
	.byte		N05   , Cs1 , v127
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte		N05   , Ds2 
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Gs1 
	.byte		N05   , Ds2 
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		N11   , Fn1 
	.byte		N11   , Cn2 
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N05   , Fn1 
	.byte		N05   , Cn2 
	.byte		N05   , Fn2 
	.byte	W06
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_041
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_041
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_041
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_041
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_041
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_041
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_025
@ 050   ----------------------------------------
mus_rg_gym_2_050:
	.byte		N05   , An1 , v127
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte	W06
	.byte	PEND
@ 051   ----------------------------------------
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		N11   , Cs1 
	.byte		N11   , Gs1 
	.byte		N11   , Cs2 
	.byte	W12
	.byte		N05   , Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N23   , Cs1 
	.byte		N23   , Gs1 
	.byte		N23   , Cs2 
	.byte	W24
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_025
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_050
@ 054   ----------------------------------------
mus_rg_gym_2_054:
	.byte		N05   , Fs1 , v127
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		N11   , Cs1 
	.byte		N11   , Gs1 
	.byte		N11   , Cs2 
	.byte	W12
	.byte		N05   , Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N23   , Gs1 
	.byte		N23   , Cs2 
	.byte		N23   , Fs2 , v096
	.byte	W24
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_054
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_054
@ 057   ----------------------------------------
	.byte		N05   , Fs1 , v127
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		N11   , Cs1 
	.byte		N11   , Gs1 
	.byte		N11   , Cs2 
	.byte	W12
	.byte		N05   , Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N05   , Cs2 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Gs1 
	.byte		N05   , Cs2 
	.byte	W06
	.byte		TIE   , Cs1 
	.byte		TIE   , Gs1 
	.byte		TIE   , Cs2 
	.byte	W24
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Cs1 
	.byte		        Gs1 
	.byte		        Cs2 
	.byte	W01
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_041
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_2_041
@ 062   ----------------------------------------
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , Fn1 
	.byte	W12
	.byte		N05   
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N17   , Fn1 
	.byte		N17   , Cn2 
	.byte		N17   , Fn2 
	.byte	W18
	.byte	GOTO
	 .word	mus_rg_gym_2_B1
mus_rg_gym_2_B2:
@ 064   ----------------------------------------
	.byte		VOICE , 30
	.byte		        30
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_rg_gym_3:
	.byte	KEYSH , mus_rg_gym_key+0
mus_rg_gym_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 36
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_rg_gym_3_004:
	.byte	W24
	.byte		N05   , Gs0 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_rg_gym_3_005:
	.byte		N05   , An0 , v127
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_005
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_005
@ 008   ----------------------------------------
	.byte		N05   , An0 , v127
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , Cs0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
@ 009   ----------------------------------------
mus_rg_gym_3_009:
	.byte		N05   , An0 , v127
	.byte	W06
	.byte		N11   , Fn0 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_009
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_009
@ 012   ----------------------------------------
	.byte		N05   , An0 , v127
	.byte	W06
	.byte		N17   , Fn0 
	.byte	W90
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_005
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_005
@ 020   ----------------------------------------
	.byte		N05   , An0 , v127
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_009
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_009
@ 024   ----------------------------------------
	.byte		N05   , An0 , v127
	.byte	W06
	.byte		N11   , Fn0 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 025   ----------------------------------------
mus_rg_gym_3_025:
	.byte		N05   , An0 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N11   , Cs0 
	.byte	W12
	.byte		N05   , Fs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs0 
	.byte	W06
@ 027   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N05   , An0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_025
@ 029   ----------------------------------------
	.byte		N05   , An0 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N11   , Cs0 
	.byte	W12
	.byte		N05   , Fs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs0 
	.byte	W06
@ 030   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 033   ----------------------------------------
mus_rg_gym_3_033:
	.byte		N05   , Gs0 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_033
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_033
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_033
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_033
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_033
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_033
@ 041   ----------------------------------------
mus_rg_gym_3_041:
	.byte		N05   , Cs0 , v127
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N11   , Fn0 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_041
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_041
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_041
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_041
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_041
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_041
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_025
@ 050   ----------------------------------------
	.byte		N05   , An0 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs0 
	.byte	W06
@ 051   ----------------------------------------
	.byte		        Fs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N11   , Cs0 
	.byte	W12
	.byte		N05   , Fs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		N23   
	.byte	W24
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_025
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_025
@ 054   ----------------------------------------
mus_rg_gym_3_054:
	.byte		N05   , Fs0 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N11   , Cs0 
	.byte	W12
	.byte		N05   , Fs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_054
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_054
@ 057   ----------------------------------------
	.byte		N05   , Fs0 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N11   , Cs0 
	.byte	W12
	.byte		N05   , Fs0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		TIE   
	.byte	W24
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_041
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_041
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_3_041
@ 063   ----------------------------------------
	.byte		N05   , Cs0 , v127
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N17   , Fn0 
	.byte	W18
	.byte	GOTO
	 .word	mus_rg_gym_3_B1
mus_rg_gym_3_B2:
@ 064   ----------------------------------------
	.byte		VOICE , 36
	.byte		        36
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_rg_gym_4:
	.byte	KEYSH , mus_rg_gym_key+0
mus_rg_gym_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		N02   , Bn1 , v127
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W30
@ 001   ----------------------------------------
mus_rg_gym_4_001:
	.byte		N02   , En1 , v127
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W30
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 009   ----------------------------------------
mus_rg_gym_4_009:
	.byte		N02   , En1 , v127
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 011   ----------------------------------------
mus_rg_gym_4_011:
	.byte		N02   , En1 , v127
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W09
	.byte		        Bn1 
	.byte	W03
	.byte	PEND
@ 012   ----------------------------------------
	.byte		        An1 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W30
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_011
@ 024   ----------------------------------------
	.byte		N02   , An1 , v127
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
@ 025   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
@ 026   ----------------------------------------
mus_rg_gym_4_026:
	.byte		N02   , En1 , v127
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 027   ----------------------------------------
mus_rg_gym_4_027:
	.byte		N02   , En1 , v127
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_027
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_026
@ 030   ----------------------------------------
	.byte		N02   , En1 , v127
	.byte	W96
@ 031   ----------------------------------------
mus_rg_gym_4_031:
	.byte		N02   , Cn1 , v127
	.byte	W24
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W30
	.byte		        En1 
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 042   ----------------------------------------
mus_rg_gym_4_042:
	.byte		N02   , Cn1 , v127
	.byte	W24
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 044   ----------------------------------------
mus_rg_gym_4_044:
	.byte		N02   , Cn1 , v127
	.byte	W24
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W09
	.byte		        Bn1 
	.byte	W03
	.byte		        An1 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte	PEND
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_044
@ 049   ----------------------------------------
mus_rg_gym_4_049:
	.byte		N02   , Cn1 , v127
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte	PEND
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_049
@ 051   ----------------------------------------
mus_rg_gym_4_051:
	.byte		N02   , Cn1 , v127
	.byte		N02   , En1 
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_049
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_049
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_051
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_051
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_051
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_051
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_042
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_gym_4_031
@ 063   ----------------------------------------
	.byte		N02   , Cn1 , v127
	.byte	W24
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W09
	.byte		        Bn1 
	.byte	W03
	.byte		        An1 
	.byte	W06
	.byte		        En1 
	.byte	W18
	.byte	GOTO
	 .word	mus_rg_gym_4_B1
mus_rg_gym_4_B2:
@ 064   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_gym_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_rg_gym:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rg_gym_pri	@ Priority
	.byte	mus_rg_gym_rev	@ Reverb.

	.word	mus_rg_gym_grp

	.word	mus_rg_gym_1
	.word	mus_rg_gym_2
	.word	mus_rg_gym_3
	.word	mus_rg_gym_4

	.end
