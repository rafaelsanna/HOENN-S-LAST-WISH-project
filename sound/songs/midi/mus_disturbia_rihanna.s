	.include "MPlayDef.s"

	.equ	mus_disturbia_rihanna_grp, voicegroup_applause
	.equ	mus_disturbia_rihanna_pri, 0
	.equ	mus_disturbia_rihanna_rev, reverb_set+8
	.equ	mus_disturbia_rihanna_mvl, 84
	.equ	mus_disturbia_rihanna_key, 0
	.equ	mus_disturbia_rihanna_tbs, 1
	.equ	mus_disturbia_rihanna_exg, 1
	.equ	mus_disturbia_rihanna_cmp, 1

	.section .rodata
	.global	mus_disturbia_rihanna
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_disturbia_rihanna_1:
	.byte		VOL   , 127*mus_disturbia_rihanna_mvl/mxv
	.byte	KEYSH , mus_disturbia_rihanna_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 125*mus_disturbia_rihanna_tbs/2
	.byte		VOICE , 2
	.byte		N12   , Bn0 , v100
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N12   
	.byte	W24
@ 001   ----------------------------------------
mus_disturbia_rihanna_1_001:
	.byte		N12   , An0 , v100
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Gn0 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_disturbia_rihanna_1_002:
	.byte		N12   , Bn0 , v100
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        An0 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        En0 
	.byte	W24
	.byte		N12   
	.byte	W24
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_1_001
@ 006   ----------------------------------------
	.byte		N22   , Bn0 , v100
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N22   
	.byte	W24
@ 007   ----------------------------------------
	.byte		        An0 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_disturbia_rihanna_2:
	.byte		VOL   , 127*mus_disturbia_rihanna_mvl/mxv
	.byte	KEYSH , mus_disturbia_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		N12   , Bn0 , v052
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N12   
	.byte	W24
@ 001   ----------------------------------------
mus_disturbia_rihanna_2_001:
	.byte		N12   , An0 , v052
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Gn0 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_disturbia_rihanna_2_002:
	.byte		N12   , Bn0 , v052
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        An0 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        En0 
	.byte	W24
	.byte		N12   
	.byte	W24
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_2_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_2_001
@ 006   ----------------------------------------
	.byte		N22   , Bn0 , v052
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N22   
	.byte	W24
@ 007   ----------------------------------------
	.byte		        An0 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_disturbia_rihanna_3:
	.byte		VOL   , 127*mus_disturbia_rihanna_mvl/mxv
	.byte	KEYSH , mus_disturbia_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		N12   , Bn0 , v008
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N12   
	.byte	W24
@ 001   ----------------------------------------
mus_disturbia_rihanna_3_001:
	.byte		N12   , An0 , v008
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Gn0 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_disturbia_rihanna_3_002:
	.byte		N12   , Bn0 , v008
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        An0 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        En0 
	.byte	W24
	.byte		N12   
	.byte	W24
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_3_001
@ 006   ----------------------------------------
	.byte		N22   , Bn0 , v008
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N22   
	.byte	W24
@ 007   ----------------------------------------
	.byte		        An0 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_disturbia_rihanna_4:
	.byte		VOL   , 127*mus_disturbia_rihanna_mvl/mxv
	.byte	KEYSH , mus_disturbia_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		N06   , Bn0 , v068
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N06   
	.byte	W24
