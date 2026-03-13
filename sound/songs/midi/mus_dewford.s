	.include "MPlayDef.s"

	.equ	mus_dewford_grp, voicegroup_dewford
	.equ	mus_dewford_pri, 0
	.equ	mus_dewford_rev, reverb_set+50
	.equ	mus_dewford_mvl, 78
	.equ	mus_dewford_key, 0
	.equ	mus_dewford_tbs, 1
	.equ	mus_dewford_exg, 1
	.equ	mus_dewford_cmp, 1

	.section .rodata
	.global	mus_dewford
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_dewford_1:
	.byte	KEYSH , mus_dewford_key+0
mus_dewford_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 140*mus_dewford_tbs/2
	.byte		VOICE , 80
	.byte		VOL   , 127*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		TIE   , An0 , v104
	.byte	W96
@ 002   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N11   , En0 
	.byte	W12
	.byte		TIE   , An0 
	.byte	W48
@ 003   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 004   ----------------------------------------
mus_dewford_1_004:
	.byte		N23   , Dn1 , v104
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   , An0 
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_dewford_1_005:
	.byte		N05   , Dn1 , v104
	.byte	W36
	.byte		N11   , An0 
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N05   
	.byte	W12
	.byte		N11   , An0 
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W24
	.byte		N05   
	.byte	W12
@ 007   ----------------------------------------
mus_dewford_1_007:
	.byte		N11   , Bn0 , v104
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   , Fs0 
	.byte	W12
	.byte		        Bn0 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
mus_dewford_1_008:
	.byte		N05   , Bn0 , v104
	.byte	W36
	.byte		N11   , Fs0 
	.byte	W12
	.byte		        Bn0 
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
	.byte		N05   
	.byte	W12
	.byte		N11   , Fs0 
	.byte	W12
	.byte		        Bn0 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   , An0 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 010   ----------------------------------------
mus_dewford_1_010:
	.byte		N11   , Gn0 , v104
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   , Dn0 
	.byte	W12
	.byte		        Gn0 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_dewford_1_011:
	.byte		N05   , Gn0 , v104
	.byte	W36
	.byte		N11   , Dn0 
	.byte	W12
	.byte		        Gn0 
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
mus_dewford_1_012:
	.byte		N05   , Gn0 , v104
	.byte	W12
	.byte		N11   , Dn0 
	.byte	W12
	.byte		        Gn0 
	.byte	W24
	.byte		N05   
	.byte	W36
	.byte		N11   , Dn0 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_dewford_1_013:
	.byte		N11   , An0 , v104
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   , En0 
	.byte	W12
	.byte		        An0 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_dewford_1_014:
	.byte		N05   , An0 , v104
	.byte	W36
	.byte		N11   , En0 
	.byte	W12
	.byte		N17   , An0 
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_005
@ 018   ----------------------------------------
	.byte		N05   , Dn1 , v104
	.byte	W12
	.byte		N11   , An0 
	.byte	W12
	.byte		N05   , Dn1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		N05   
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_007
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_008
@ 021   ----------------------------------------
	.byte		N05   , Bn0 , v104
	.byte	W12
	.byte		N11   , Fs0 
	.byte	W12
	.byte		N05   , Bn0 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , An0 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_012
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_013
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_014
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
mus_dewford_1_028:
	.byte		N23   , Dn1 , v104
	.byte	W24
	.byte		N05   
	.byte	W36
	.byte		N11   , An0 
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_005
@ 030   ----------------------------------------
mus_dewford_1_030:
	.byte	W12
	.byte		N11   , An0 , v104
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N05   
	.byte	W36
	.byte		N11   , An0 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N05   
	.byte	W36
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N23   , Gn1 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N05   
	.byte	W36
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N23   , An1 
	.byte	W24
	.byte		N05   
	.byte	W24
@ 033   ----------------------------------------
	.byte	W12
	.byte		N11   , En1 
	.byte	W12
	.byte		N23   , An1 
	.byte	W24
	.byte		N05   
	.byte	W36
	.byte		N11   , En1 
	.byte	W12
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_028
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_005
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_1_030
@ 037   ----------------------------------------
	.byte		N23   , Gn1 , v104
	.byte	W24
	.byte		N05   
	.byte	W36
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N23   , An1 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N05   
	.byte	W36
	.byte		N11   , En1 
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N05   
	.byte	W24
@ 039   ----------------------------------------
	.byte	W12
	.byte		N11   , An0 
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N05   
	.byte	W48
	.byte	GOTO
	 .word	mus_dewford_1_B1
mus_dewford_1_B2:
@ 040   ----------------------------------------
	.byte		VOICE , 80
	.byte		        80
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_dewford_2:
	.byte	KEYSH , mus_dewford_key+0
mus_dewford_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N24   , Fs4 , v052
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
@ 001   ----------------------------------------
mus_dewford_2_001:
	.byte		N12   , Fs4 , v052
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_dewford_2_002:
	.byte	W12
	.byte		N12   , Fs4 , v052
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_dewford_2_003:
	.byte		N24   , Fs4 , v052
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_003
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_003
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_002
@ 015   ----------------------------------------
mus_dewford_2_015:
	.byte		N12   , Fs4 , v052
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
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 017   ----------------------------------------
mus_dewford_2_017:
	.byte		N12   , Fs4 , v052
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
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_017
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_017
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 026   ----------------------------------------
	.byte		N12   , Fs4 , v052
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
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_017
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_017
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_015
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_2_017
	.byte	GOTO
	 .word	mus_dewford_2_B1
mus_dewford_2_B2:
@ 039   ----------------------------------------
	.byte		VOICE , 127
	.byte		        127
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_dewford_3:
	.byte	KEYSH , mus_dewford_key+0
mus_dewford_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 46
	.byte		VOL   , 127*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , An4 , v127
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 002   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
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
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 003   ----------------------------------------
	.byte		N02   , An2 , v108
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N64   , Gn3 
	.byte	W88
	.byte	W01
@ 004   ----------------------------------------
	.byte	W48
	.byte		N02   , An2 
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N64   , Fs3 
	.byte	W40
	.byte	W01
@ 005   ----------------------------------------
	.byte	W24
	.byte		N02   , An2 
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N28   , Fs3 
	.byte	W28
	.byte	W01
	.byte		N04   , An2 
	.byte	W03
	.byte		N03   , Cs3 
	.byte	W04
	.byte		N28   , En3 
	.byte	W28
	.byte	W01
@ 006   ----------------------------------------
	.byte		N04   , Bn2 
	.byte	W03
	.byte		N03   , En3 
	.byte	W04
	.byte		N64   , Gn3 
	.byte	W64
	.byte	W01
	.byte		N04   , Bn2 
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N64   , Fs3 
	.byte	W17
@ 007   ----------------------------------------
	.byte	W48
	.byte		N04   , Bn2 
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N04   , Fs3 
	.byte	W04
	.byte		N60   , An3 
	.byte	W36
	.byte	W01
@ 008   ----------------------------------------
	.byte	W24
	.byte		N02   , Bn2 
	.byte	W03
	.byte		N05   , Dn3 
	.byte	W04
	.byte		N04   , Fs3 
	.byte	W04
	.byte		N24   , An3 
	.byte	W24
	.byte	W01
	.byte		N02   , An2 
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N28   , Fs3 
	.byte	W28
	.byte	W01
@ 009   ----------------------------------------
	.byte		N04   , Gn2 
	.byte	W03
	.byte		N03   , Bn2 
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte		N60   , Gn3 
	.byte	W60
	.byte	W01
	.byte		N04   , Gn2 
	.byte	W03
	.byte		N05   , Bn2 
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte		N60   , Gn3 
	.byte	W13
@ 010   ----------------------------------------
	.byte	W48
	.byte		N04   , Dn3 
	.byte	W03
	.byte		N03   , Gn3 
	.byte	W04
	.byte		N64   , Bn3 
	.byte	W40
	.byte	W01
@ 011   ----------------------------------------
mus_dewford_3_011:
	.byte	W24
	.byte		N02   , Gn2 , v108
	.byte	W03
	.byte		N03   , Bn2 
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte		N24   , Gn3 
	.byte	W24
	.byte	W01
	.byte		N02   , Gn2 
	.byte	W03
	.byte		N03   , Bn2 
	.byte	W04
	.byte		N28   , Dn3 
	.byte	W28
	.byte	W01
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N02   , An2 
	.byte	W03
	.byte		N03   , Cs3 
	.byte	W04
	.byte		N64   , En3 
	.byte	W64
	.byte	W01
	.byte		N02   , An2 
	.byte	W03
	.byte		N03   , Cs3 
	.byte	W04
	.byte		N64   , En3 
	.byte	W17