@ 001   ----------------------------------------
mus_disturbia_rihanna_4_001:
	.byte		N06   , An0 , v068
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Gn0 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_disturbia_rihanna_4_002:
	.byte		N06   , Bn0 , v068
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        An0 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        En0 
	.byte	W24
	.byte		N06   
	.byte	W24
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 015   ----------------------------------------
mus_disturbia_rihanna_4_015:
	.byte		N06   , An0 , v068
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_4_002
@ 031   ----------------------------------------
	.byte		N06   , An0 , v068
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Gn0 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_disturbia_rihanna_5:
	.byte		VOL   , 127*mus_disturbia_rihanna_mvl/mxv
	.byte	KEYSH , mus_disturbia_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		N06   , Bn1 , v052
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W24
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W24
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte		N06   , Dn5 
	.byte	W12
	.byte		        An1 
	.byte		N06   , An2 
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W24
	.byte		        Gn1 
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W12
@ 001   ----------------------------------------
mus_disturbia_rihanna_5_001:
	.byte	W12
	.byte		N06   , Gn1 , v052
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W24
	.byte		        Fs1 
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte		N06   , Fs4 
	.byte	W12
	.byte		        Gn1 
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W24
	.byte		        Fs1 
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte		N06   , Fs4 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_disturbia_rihanna_5_002:
	.byte		N06   , Bn1 , v052
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W24
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W24
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte		N06   , Dn5 
	.byte	W12
	.byte		        An1 
	.byte		N06   , An2 
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W24
	.byte		        Gn1 
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_5_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_5_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_5_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_5_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_5_001
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
mus_disturbia_rihanna_5_009:
	.byte	W12
	.byte		N06   , Bn1 , v052
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Cs2 
	.byte		N06   , Cs3 
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Gn1 
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Fs1 
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_5_009
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_5_009
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
mus_disturbia_rihanna_5_017:
	.byte	W84
	.byte		N06   , Cs2 , v052
	.byte		N06   , Cs3 
	.byte		N06   , Cs4 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_disturbia_rihanna_5_018:
	.byte		N06   , Dn2 , v052
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W96
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_5_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_5_018
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte		N06   , Dn2 , v052
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W24
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W24
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W24
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Cs2 
	.byte		N06   , Cs3 
	.byte		N06   , Cs4 
	.byte	W48
	.byte		        Cs2 
	.byte		N06   , Cs3 
	.byte		N06   , Cs4 
	.byte		N06   , Cs5 
	.byte	W24
	.byte		        Cs2 
	.byte		N06   , Cs3 
	.byte		N06   , Cs4 
	.byte		N06   , Cs5 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte		N06   , Fs4 
	.byte		N06   , Dn5 
	.byte	W24
	.byte		        Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte		N06   , Fs4 
	.byte		N06   , Dn5 
	.byte	W36
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
@ 025   ----------------------------------------
mus_disturbia_rihanna_5_025:
	.byte		N06   , En3 , v052
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        En3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        En3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        En3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W24
	.byte		        Dn3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_disturbia_rihanna_5_026:
	.byte		N06   , Bn1 , v052
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte		N06   , Fs4 
	.byte	W24
	.byte		        Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte		N06   , Fs4 
	.byte	W36
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_5_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_5_026
@ 029   ----------------------------------------
	.byte		N06   , En3 , v052
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        En3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        En3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        En3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W24
	.byte		        Dn3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W24
	.byte		        Fs3 
	.byte		N06   , An3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Bn2 
	.byte		N06   , Fs3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Fs3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Fs3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Dn4 
	.byte	W24
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Cs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W12
@ 031   ----------------------------------------
	.byte	W24
	.byte		        An2 
	.byte		N06   , An3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , An3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , An3 
	.byte	W24
	.byte		        An2 
	.byte		N06   , An3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , An3 
	.byte	W06
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_disturbia_rihanna_6:
	.byte		VOL   , 127*mus_disturbia_rihanna_mvl/mxv
	.byte	KEYSH , mus_disturbia_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 4
	.byte		N06   , Bn0 , v052
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 001   ----------------------------------------
mus_disturbia_rihanna_6_001:
	.byte		N06   , Bn0 , v052
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_001
@ 003   ----------------------------------------
mus_disturbia_rihanna_6_003:
	.byte		N06   , Bn0 , v052
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_003
@ 008   ----------------------------------------
mus_disturbia_rihanna_6_008:
	.byte		N06   , Bn0 , v052
	.byte	W24
	.byte		N06   
	.byte		N06   , Ds1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		N06   
	.byte		N06   , Ds1 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_008
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_008
@ 011   ----------------------------------------
mus_disturbia_rihanna_6_011:
	.byte		N06   , Bn0 , v052
	.byte	W24
	.byte		N06   
	.byte		N06   , Ds1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		N06   
	.byte		N06   , Ds1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_008
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_008
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_008
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_008
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_008
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_011
@ 024   ----------------------------------------
mus_disturbia_rihanna_6_024:
	.byte		N06   , Bn0 , v052
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_024
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_024
@ 027   ----------------------------------------
	.byte		N06   , Bn0 , v052
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Fs1 
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_024
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_6_024
@ 031   ----------------------------------------
	.byte		N06   , Bn0 , v052
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	FINE

@**************** Track 7 (Midi-Chn.6) ****************@

mus_disturbia_rihanna_7:
	.byte		VOL   , 127*mus_disturbia_rihanna_mvl/mxv
	.byte	KEYSH , mus_disturbia_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		N06   , Bn3 , v092
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
@ 001   ----------------------------------------
mus_disturbia_rihanna_7_001:
	.byte	W12
	.byte		N06   , Gn3 , v092
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_disturbia_rihanna_7_002:
	.byte		N06   , Bn3 , v092
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_001
@ 008   ----------------------------------------
mus_disturbia_rihanna_7_008:
	.byte	W12
	.byte		N06   , Dn4 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_disturbia_rihanna_7_009:
	.byte	W12
	.byte		N06   , Bn3 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_009
@ 012   ----------------------------------------
	.byte	W12
	.byte		N06   , Dn4 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_009
@ 014   ----------------------------------------
	.byte	W12
	.byte		N06   , Bn3 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   
	.byte	W12
@ 015   ----------------------------------------
	.byte	W12
	.byte		        Dn4 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Cs4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 016   ----------------------------------------