@ 013   ----------------------------------------
	.byte	W48
	.byte		N02   , An2 
	.byte	W03
	.byte		N03   , Cs3 
	.byte	W04
	.byte		N64   , En3 
	.byte	W40
	.byte	W01
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte		N04   , An2 
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N64   , Fs3 
	.byte	W88
	.byte	W01
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W24
	.byte		N02   , An2 
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N28   , Fs3 
	.byte	W28
	.byte	W01
	.byte		N02   , An2 
	.byte	W03
	.byte		N03   , Cs3 
	.byte	W04
	.byte		N28   , En3 
	.byte	W28
	.byte	W01
@ 018   ----------------------------------------
	.byte		N02   , Bn2 
	.byte	W03
	.byte		N03   , En3 
	.byte	W04
	.byte		N64   , Gn3 
	.byte	W64
	.byte	W01
	.byte		N02   , Bn2 
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N64   , Fs3 
	.byte	W17
@ 019   ----------------------------------------
	.byte	W48
	.byte		N02   , Bn2 
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N04   , Fs3 
	.byte	W04
	.byte		N60   , An3 
	.byte	W36
	.byte	W01
@ 020   ----------------------------------------
	.byte	W24
	.byte		N02   , Bn2 
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N04   , Fs3 
	.byte	W04
	.byte		N24   , An3 
	.byte	W24
	.byte	W01
	.byte		N02   , Bn2 
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N28   , Fs3 
	.byte	W28
	.byte	W01
@ 021   ----------------------------------------
	.byte		N04   , Gn2 
	.byte	W03
	.byte		N03   , Bn2 
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte		N60   , Gn3 
	.byte	W60
	.byte	W01
	.byte		N04   , Gn2 
	.byte	W03
	.byte		N03   , Bn2 
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte		N60   , Gn3 
	.byte	W13
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_3_011
@ 024   ----------------------------------------
	.byte		N02   , An2 , v108
	.byte	W03
	.byte		N03   , Cs3 
	.byte	W04
	.byte		N04   , En3 
	.byte	W04
	.byte		N60   , An3 
	.byte	W60
	.byte	W01
	.byte		N02   , An2 
	.byte	W03
	.byte		N03   , Cs3 
	.byte	W04
	.byte		N04   , En3 
	.byte	W04
	.byte		N60   , An3 
	.byte	W13
@ 025   ----------------------------------------
	.byte	W48
	.byte		N02   , An2 
	.byte	W03
	.byte		N03   , Cs3 
	.byte	W04
	.byte		N04   , En3 
	.byte	W04
	.byte		N60   , An3 
	.byte	W36
	.byte	W01
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
mus_dewford_3_027:
	.byte	W12
	.byte		N11   , Fs2 , v108
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N23   , Fs3 
	.byte	W36
	.byte		N11   , Fs2 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_dewford_3_028:
	.byte		N11   , As2 , v108
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N23   , Fs3 
	.byte	W36
	.byte		N11   , Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_dewford_3_029:
	.byte		N23   , Fs3 , v108
	.byte	W36
	.byte		N11   , Fs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_dewford_3_030:
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W36
	.byte		N11   , Gn2 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N23   , Fs3 
	.byte	W36
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N23   , Bn2 
	.byte	W36
	.byte		N11   , An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_3_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_3_028
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_3_029
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_3_030
@ 037   ----------------------------------------
	.byte		N11   , Bn2 , v108
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W36
	.byte		N11   , Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N23   , En3 
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
	.byte	GOTO
	 .word	mus_dewford_3_B1
mus_dewford_3_B2:
@ 039   ----------------------------------------
	.byte		VOICE , 46
	.byte		        46
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_dewford_4:
	.byte	KEYSH , mus_dewford_key+0
mus_dewford_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 113*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N32   , An4 , v088, gtp3
	.byte	W36
	.byte		        Gn4 , v088, gtp3
	.byte	W36
	.byte		        En4 , v088, gtp3
	.byte	W24
@ 001   ----------------------------------------
	.byte	W12
	.byte		        Cs4 , v088, gtp3
	.byte	W36
	.byte		        An3 , v088, gtp3
	.byte	W36
	.byte		        Bn3 , v088, gtp3
	.byte	W12
@ 002   ----------------------------------------
	.byte	W24
	.byte		N68   , Cs4 , v088, gtp3
	.byte	W72
@ 003   ----------------------------------------
	.byte		N56   , Bn3 , v064, gtp3
	.byte	W60
	.byte		N05   , An3 
	.byte	W12
	.byte		N32   , An3 , v064, gtp3
	.byte	W24
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte		N05   , Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N02   , Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N56   , Gn3 , v064, gtp3
	.byte	W60
	.byte		N05   , Fs3 
	.byte	W12
	.byte		N32   , Fs3 , v064, gtp3
	.byte	W24
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N05   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte		N11   , As3 
	.byte	W12
	.byte		N05   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N56   , Dn4 , v064, gtp3
	.byte	W66
	.byte		N02   
	.byte	W06
	.byte		N32   , Bn3 , v064, gtp3
	.byte	W24
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		N05   , Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		N05   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		TIE   , Gn3 , v052
	.byte	W96
@ 013   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N17   , Cs4 , v076
	.byte	W48
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
mus_dewford_4_027:
	.byte		N68   , An3 , v064, gtp3
	.byte	W72
	.byte		        As3 , v064, gtp3
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_dewford_4_028:
	.byte	W48
	.byte		N68   , Bn3 , v064, gtp3
	.byte	W48
	.byte	PEND
@ 029   ----------------------------------------
mus_dewford_4_029:
	.byte	W24
	.byte		N68   , Cn4 , v064, gtp3
	.byte	W72
	.byte	PEND
@ 030   ----------------------------------------
	.byte		        Bn3 , v064, gtp3
	.byte	W72
	.byte		        As3 , v064, gtp3
	.byte	W24
@ 031   ----------------------------------------
	.byte	W48
	.byte		N11   , An3 
	.byte	W12
	.byte		N56   , Dn4 , v064, gtp3
	.byte	W36
@ 032   ----------------------------------------
	.byte	W24
	.byte		N68   , An4 , v064, gtp3
	.byte	W72
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_4_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_4_028
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_4_029
@ 036   ----------------------------------------
	.byte		N68   , Dn4 , v064, gtp3
	.byte	W72
	.byte		        Gn4 , v064, gtp3
	.byte	W24
@ 037   ----------------------------------------
	.byte	W48
	.byte		TIE   , Fs4 
	.byte	W48
@ 038   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte		N05   , En4 , v088
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte	GOTO
	 .word	mus_dewford_4_B1
mus_dewford_4_B2:
@ 039   ----------------------------------------
	.byte		VOICE , 73
	.byte		        73
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_dewford_5:
	.byte	KEYSH , mus_dewford_key+0
mus_dewford_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
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
	.byte		N44   , Dn3 , v076, gtp3
	.byte	W48
	.byte		N05   , Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N32   , Fs3 , v076, gtp3
	.byte	W24
@ 004   ----------------------------------------
	.byte	W12
	.byte		        En3 , v076, gtp3
	.byte	W36
	.byte		N68   , Dn3 , v076, gtp3
	.byte	W48
@ 005   ----------------------------------------
	.byte	W24
	.byte		N32   , En3 , v076, gtp3
	.byte	W36
	.byte		N23   , Fs3 
	.byte	W24
	.byte		N05   , Cs3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N32   , Dn3 , v076, gtp3
	.byte	W48
	.byte		N05   , Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N32   , Fs3 , v076, gtp3
	.byte	W24
@ 007   ----------------------------------------
	.byte	W12
	.byte		        En3 , v076, gtp3
	.byte	W36
	.byte		N44   , Dn3 , v076, gtp3
	.byte	W48
@ 008   ----------------------------------------
	.byte		N05   , Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N32   , Bn2 , v076, gtp3
	.byte	W36
	.byte		        Cs3 , v076, gtp3
	.byte	W36
@ 009   ----------------------------------------
	.byte		        Gn3 , v076, gtp3
	.byte	W48
	.byte		N05   , Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N32   , Bn2 , v076, gtp3
	.byte	W24
@ 010   ----------------------------------------
	.byte	W12
	.byte		        Cs3 , v076, gtp3
	.byte	W36
	.byte		N44   , Dn3 , v076, gtp3
	.byte	W48
@ 011   ----------------------------------------
	.byte		N05   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N56   , Gn2 , v076, gtp3
	.byte	W60
	.byte		N05   , Bn2 
	.byte	W12
@ 012   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N17   , An3 
	.byte	W48
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
	.byte	GOTO
	 .word	mus_dewford_5_B1