mus_disturbia_rihanna_7_016:
	.byte	W12
	.byte		N06   , Dn3 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_016
@ 019   ----------------------------------------
	.byte	W12
	.byte		N06   , Cs3 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_016
@ 021   ----------------------------------------
	.byte	W12
	.byte		N06   , Cs3 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 022   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Dn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N06   
	.byte	W36
	.byte		        An4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 025   ----------------------------------------
mus_disturbia_rihanna_7_025:
	.byte		N06   , Cs5 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_disturbia_rihanna_7_026:
	.byte		N06   , Dn5 , v092
	.byte	W24
	.byte		        Bn4 
	.byte	W36
	.byte		        An4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_7_026
@ 029   ----------------------------------------
	.byte		N06   , Cs5 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        An4 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte	FINE

@**************** Track 8 (Midi-Chn.7) ****************@

mus_disturbia_rihanna_8:
	.byte		VOL   , 127*mus_disturbia_rihanna_mvl/mxv
	.byte	KEYSH , mus_disturbia_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
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
mus_disturbia_rihanna_8_016:
	.byte		N48   , Fs1 , v004
	.byte		N48   , Bn1 
	.byte		N48   , Dn2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , An1 
	.byte		N48   , Dn2 
	.byte		N48   , Fs2 
	.byte	W48
	.byte	PEND
@ 017   ----------------------------------------
mus_disturbia_rihanna_8_017:
	.byte		N48   , En1 , v004
	.byte		N48   , An1 
	.byte		N48   , Cs2 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Dn1 
	.byte		N48   , Gn1 
	.byte		N48   , Bn1 
	.byte		N48   , Dn2 
	.byte	W48
	.byte	PEND
@ 018   ----------------------------------------
	.byte		        Fs1 
	.byte		N48   , Bn1 
	.byte		N48   , Dn2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , An1 
	.byte		N48   , Dn2 
	.byte	W48
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_8_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_8_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_8_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_8_016
@ 023   ----------------------------------------
	.byte		N48   , An1 , v004
	.byte		N48   , Cs2 
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        Bn1 
	.byte		N48   , Dn2 
	.byte		N48   , Gn2 
	.byte		N48   , Cs3 
	.byte	W48
@ 024   ----------------------------------------
mus_disturbia_rihanna_8_024:
	.byte		N48   , Fs1 , v004
	.byte		N48   , Bn1 
	.byte		N48   , Dn2 
	.byte		N48   , Fs2 
	.byte		N48   , Bn2 
	.byte		N48   , Dn3 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , An1 
	.byte		N48   , Dn2 
	.byte		N48   , Fs2 
	.byte		N48   
	.byte		N48   , An2 
	.byte		N48   , Dn3 
	.byte		N48   , Fs3 
	.byte	W48
	.byte	PEND
@ 025   ----------------------------------------
mus_disturbia_rihanna_8_025:
	.byte		N48   , En1 , v004
	.byte		N48   , An1 
	.byte		N48   , Cs2 
	.byte		N48   , En2 
	.byte		N48   
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte		N48   , En3 
	.byte	W48
	.byte		        Dn1 
	.byte		N48   , Gn1 
	.byte		N48   , Bn1 
	.byte		N48   , Dn2 
	.byte		N48   
	.byte		N48   , Gn2 
	.byte		N48   , Bn2 
	.byte		N48   , Dn3 
	.byte	W48
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_8_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_8_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_8_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_8_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_8_024
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_8_025
@ 032   ----------------------------------------
	.byte	FINE

@**************** Track 9 (Midi-Chn.8) ****************@

mus_disturbia_rihanna_9:
	.byte		VOL   , 127*mus_disturbia_rihanna_mvl/mxv
	.byte	KEYSH , mus_disturbia_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
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
mus_disturbia_rihanna_9_024:
	.byte		N06   , Bn3 , v052
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Fs4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_disturbia_rihanna_9_025:
	.byte		N06   , Cs4 , v052
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        En4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_disturbia_rihanna_9_026:
	.byte		N06   , Bn3 , v052
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Fs4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte		        En4 
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_9_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_9_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_disturbia_rihanna_9_026
@ 031   ----------------------------------------
	.byte		N06   , En4 , v052
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

mus_disturbia_rihanna:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_disturbia_rihanna_pri	@ Priority
	.byte	mus_disturbia_rihanna_rev	@ Reverb.

	.word	mus_disturbia_rihanna_grp

	.word	mus_disturbia_rihanna_1
	.word	mus_disturbia_rihanna_2
	.word	mus_disturbia_rihanna_3
	.word	mus_disturbia_rihanna_4
	.word	mus_disturbia_rihanna_5
	.word	mus_disturbia_rihanna_6
	.word	mus_disturbia_rihanna_7
	.word	mus_disturbia_rihanna_8
	.word	mus_disturbia_rihanna_9

	.end