mus_dewford_5_B2:
@ 039   ----------------------------------------
	.byte		VOICE , 81
	.byte		        81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_dewford_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_dewford_6:
	.byte	KEYSH , mus_dewford_key+0
mus_dewford_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 112*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N32   , An5 , v076, gtp3
	.byte	W36
	.byte		        Gn5 , v076, gtp3
	.byte	W36
	.byte		        En5 , v076, gtp3
	.byte	W24
@ 001   ----------------------------------------
	.byte	W12
	.byte		        Cs5 , v076, gtp3
	.byte	W36
	.byte		        An4 , v076, gtp3
	.byte	W36
	.byte		        Bn4 , v076, gtp3
	.byte	W12
@ 002   ----------------------------------------
	.byte	W24
	.byte		N68   , Cs5 , v076, gtp3
	.byte	W72
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
mus_dewford_6_027:
	.byte		N68   , An5 , v064, gtp3
	.byte	W72
	.byte		        As5 , v064, gtp3
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_dewford_6_028:
	.byte	W48
	.byte		N68   , Bn5 , v064, gtp3
	.byte	W48
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Gn5 , v064, gtp3
	.byte	W72
	.byte		        Fs5 , v064, gtp3
	.byte	W24
@ 031   ----------------------------------------
	.byte	W48
	.byte		        En5 , v064, gtp3
	.byte	W48
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_6_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_6_028
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte		N68   , Bn5 , v064, gtp3
	.byte	W72
	.byte		        Gn5 , v064, gtp3
	.byte	W24
@ 037   ----------------------------------------
	.byte	W48
	.byte		        Fs5 , v064, gtp3
	.byte	W48
@ 038   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_dewford_6_B1
mus_dewford_6_B2:
@ 039   ----------------------------------------
	.byte		VOICE , 12
	.byte		        12
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_dewford_7:
	.byte	KEYSH , mus_dewford_key+0
mus_dewford_7_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 106*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W60
	.byte		N11   , An3 , v088
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N56   , Bn3 , v088, gtp3
	.byte		N56   , Gn4 , v088, gtp3
	.byte	W60
	.byte		N05   , An3 
	.byte		N05   , Fs4 
	.byte	W12
	.byte		N32   , An3 , v088, gtp3
	.byte		N32   , Fs4 , v088, gtp3
	.byte	W24
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte		N05   , Cs4 
	.byte		N05   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte		N05   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N05   , An4 
	.byte	W12
	.byte		N02   , Dn4 
	.byte		N02   , Gn4 
	.byte	W03
	.byte		        En4 
	.byte		N02   , An4 
	.byte	W03
	.byte		N05   , Dn4 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        Cs4 
	.byte		N05   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N05   , En4 
	.byte	W12
	.byte		        Cs4 
	.byte		N05   , Fs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N05   , Cs4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N56   , Gn3 , v088, gtp3
	.byte		N56   , En4 , v088, gtp3
	.byte	W60
	.byte		N05   , Fs3 
	.byte		N05   , Dn4 
	.byte	W12
	.byte		N32   , Fs3 , v088, gtp3
	.byte		N32   , Dn4 , v088, gtp3
	.byte	W24
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N05   , Dn3 
	.byte		N05   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N11   , As3 
	.byte		N05   , Cs4 
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N05   , An3 
	.byte		N05   , Fs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N05   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N05   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N05   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N05   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N05   , Dn4 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N56   , Dn4 , v088, gtp3
	.byte		N56   , An4 , v088, gtp3
	.byte	W66
	.byte		N02   , Dn4 
	.byte		N02   , An4 
	.byte	W06
	.byte		N32   , Bn3 , v088, gtp3
	.byte		N32   , Gn4 , v088, gtp3
	.byte	W24
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		N05   , Dn3 
	.byte		N05   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte		N05   , Dn4 
	.byte	W12
	.byte		N05   
	.byte		N05   , Bn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte		N03   , An4 
	.byte	W04
	.byte		        Dn4 
	.byte		N03   , Bn4 
	.byte	W04
	.byte		        Cs4 
	.byte		N03   , An4 
	.byte	W04
	.byte		N05   , Bn3 
	.byte		N05   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N05   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N05   , Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N05   , Dn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		TIE   , Gn3 , v052
	.byte		TIE   , En4 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   , Gn3 
	.byte		        En4 
	.byte	W01
	.byte		N17   , Cs4 , v088
	.byte		N17   , An4 
	.byte	W48
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte		N56   , Gn3 , v088, gtp3
	.byte	W60
	.byte		N05   , An3 
	.byte	W12
	.byte		N56   , Fs3 , v088, gtp3
	.byte	W24
@ 016   ----------------------------------------
	.byte	W36
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		TIE   , An3 
	.byte	W48
@ 017   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N05   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N56   , En3 , v088, gtp3
	.byte	W60
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N32   , Dn3 , v088, gtp3
	.byte	W24
@ 019   ----------------------------------------
	.byte	W12
	.byte		        Fs3 , v088, gtp3
	.byte	W36
	.byte		N68   , Bn3 , v088, gtp3
	.byte	W48
@ 020   ----------------------------------------
	.byte	W24
	.byte		N32   , Fs3 , v088, gtp3
	.byte	W36
	.byte		        Dn3 , v088, gtp3
	.byte	W36
@ 021   ----------------------------------------
	.byte		N56   , An3 , v088, gtp3
	.byte	W60
	.byte		N11   , Fs3 
	.byte		N05   , Bn3 
	.byte	W12
	.byte		N56   , Gn3 , v088, gtp3
	.byte	W24
@ 022   ----------------------------------------
	.byte	W36
	.byte		N05   , An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N68   , Bn3 , v088, gtp3
	.byte	W48
@ 023   ----------------------------------------
	.byte	W24
	.byte		N32   , Gn3 , v088, gtp3
	.byte	W36
	.byte		        Dn3 , v088, gtp3
	.byte	W36
@ 024   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N17   , En3 
	.byte	W48
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
	.byte	GOTO
	 .word	mus_dewford_7_B1
mus_dewford_7_B2:
@ 039   ----------------------------------------
	.byte		VOICE , 17
	.byte		        17
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_dewford_8:
	.byte	KEYSH , mus_dewford_key+0
mus_dewford_8_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 113*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
	.byte	W60
	.byte		N05   , Bn3 , v088
	.byte		N05   , Gn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N05   , An4 
	.byte	W12
	.byte		        An3 
	.byte		N05   , En4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N56   , Bn3 
	.byte		N56   , Gn4 
	.byte	W60
	.byte		N05   , Cs4 
	.byte		N05   , An4 
	.byte	W12
	.byte		N32   , An3 , v088, gtp2
	.byte		N32   , Fs4 , v088, gtp2
	.byte	W24
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		N05   , Cs4 
	.byte		N05   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte		N05   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N05   , An4 
	.byte	W12
	.byte		N02   , Dn4 
	.byte		N02   , Gn4 
	.byte	W03
	.byte		        En4 
	.byte		N02   , An4 
	.byte	W03
	.byte		N05   , Dn4 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        Cs4 
	.byte		N05   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N05   , En4 
	.byte	W12
	.byte		        Cs4 
	.byte		N05   , Fs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N05   , Cs4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N56   , Gn3 
	.byte		N56   , En4 
	.byte	W60
	.byte		N05   , Fs3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Fn3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N32   , Fs3 , v088, gtp2
	.byte		N32   , Dn4 , v088, gtp2
	.byte	W24
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte		N05   , Dn3 
	.byte		N05   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N05   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N05   , Fs4 
	.byte	W12
	.byte		N02   , Gn3 
	.byte		N02   , En4 
	.byte	W03
	.byte		        An3 
	.byte		N02   , Fs4 
	.byte	W03
	.byte		N05   , Gn3 
	.byte		N05   , En4 
	.byte	W06
	.byte		        Fs3 
	.byte		N05   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N05   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N05   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N05   , Dn4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N56   
	.byte		N56   , An4 
	.byte	W60
	.byte		N05   , En4 
	.byte		N05   , Bn4 
	.byte	W12
	.byte		N32   , Bn3 , v088, gtp2
	.byte		N32   , Gn4 , v088, gtp2
	.byte	W24
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte		N05   , Dn3 
	.byte		N05   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte		N05   , Dn4 
	.byte	W12
	.byte		N05   
	.byte		N05   , Bn4 
	.byte	W12
	.byte		N02   , Cs4 
	.byte		N02   , An4 
	.byte	W03
	.byte		        Dn4 
	.byte		N02   , Bn4 
	.byte	W03
	.byte		N05   , Cs4 
	.byte		N05   , An4 
	.byte	W06
	.byte		        Bn3 
	.byte		N05   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N05   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N05   , Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N05   , Dn4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte		TIE   , En4 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		EOT   , Gn3 
	.byte		        En4 
	.byte	W07
	.byte		N05   , Gn3 
	.byte		N05   , En4 
	.byte	W06
	.byte		        An3 
	.byte		N05   , Fs4 
	.byte	W06
	.byte		N17   , Bn3 
	.byte		N17   , Gn4 
	.byte	W48
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
	.byte	GOTO
	 .word	mus_dewford_8_B1
mus_dewford_8_B2:
@ 039   ----------------------------------------
	.byte		VOICE , 1
	.byte		        1
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_dewford_9:
	.byte	KEYSH , mus_dewford_key+0
mus_dewford_9_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 25
	.byte		VOL   , 127*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
	.byte	W84
	.byte		N05   , Fs3 , v088
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 027   ----------------------------------------
	.byte		N23   , En4 
	.byte	W24
	.byte		N05   , Dn4 
	.byte	W36
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N23   , En4 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N05   , Dn4 
	.byte	W36
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N23   , En4 
	.byte	W24
	.byte		N05   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N32   , Fs4 , v088, gtp3
	.byte	W36
	.byte		N23   , En4 
	.byte	W24
	.byte		N05   , Dn4 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N44   , Dn4 , v088, gtp3
	.byte	W48
	.byte		N11   , Bn3 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		N05   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N68   , En4 , v088, gtp3
	.byte	W48
@ 032   ----------------------------------------
	.byte	W60
	.byte		N05   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 033   ----------------------------------------
	.byte		N23   , En4 
	.byte	W24
	.byte		N05   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N23   , En4 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N05   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N23   , En4 
	.byte	W24
	.byte		N05   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N05   , Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N32   , Dn4 , v088, gtp3
	.byte	W36
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N32   , Bn3 , v088, gtp3
	.byte	W24
@ 037   ----------------------------------------
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		TIE   , Dn4 
	.byte	W48
@ 038   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W36
	.byte	W01
	.byte	GOTO
	 .word	mus_dewford_9_B1
mus_dewford_9_B2:
@ 039   ----------------------------------------
	.byte		VOICE , 25
	.byte		        25
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_dewford_10:
	.byte	KEYSH , mus_dewford_key+0
mus_dewford_10_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 110*mus_dewford_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
	.byte	W30
	.byte		N06   , En1 , v076
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
@ 015   ----------------------------------------
mus_dewford_10_015:
	.byte		N36   , An2 , v076
	.byte	W36
	.byte		N24   , En1 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_dewford_10_016:
	.byte		N12   , Cn1 , v076
	.byte	W12
	.byte		N36   , En1 
	.byte	W36
	.byte		        Cn1 
	.byte	W36
	.byte		N24   , En1 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_dewford_10_017:
	.byte	W12
	.byte		N06   , Cn1 , v076
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_dewford_10_018:
	.byte		N36   , Cn1 , v076
	.byte	W36
	.byte		N24   , En1 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_016
@ 020   ----------------------------------------
	.byte	W12
	.byte		N06   , Cn1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N18   , En1 
	.byte	W24
	.byte		N12   
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_018
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_017
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_018
@ 025   ----------------------------------------
	.byte		N12   , Cn1 , v076
	.byte	W12
	.byte		N36   , En1 
	.byte	W36
	.byte		N32   , Cn1 , v076, gtp2
	.byte	W36
	.byte		N12   , En1 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N24   , En1 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_015
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_016
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_016
@ 032   ----------------------------------------
mus_dewford_10_032:
	.byte	W12
	.byte		N18   , Cn1 , v076
	.byte	W18
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N18   , Cn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_015
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_016
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_017
@ 036   ----------------------------------------
	.byte		N32   , Cn1 , v076, gtp2
	.byte	W36
	.byte		N24   , En1 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N18   
	.byte	W24
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_016
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_dewford_10_032
	.byte	GOTO
	 .word	mus_dewford_10_B1
mus_dewford_10_B2:
@ 039   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_dewford:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_dewford_pri	@ Priority
	.byte	mus_dewford_rev	@ Reverb.

	.word	mus_dewford_grp

	.word	mus_dewford_1
	.word	mus_dewford_2
	.word	mus_dewford_3
	.word	mus_dewford_4
	.word	mus_dewford_5
	.word	mus_dewford_6
	.word	mus_dewford_7
	.word	mus_dewford_8
	.word	mus_dewford_9
	.word	mus_dewford_10

	.end
