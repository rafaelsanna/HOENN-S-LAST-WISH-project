	.include "MPlayDef.s"

	.equ	mus_you_say_run_grp, voicegroup_hlw_rock_metal
	.equ	mus_you_say_run_pri, 0
	.equ	mus_you_say_run_rev, reverb_set+10
	.equ	mus_you_say_run_mvl, 90
	.equ	mus_you_say_run_key, 0
	.equ	mus_you_say_run_tbs, 1
	.equ	mus_you_say_run_exg, 0
	.equ	mus_you_say_run_cmp, 1

	.section .rodata
	.global	mus_you_say_run
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_you_say_run_1:
	.byte	KEYSH , mus_you_say_run_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 180*mus_you_say_run_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 92*mus_you_say_run_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , En1 , v044
	.byte		TIE   , En3 
	.byte		N48   , Bn3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		TIE   , Fs3 
	.byte	W24
@ 001   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        En3 
	.byte		        Fs3 
@ 002   ----------------------------------------
	.byte		TIE   , Dn1 
	.byte		TIE   , An2 
	.byte		N72   , Dn4 
	.byte	W24
	.byte		N48   , Gn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		TIE   , Fs3 
	.byte		N72   , Cn4 
	.byte	W24
@ 003   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		EOT   , Dn1 
	.byte		        An2 
	.byte		        Fs3 
@ 004   ----------------------------------------
	.byte		TIE   , Cn2 
	.byte		TIE   , En3 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		TIE   , Gn3 
	.byte	W60
@ 005   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        En3 
	.byte		        Gn3 
@ 006   ----------------------------------------
	.byte		N72   , An1 
	.byte		N72   , En3 
	.byte		N72   , Gn3 
	.byte	W72
	.byte		TIE   , Dn1 
	.byte		TIE   , An2 
	.byte		TIE   , An3 
	.byte	W24
@ 007   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn1 
	.byte		        An2 
	.byte		        An3 
@ 008   ----------------------------------------
	.byte		TIE   , En1 
	.byte		TIE   , Gn2 
	.byte		N96   , En3 
	.byte	W48
	.byte		N48   
	.byte		N48   , Gn3 
	.byte	W48
@ 009   ----------------------------------------
	.byte		        Dn3 
	.byte		N48   , Fs3 
	.byte	W48
	.byte		        Bn2 
	.byte		N48   , Dn3 
	.byte	W48
	.byte		EOT   , En1 
	.byte		        Gn2 
@ 010   ----------------------------------------
	.byte		TIE   , Bn1 
	.byte		N72   , An2 
	.byte		TIE   , Dn3 
	.byte	W72
	.byte		N72   , Fs2 
	.byte		N72   , Bn2 
	.byte	W24
@ 011   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte		N24   , En3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		EOT   , Bn1 
	.byte		        Dn3 
@ 012   ----------------------------------------
	.byte		TIE   , Cn2 
	.byte		TIE   , En3 
	.byte		TIE   , Gn3 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        En3 
	.byte		        Gn3 
@ 014   ----------------------------------------
	.byte		N72   , An1 
	.byte		N72   , Cn3 
	.byte		N72   , Gn3 
	.byte	W72
	.byte		TIE   , Dn1 
	.byte		TIE   , Fs2 
	.byte		TIE   , An3 
	.byte	W24
@ 015   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn1 
	.byte		        Fs2 
	.byte		        An3 
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
mus_you_say_run_1_017:
	.byte		N24   , Bn1 , v044
	.byte		N24   , En2 
	.byte	W24
	.byte		N36   , Bn1 
	.byte		N36   , En2 
	.byte	W36
	.byte		N24   , Bn1 
	.byte		N24   , En2 
	.byte	W24
	.byte		N36   , Dn2 
	.byte		N36   , Gn2 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_you_say_run_1_018:
	.byte	W24
	.byte		N36   , Dn2 , v044
	.byte		N36   , Gn2 
	.byte	W36
	.byte		        Dn2 
	.byte		N36   , Gn2 
	.byte	W36
	.byte	PEND
@ 019   ----------------------------------------
mus_you_say_run_1_019:
	.byte		N24   , Gn1 , v044
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N36   , Gn1 
	.byte		N36   , Cn2 
	.byte	W36
	.byte		N24   , Gn1 
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N36   , An1 
	.byte		N36   , Dn2 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_you_say_run_1_020:
	.byte	W24
	.byte		N36   , An1 , v044
	.byte		N36   , Dn2 
	.byte	W36
	.byte		        An1 
	.byte		N36   , Dn2 
	.byte	W36
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_020
@ 025   ----------------------------------------
mus_you_say_run_1_025:
	.byte		N24   , Bn1 , v044
	.byte		N24   , En2 
	.byte	W24
	.byte		N36   , Bn1 
	.byte		N36   , En2 
	.byte	W24
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , En2 
	.byte	W24
	.byte		N36   , Gn1 
	.byte		N36   , Dn2 
	.byte		N36   , Gn2 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_you_say_run_1_026:
	.byte		N36   , Cn4 , v044
	.byte		N36   , Cn5 
	.byte	W24
	.byte		        Gn1 
	.byte		N36   , Dn2 
	.byte		N36   , Gn2 
	.byte	W12
	.byte		        Bn3 
	.byte		N36   , Bn4 
	.byte	W24
	.byte		        Gn1 
	.byte		N36   , Dn2 
	.byte		N36   , Gn2 
	.byte	W12
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
	.byte		        Gn1 
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte	W24
	.byte		N36   , Gn1 
	.byte		TIE   , An3 
	.byte		TIE   , An4 
	.byte	W36
	.byte		N24   , Gn1 
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N36   , An1 
	.byte		N36   , Dn2 
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_020
	.byte		EOT   , An3 
	.byte		        An4 
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_026
@ 031   ----------------------------------------
	.byte		N24   , Gn1 , v044
	.byte		TIE   , Dn4 
	.byte		TIE   , Dn5 
	.byte	W24
	.byte		N36   , Gn1 
	.byte		N36   , Cn2 
	.byte	W36
	.byte		N24   , Gn1 
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N36   , An1 
	.byte		N36   , Dn2 
	.byte	W12
@ 032   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn4 
	.byte		        Dn5 
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte		N36   , En2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
@ 035   ----------------------------------------
mus_you_say_run_1_035:
	.byte		N36   , Gn2 , v044
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_you_say_run_1_036:
	.byte		N36   , An2 , v044
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_036
@ 038   ----------------------------------------
mus_you_say_run_1_038:
	.byte		N36   , Cn2 , v044
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N36   , Cn2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
mus_you_say_run_1_039:
	.byte		N36   , Dn3 , v044
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_036
@ 041   ----------------------------------------
	.byte		N48   , En2 , v044
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte	W24
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , Fs2 
	.byte		N48   , Bn2 
	.byte		N48   , Ds3 
	.byte	W24
	.byte		N24   , Bn2 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N36   , En2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_036
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_038
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_036
@ 049   ----------------------------------------
	.byte		N36   , An2 , v044
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N24   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   , En2 
	.byte		N72   , En3 
	.byte	W12
@ 050   ----------------------------------------
mus_you_say_run_1_050:
	.byte		N24   , En2 , v044
	.byte	W24
	.byte		N36   
	.byte	W24
	.byte		N24   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N36   , Gn2 
	.byte		N24   , En3 
	.byte		N24   , Gn3 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
	.byte	W12
	.byte		        Fs2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W12
	.byte		N60   , Gn2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N36   , Gn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		TIE   , En2 
	.byte		TIE   , Bn2 
	.byte		TIE   , En3 
	.byte	W12
@ 052   ----------------------------------------
mus_you_say_run_1_052:
	.byte		N24   , Cn2 , v044
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N60   , Cn2 
	.byte	W24
	.byte		N36   , Gn2 
	.byte		N36   , Cn3 
	.byte	W36
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
	.byte	W24
	.byte		N72   
	.byte	W24
	.byte		EOT   , En2 
	.byte		        Bn2 
	.byte		        En3 
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte	W12
	.byte		N12   , Bn1 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En2 
	.byte		N72   , Bn2 
	.byte		N72   , En3 
	.byte	W12
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_050
@ 055   ----------------------------------------
	.byte	W12
	.byte		N24   , Fs2 , v044
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W12
	.byte		N72   , Gn2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N48   , Gn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Fs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N96   , An2 
	.byte		N96   , En3 
	.byte		N96   , An3 
	.byte	W12
@ 056   ----------------------------------------
	.byte		N24   , Cn2 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N60   , Cn2 
	.byte	W24
	.byte		N36   , Gn2 
	.byte		N36   , Cn3 
	.byte	W36
	.byte		        An2 
	.byte		N72   , An3 
	.byte		N72   , Dn4 
	.byte	W12
@ 057   ----------------------------------------
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En2 
	.byte		N84   , En3 
	.byte		N84   , En4 
	.byte	W12
@ 058   ----------------------------------------
mus_you_say_run_1_058:
	.byte		N24   , En2 , v044
	.byte	W24
	.byte		N48   
	.byte	W24
	.byte		N24   
	.byte		N36   , Bn2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N36   , Gn2 
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
	.byte	W12
	.byte		        Fs2 
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W12
	.byte		N72   , Gn2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N24   , Dn3 
	.byte		N24   , Dn4 
	.byte	W12
	.byte		N12   , Dn2 
	.byte		N48   , Gn2 
	.byte	W12
	.byte		N12   , Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		TIE   , En2 
	.byte		TIE   , En3 
	.byte		TIE   , En4 
	.byte	W12
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_052
@ 061   ----------------------------------------
	.byte	W24
	.byte		N72   , An2 , v044
	.byte	W12
	.byte		EOT   , En2 
	.byte		        En3 
	.byte		        En4 
	.byte	W12
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte	W12
	.byte		N12   , Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En2 
	.byte		N84   , En3 
	.byte		N84   , En4 
	.byte	W12
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_058
@ 063   ----------------------------------------
	.byte	W12
	.byte		N24   , Fs2 , v044
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W12
	.byte		N72   , Gn2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N24   , Dn3 
	.byte		N24   , Dn4 
	.byte	W12
	.byte		N48   , Gn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N60   , An2 
	.byte		N60   , An3 
	.byte		N60   , An4 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N24   , Cn2 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N60   , Cn2 
	.byte	W24
	.byte		N36   , Gn2 
	.byte		N12   , An2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N36   , An2 
	.byte		TIE   , Dn4 
	.byte		TIE   , Dn5 
	.byte	W12
@ 065   ----------------------------------------
	.byte	W24
	.byte		N72   , An2 
	.byte	W24
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte	W48
	.byte		EOT   , Dn4 
	.byte		        Dn5 
@ 066   ----------------------------------------
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W24
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W24
	.byte		N36   , Cn2 
	.byte		N36   , Gn2 
	.byte	W36
	.byte		        Bn1 
	.byte		N36   , Fs2 
	.byte	W12
@ 067   ----------------------------------------
	.byte	W24
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W24
	.byte		N48   , Bn1 
	.byte		N48   , Fs2 
	.byte	W48
@ 068   ----------------------------------------
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W24
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W24
	.byte		N36   , An2 
	.byte		N36   , Dn3 
	.byte	W36
	.byte		        En2 
	.byte		N36   , Bn2 
	.byte	W12
@ 069   ----------------------------------------
	.byte	W24
	.byte		N06   , En2 
	.byte		N06   , Bn2 
	.byte	W24
	.byte		N48   , En2 
	.byte		N48   , Bn2 
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N72   , Bn4 
	.byte	W24
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte	W24
	.byte		N36   , An1 
	.byte		N36   , En2 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N36   , Bn1 
	.byte		N36   , Fs2 
	.byte		N12   , Bn4 
	.byte	W12
@ 071   ----------------------------------------
	.byte		N24   , An4 
	.byte	W24
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N24   , Dn5 
	.byte	W12
	.byte		N48   , Bn1 
	.byte		N48   , Fs2 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N06   , En2 
	.byte		N48   , Gn4 
	.byte	W24
	.byte		N06   , En2 
	.byte	W24
	.byte		N36   
	.byte		N48   , Fs4 
	.byte	W36
	.byte		N36   , Bn2 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N48   , En4 
	.byte	W24
	.byte		N06   , Bn2 
	.byte	W24
	.byte		N48   
	.byte		N48   , Dn4 
	.byte	W48
@ 074   ----------------------------------------
	.byte		N84   , Cs2 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , Bn1 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 076   ----------------------------------------
	.byte		N36   , Cs2 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N48   , Dn1 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N48   , En1 
	.byte	W12
@ 077   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N48   , Gn1 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 078   ----------------------------------------
mus_you_say_run_1_078:
	.byte		N36   , An1 , v044
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N48   , Bn1 
	.byte	W12
	.byte	PEND
@ 079   ----------------------------------------
mus_you_say_run_1_079:
	.byte	W12
	.byte		N12   , Fs2 , v044
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 080   ----------------------------------------
	.byte		N36   , Cn2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N48   , Bn1 
	.byte	W12
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_079
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_078
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_079
@ 084   ----------------------------------------
	.byte		N36   , Cn2 , v044
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   , Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N48   , Cn2 
	.byte		N12   , Cn3 
	.byte	W12
@ 085   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 086   ----------------------------------------
	.byte		N36   , Dn3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W12
@ 087   ----------------------------------------
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte		N24   , Gn4 
	.byte		N24   , Dn5 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte		N36   , Cn3 
	.byte		N36   , En3 
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N60   , Dn3 
	.byte		N60   , Fs3 
	.byte		N60   , An3 
	.byte	W60
@ 092   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , Cn3 
	.byte		N96   , En3 
	.byte	W96
@ 093   ----------------------------------------
mus_you_say_run_1_093:
	.byte		N96   , Dn1 , v044
	.byte		N96   , An3 
	.byte		N96   , Dn4 
	.byte	W96
	.byte	PEND
@ 094   ----------------------------------------
	.byte		        En1 
	.byte		N96   , Gn3 
	.byte		N96   , En4 
	.byte	W96
@ 095   ----------------------------------------
	.byte		        Bn1 
	.byte		N96   , Dn3 
	.byte		N96   , Bn3 
	.byte	W96
@ 096   ----------------------------------------
	.byte		        Cs2 
	.byte		N96   , En3 
	.byte		N96   , Cn4 
	.byte	W96
@ 097   ----------------------------------------
	.byte		        Dn1 
	.byte		N96   , Dn3 
	.byte		N96   , An3 
	.byte	W96
@ 098   ----------------------------------------
	.byte		N48   , En1 
	.byte		N48   , Gn3 
	.byte		N48   , En4 
	.byte	W48
	.byte		N36   , Fs1 
	.byte		N36   , Fs3 
	.byte		N36   , Dn4 
	.byte	W36
	.byte		        Gn1 
	.byte		N36   , Gn3 
	.byte		N36   , Dn4 
	.byte	W12
@ 099   ----------------------------------------
	.byte	W24
	.byte		        An1 
	.byte		N36   , An3 
	.byte	W36
	.byte		        Bn1 
	.byte		N36   , Bn3 
	.byte	W36
@ 100   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , Cn4 
	.byte		N96   , En4 
	.byte	W96
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_093
@ 102   ----------------------------------------
	.byte		N36   , En1 , v044
	.byte		N36   , Gn3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N60   , Fs1 
	.byte		N60   , Fs3 
	.byte		N60   , An3 
	.byte	W60
@ 103   ----------------------------------------
	.byte		N48   , Gn1 
	.byte		N48   , Gn3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Dn1 
	.byte		N48   , Dn3 
	.byte		N48   , Bn3 
	.byte	W48
@ 104   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , An2 
	.byte		N96   , Gn3 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Dn1 
	.byte		N96   , Bn2 
	.byte		N96   , Fs3 
	.byte	W96
@ 106   ----------------------------------------
	.byte		        En1 
	.byte		N96   , Cn3 
	.byte		N96   , En3 
	.byte	W96
@ 107   ----------------------------------------
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   
	.byte	W24
@ 108   ----------------------------------------
mus_you_say_run_1_108:
	.byte		N12   , Cn2 , v044
	.byte		N36   , Gn3 
	.byte		N36   , Gn4 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , Dn4 
	.byte		N24   , Fs4 
	.byte	W12
	.byte		N12   , Cn2 
	.byte		N48   , Cs2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W12
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 109   ----------------------------------------
mus_you_say_run_1_109:
	.byte		N24   , Dn1 , v044
	.byte		N36   , Bn3 
	.byte		N36   , Gn4 
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N12   
	.byte		N36   , An3 
	.byte		N36   , Fs4 
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	PEND
@ 110   ----------------------------------------
	.byte		N24   , En1 
	.byte		N36   , En4 
	.byte		N36   , Gn4 
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N36   , Fs3 
	.byte		N36   , Fs4 
	.byte	W12
	.byte		N24   , En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En2 
	.byte		N60   , Dn4 
	.byte		N60   , Fs4 
	.byte	W12
@ 111   ----------------------------------------
	.byte		N24   , Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn2 
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W12
@ 112   ----------------------------------------
	.byte		N12   , Cn2 
	.byte		N48   , Cs2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W12
	.byte		N12   , Cn2 
	.byte		N48   , Cs2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cn2 
	.byte		N36   , Gn3 
	.byte		N36   , Gn4 
	.byte	W12
@ 113   ----------------------------------------
	.byte		N24   , Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn3 
	.byte		N36   , Fs3 
	.byte		N36   , Fs4 
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 114   ----------------------------------------
	.byte		N24   , En1 
	.byte		N48   , Bn3 
	.byte		N48   , Gn4 
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N24   , Fs1 
	.byte		N24   , An4 
	.byte		N24   , Dn5 
	.byte	W12
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Fs2 
	.byte		N36   , Gn4 
	.byte		N36   , Bn4 
	.byte	W12
@ 115   ----------------------------------------
	.byte		N24   , Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , An4 
	.byte	W12
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_108
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_109
@ 118   ----------------------------------------
	.byte		N24   , En1 , v044
	.byte		N36   , En4 
	.byte		N36   , Gn4 
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N36   , Dn4 
	.byte		N36   , An4 
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
@ 119   ----------------------------------------
	.byte		N24   , Gn1 
	.byte		N48   , Gn4 
	.byte		N48   , Bn4 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Gn1 
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W12
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N60   , An4 
	.byte		N60   , Cn5 
	.byte	W12
@ 120   ----------------------------------------
	.byte		N24   , An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , An1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An1 
	.byte		N24   , En4 
	.byte		N24   , En5 
	.byte	W12
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N12   
	.byte		N48   , Fs4 
	.byte		N48   , Dn5 
	.byte	W12
@ 121   ----------------------------------------
	.byte		N24   , Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N12   
	.byte		N36   , Gn4 
	.byte	W12
	.byte		N24   , Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Bn2 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Gn4 
	.byte	W12
@ 122   ----------------------------------------
	.byte		N24   , Cn2 
	.byte		N36   , Gn4 
	.byte		N36   , En5 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte		N24   , Fs4 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte		N36   , Gn4 
	.byte	W12
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 123   ----------------------------------------
	.byte		N24   , Dn1 
	.byte		N48   , Fs4 
	.byte		N48   , Dn5 
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn1 
	.byte		N24   , Gn4 
	.byte		N24   , En5 
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An2 
	.byte		N72   , Fs4 
	.byte		N72   , An4 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
@ 124   ----------------------------------------
	.byte		N42   , Dn1 
	.byte		N10   , Fs2 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		N06   , Dn3 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs2 
	.byte		N06   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
@ 125   ----------------------------------------
	.byte		N36   , En1 
	.byte		N48   , Gn2 
	.byte		N48   , Gn3 
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   , Gn1 
	.byte		N36   , Bn2 
	.byte		N36   , Bn3 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N36   , Dn1 
	.byte		N36   , Dn2 
	.byte		N36   , Fs3 
	.byte	W12
@ 126   ----------------------------------------
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , En1 
	.byte		N24   , En2 
	.byte		N24   , Gn3 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs2 
	.byte		N12   , An3 
	.byte	W12
	.byte		N36   , Bn1 
	.byte		N24   , Dn3 
	.byte		N24   , Dn4 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn2 
	.byte		N12   , Gn3 
	.byte	W12
@ 127   ----------------------------------------
	.byte		N24   , Gn1 
	.byte		N36   , Gn2 
	.byte		N36   , En4 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , Fs2 
	.byte		N36   , Dn3 
	.byte		N24   , Dn4 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N36   , Gn1 
	.byte		N36   , Gn2 
	.byte		N36   , Gn3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
@ 128   ----------------------------------------
	.byte		N36   , Gn1 
	.byte		N36   , Bn2 
	.byte		N36   , Dn4 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N36   , Fs1 
	.byte		N36   , An2 
	.byte		N36   , Cn4 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N24   , Fs1 
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
@ 129   ----------------------------------------
	.byte		N60   , Gn1 
	.byte		N60   , Gn2 
	.byte		N60   , Gn3 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N36   , An1 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Gn2 
	.byte		N12   , Gn3 
	.byte	W12
@ 130   ----------------------------------------
	.byte		N24   , Dn1 
	.byte		N24   , Dn2 
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N24   , Gn2 
	.byte		N24   , Gn3 
	.byte	W12
	.byte		N36   , Bn1 
	.byte	W12
	.byte		N12   , Gn2 
	.byte		N12   , An2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N36   , Bn2 
	.byte		N36   , Bn3 
	.byte	W12
@ 131   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , Cn3 
	.byte		N24   , Cn4 
	.byte	W12
	.byte		N36   , Cs2 
	.byte	W12
	.byte		N12   , An2 
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        En1 
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N48   , Gn2 
	.byte		N36   , Dn3 
	.byte		N48   , Gn3 
	.byte	W12
@ 132   ----------------------------------------
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , An2 
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , An1 
	.byte		N24   , An2 
	.byte		N24   , An3 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W12
	.byte		N12   , An2 
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
@ 133   ----------------------------------------
	.byte		N36   , En1 
	.byte		N48   , En3 
	.byte		N48   , Gn4 
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   , Gn1 
	.byte		N36   , Gn3 
	.byte		N36   , Bn4 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N36   , Dn1 
	.byte		N24   , Fs2 
	.byte		N36   , Fs4 
	.byte	W12
@ 134   ----------------------------------------
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , En1 
	.byte		N24   , Gn2 
	.byte		N24   , Gn4 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , An2 
	.byte		N12   , An4 
	.byte	W12
	.byte		N36   , Bn1 
	.byte		N24   , Dn3 
	.byte		N24   , Dn5 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn2 
	.byte		N12   , Gn4 
	.byte	W12
@ 135   ----------------------------------------
	.byte		N36   , Cn2 
	.byte		N60   , En3 
	.byte		N60   , En5 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N36   , Gn1 
	.byte		N24   , Dn3 
	.byte		N48   , Dn5 
	.byte	W12
@ 136   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N36   , Gn1 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Dn3 
	.byte		N36   , Bn4 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N36   , Gn1 
	.byte	W12
	.byte		N12   , Cn3 
	.byte		N12   , Dn3 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Dn5 
	.byte	W12
@ 137   ----------------------------------------
	.byte		N36   , An1 
	.byte		N36   , En3 
	.byte		N36   , En5 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N36   , An1 
	.byte		N24   , Dn3 
	.byte		N24   , Dn5 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte		N24   , Cn3 
	.byte		N24   , Cn5 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   , En2 
	.byte		N60   , Dn3 
	.byte		N60   , Dn5 
	.byte	W12
@ 138   ----------------------------------------
	.byte		N36   , Bn1 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N36   , Bn1 
	.byte	W12
	.byte		N48   , Gn1 
	.byte		N48   , Gn3 
	.byte		N48   , Gn4 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N24   , Bn1 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
@ 139   ----------------------------------------
	.byte		N12   
	.byte		N48   , En3 
	.byte		N48   , En5 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N84   , Cn4 
	.byte		N84   , En5 
	.byte	W12
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W12
@ 140   ----------------------------------------
	.byte		N12   
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , Fs2 
	.byte		N12   , Gn2 
	.byte		N24   , Fs4 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Cn2 
	.byte		TIE   , Fs3 
	.byte		TIE   , An4 
	.byte	W12
@ 141   ----------------------------------------
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 142   ----------------------------------------
	.byte		N24   
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N24   
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N24   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		EOT   
	.byte		N06   , Dn5 
	.byte	W06
	.byte		N24   , Dn3 
	.byte		N06   , Dn5 
	.byte	W24
	.byte		EOT   , Fs3 
@ 143   ----------------------------------------
mus_you_say_run_1_143:
	.byte		N24   , En1 , v044
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N24   , En1 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N24   , En1 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N24   , En1 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W12
	.byte	PEND
@ 144   ----------------------------------------
mus_you_say_run_1_144:
	.byte		N24   , Gn1 , v044
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte	PEND
@ 145   ----------------------------------------
mus_you_say_run_1_145:
	.byte		N06   , Cn2 , v044
	.byte		N24   , Cs2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , Cs2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , Cs2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , Cs2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte	PEND
@ 146   ----------------------------------------
mus_you_say_run_1_146:
	.byte		N24   , Dn1 , v044
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte	PEND
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_143
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_144
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_145
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_146
@ 151   ----------------------------------------
mus_you_say_run_1_151:
	.byte		N12   , En2 , v044
	.byte	W12
	.byte		N36   , En1 
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N36   , En1 
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W12
	.byte	PEND
@ 152   ----------------------------------------
mus_you_say_run_1_152:
	.byte	W12
	.byte		N36   , Gn1 , v044
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N36   , Gn1 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 153   ----------------------------------------
mus_you_say_run_1_153:
	.byte		N12   , Cn2 , v044
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N36   
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N36   , Cs2 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W12
	.byte	PEND
@ 154   ----------------------------------------
mus_you_say_run_1_154:
	.byte	W12
	.byte		N36   , Dn1 , v044
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N36   , Dn1 
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_151
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_152
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_153
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_1_154
@ 159   ----------------------------------------
	.byte		N12   , En2 , v044
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		TIE   
	.byte	W12
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_you_say_run_2:
	.byte	KEYSH , mus_you_say_run_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte		VOL   , 82*mus_you_say_run_mvl/mxv
	.byte		PAN   , c_v-18
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
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte	W96
@ 119   ----------------------------------------
	.byte	W96
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	W96
@ 124   ----------------------------------------
	.byte	W72
	.byte		N12   , En3 , v060
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 125   ----------------------------------------
mus_you_say_run_2_125:
	.byte		N48   , Gn3 , v060
	.byte	W48
	.byte		N36   , Bn3 
	.byte	W36
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 126   ----------------------------------------
mus_you_say_run_2_126:
	.byte	W24
	.byte		N24   , Gn3 , v060
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 127   ----------------------------------------
	.byte		N36   , En4 
	.byte	W36
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N36   , Gn3 
	.byte	W36
@ 128   ----------------------------------------
	.byte		        Dn4 
	.byte	W36
	.byte		        Cn4 
	.byte	W36
	.byte		N24   , Bn3 
	.byte	W24
@ 129   ----------------------------------------
	.byte		N60   , Gn3 
	.byte	W60
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 130   ----------------------------------------
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W12
@ 131   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W12
@ 132   ----------------------------------------
	.byte	W36
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_2_125
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_2_126
@ 135   ----------------------------------------
	.byte		N60   , En4 , v060
	.byte	W60
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W12
@ 136   ----------------------------------------
	.byte	W36
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 137   ----------------------------------------
	.byte		N36   , En4 
	.byte	W36
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N60   , Dn4 
	.byte	W12
@ 138   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn3 
	.byte	W48
@ 139   ----------------------------------------
	.byte		        Gn4 
	.byte	W48
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N84   , En4 
	.byte	W36
@ 140   ----------------------------------------
	.byte	W48
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		TIE   , An4 
	.byte	W12
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 143   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_you_say_run_3:
	.byte	KEYSH , mus_you_say_run_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 64
	.byte		VOL   , 72*mus_you_say_run_mvl/mxv
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
mus_you_say_run_3_017:
	.byte		N06   , En3 , v048
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_you_say_run_3_018:
	.byte	W12
	.byte		N06   , En3 , v048
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_you_say_run_3_019:
	.byte		N06   , En3 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_you_say_run_3_020:
	.byte	W12
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_020
@ 025   ----------------------------------------
mus_you_say_run_3_025:
	.byte		N06   , En4 , v048
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_you_say_run_3_026:
	.byte	W12
	.byte		N06   , En4 , v048
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_you_say_run_3_027:
	.byte		N06   , En4 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_you_say_run_3_028:
	.byte	W12
	.byte		N06   , An4 , v048
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_026
@ 031   ----------------------------------------
mus_you_say_run_3_031:
	.byte		N06   , En5 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_you_say_run_3_032:
	.byte	W12
	.byte		N06   , An4 , v048
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
mus_you_say_run_3_034:
	.byte		N60   , En3 , v048
	.byte	W60
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		TIE   , En3 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn3 
	.byte	W48
@ 037   ----------------------------------------
	.byte		        Cs3 
	.byte	W48
	.byte		EOT   , En3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		        En3 
	.byte	W36
	.byte		N24   , Bn3 
	.byte	W24
@ 039   ----------------------------------------
	.byte		        An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N84   , En3 
	.byte	W48
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_034
@ 043   ----------------------------------------
	.byte		N24   , Gn3 , v048
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N60   , En3 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W48
	.byte		N48   , Bn3 
	.byte	W48
@ 045   ----------------------------------------
	.byte		        An3 
	.byte	W48
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N72   , En3 
	.byte	W12
@ 046   ----------------------------------------
	.byte	W60
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
@ 048   ----------------------------------------
	.byte		TIE   , En4 
	.byte	W96
@ 049   ----------------------------------------
	.byte		N96   , Cs4 
	.byte	W96
	.byte		EOT   , En4 
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
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte		N60   , En3 
	.byte	W60
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N60   , Dn3 
	.byte	W12
@ 067   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs3 
	.byte	W48
@ 068   ----------------------------------------
	.byte		N60   
	.byte	W60
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N72   , En3 
	.byte	W12
@ 069   ----------------------------------------
	.byte	W60
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N72   , Bn3 
	.byte	W72
	.byte		N12   , En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 071   ----------------------------------------
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N48   , Gn3 
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 073   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 074   ----------------------------------------
	.byte		N72   , En4 
	.byte	W72
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N60   , Dn4 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs4 
	.byte	W48
@ 076   ----------------------------------------
	.byte		N72   
	.byte	W72
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W12
@ 077   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N36   , Dn5 
	.byte	W36
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 078   ----------------------------------------
	.byte		N48   , Cn4 
	.byte	W48
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		N48   
	.byte	W12
@ 079   ----------------------------------------
	.byte	W36
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 080   ----------------------------------------
	.byte		N48   , An4 
	.byte	W48
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N48   , Fs4 
	.byte	W12
@ 081   ----------------------------------------
	.byte	W36
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
@ 082   ----------------------------------------
	.byte		N48   , Bn4 
	.byte	W48
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N24   , Bn4 
	.byte	W12
@ 083   ----------------------------------------
	.byte	W12
	.byte		N36   , Gn4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		TIE   , Dn5 
	.byte	W12
@ 084   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 085   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		TIE   , Dn5 
	.byte	W12
@ 086   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte		N08   , Gn2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 091   ----------------------------------------
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 092   ----------------------------------------
mus_you_say_run_3_092:
	.byte		N36   , Gn4 , v048
	.byte	W36
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N36   , An4 
	.byte	W36
	.byte	PEND
@ 093   ----------------------------------------
mus_you_say_run_3_093:
	.byte		N36   , Gn4 , v048
	.byte	W36
	.byte		        Fs4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte	PEND
@ 094   ----------------------------------------
	.byte		N36   , Gn4 
	.byte	W36
	.byte		        Fs4 
	.byte	W36
	.byte		N12   , An4 
	.byte	W12
	.byte		N48   , Fs4 
	.byte	W12
@ 095   ----------------------------------------
	.byte	W36
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N48   , Bn4 
	.byte	W12
@ 096   ----------------------------------------
mus_you_say_run_3_096:
	.byte	W36
	.byte		N36   , An4 , v048
	.byte	W36
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N36   , Gn4 
	.byte	W12
	.byte	PEND
@ 097   ----------------------------------------
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		N48   , Fs4 
	.byte	W60
@ 098   ----------------------------------------
mus_you_say_run_3_098:
	.byte		N48   , Gn4 , v048
	.byte	W48
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N36   , Bn4 
	.byte	W12
	.byte	PEND
@ 099   ----------------------------------------
mus_you_say_run_3_099:
	.byte	W24
	.byte		N24   , An4 , v048
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte	PEND
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_092
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_093
@ 102   ----------------------------------------
mus_you_say_run_3_102:
	.byte		N36   , Gn4 , v048
	.byte	W36
	.byte		        An4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte	PEND
@ 103   ----------------------------------------
mus_you_say_run_3_103:
	.byte		N48   , Bn4 , v048
	.byte	W48
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N60   , Cn5 
	.byte	W12
	.byte	PEND
@ 104   ----------------------------------------
mus_you_say_run_3_104:
	.byte	W48
	.byte		N12   , Gn4 , v048
	.byte	W12
	.byte		N24   , En5 
	.byte	W24
	.byte		N48   , Dn5 
	.byte	W12
	.byte	PEND
@ 105   ----------------------------------------
mus_you_say_run_3_105:
	.byte	W36
	.byte		N36   , Gn4 , v048
	.byte	W36
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	PEND
@ 106   ----------------------------------------
mus_you_say_run_3_106:
	.byte		N36   , En5 , v048
	.byte	W36
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N36   , Gn4 
	.byte	W36
	.byte	PEND
@ 107   ----------------------------------------
	.byte		        Dn5 
	.byte	W36
	.byte		        En5 
	.byte	W36
	.byte		N24   , An4 
	.byte	W24
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_092
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_093
@ 110   ----------------------------------------
	.byte		N36   , Gn4 , v048
	.byte	W36
	.byte		        Fs4 
	.byte	W36
	.byte		N12   , An4 
	.byte	W12
	.byte		N60   , Fs4 
	.byte	W12
@ 111   ----------------------------------------
	.byte	W48
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N48   , Bn4 
	.byte	W12
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_096
@ 113   ----------------------------------------
	.byte	W24
	.byte		N12   , An4 , v048
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_098
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_099
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_092
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_093
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_102
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_103
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_104
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_105
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_106
@ 123   ----------------------------------------
	.byte		N48   , Dn5 , v048
	.byte	W48
	.byte		N24   , En5 
	.byte	W24
	.byte		N72   , An4 
	.byte	W24
@ 124   ----------------------------------------
	.byte	W72
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 125   ----------------------------------------
mus_you_say_run_3_125:
	.byte		N48   , Gn4 , v048
	.byte	W48
	.byte		N36   , Bn4 
	.byte	W36
	.byte		        Fs4 
	.byte	W12
	.byte	PEND
@ 126   ----------------------------------------
mus_you_say_run_3_126:
	.byte	W24
	.byte		N24   , Gn4 , v048
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte	PEND
@ 127   ----------------------------------------
	.byte		N36   , En5 
	.byte	W36
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N36   , Gn4 
	.byte	W36
@ 128   ----------------------------------------
	.byte		        Dn5 
	.byte	W36
	.byte		        Cn5 
	.byte	W36
	.byte		N24   , Bn4 
	.byte	W24
@ 129   ----------------------------------------
	.byte		N60   , Gn4 
	.byte	W60
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 130   ----------------------------------------
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N36   , Bn4 
	.byte	W12
@ 131   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn5 
	.byte	W24
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W12
@ 132   ----------------------------------------
	.byte	W36
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        Bn4 
	.byte	W24
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_125
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_126
@ 135   ----------------------------------------
	.byte		N60   , En5 , v048
	.byte	W60
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N48   , Dn5 
	.byte	W12
@ 136   ----------------------------------------
	.byte	W36
	.byte		N36   , Bn4 
	.byte	W36
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
@ 137   ----------------------------------------
	.byte		N36   , En5 
	.byte	W36
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		N60   , Dn5 
	.byte	W12
@ 138   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn4 
	.byte	W48
@ 139   ----------------------------------------
	.byte		        En5 
	.byte	W48
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N84   , En5 
	.byte	W36
@ 140   ----------------------------------------
	.byte	W48
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		TIE   , An4 
	.byte	W12
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_017
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_018
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_019
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_020
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_017
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_018
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_019
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_020
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_025
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_026
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_027
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_028
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_025
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_026
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_031
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_3_032
@ 159   ----------------------------------------
	.byte		N12   , En4 , v048
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		TIE   
	.byte	W12
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_you_say_run_4:
	.byte	KEYSH , mus_you_say_run_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 94*mus_you_say_run_mvl/mxv
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
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
@ 017   ----------------------------------------
mus_you_say_run_4_017:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_you_say_run_4_018:
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 033   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v060
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
@ 034   ----------------------------------------
mus_you_say_run_4_034:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 036   ----------------------------------------
mus_you_say_run_4_036:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_036
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 040   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 041   ----------------------------------------
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_036
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_036
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 050   ----------------------------------------
mus_you_say_run_4_050:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_you_say_run_4_051:
	.byte		N02   , Cn1 , v080
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte		        En1 , v060
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        En1 , v060
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_050
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_051
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_050
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_051
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_050
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_051
@ 058   ----------------------------------------
mus_you_say_run_4_058:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
mus_you_say_run_4_059:
	.byte		N02   , Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_058
@ 061   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v060
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_058
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_059
@ 064   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Fs1 , v044
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v060
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
@ 066   ----------------------------------------
mus_you_say_run_4_066:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
mus_you_say_run_4_067:
	.byte		N02   , Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_you_say_run_4_068:
	.byte		N02   , Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_067
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_068
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_067
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_068
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_067
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_066
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_067
@ 076   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
@ 077   ----------------------------------------
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
@ 078   ----------------------------------------
mus_you_say_run_4_078:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte	PEND
@ 079   ----------------------------------------
mus_you_say_run_4_079:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte	PEND
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_078
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_079
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_078
@ 083   ----------------------------------------
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W12
@ 084   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
@ 085   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
@ 086   ----------------------------------------
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N02   
	.byte	W12
@ 087   ----------------------------------------
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 088   ----------------------------------------
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
@ 089   ----------------------------------------
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Fs1 , v044
	.byte	W08
	.byte		        En1 , v060
	.byte	W08
	.byte		        Fs1 , v044
	.byte	W08
	.byte		        En1 , v060
	.byte	W08
	.byte		        Fs1 , v044
	.byte	W08
@ 090   ----------------------------------------
	.byte		        Cn1 , v080
	.byte	W96
@ 091   ----------------------------------------
	.byte		N02   
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        En1 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        En1 , v060
	.byte	W12
@ 092   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v060
	.byte		N02   , Fs1 , v056
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
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_034
@ 109   ----------------------------------------
mus_you_say_run_4_109:
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte	PEND
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_036
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_109
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_036
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_109
@ 114   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 115   ----------------------------------------
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_034
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_109
@ 118   ----------------------------------------
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
@ 119   ----------------------------------------
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W24
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_034
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_109
@ 122   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
@ 123   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
@ 124   ----------------------------------------
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 125   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_079
@ 127   ----------------------------------------
mus_you_say_run_4_127:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte	PEND
@ 128   ----------------------------------------
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_127
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_079
@ 131   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 132   ----------------------------------------
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 133   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v060
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        En1 , v060
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 134   ----------------------------------------
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
@ 135   ----------------------------------------
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
@ 136   ----------------------------------------
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 137   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 138   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 139   ----------------------------------------
mus_you_say_run_4_139:
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte	PEND
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_139
@ 141   ----------------------------------------
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
@ 142   ----------------------------------------
	.byte		N02   
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_017
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_you_say_run_4_018
@ 159   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte	W24
	.byte		N02   
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v056
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_you_say_run:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_you_say_run_pri	@ Priority
	.byte	mus_you_say_run_rev	@ Reverb.

	.word	mus_you_say_run_grp

	.word	mus_you_say_run_1
	.word	mus_you_say_run_2
	.word	mus_you_say_run_3
	.word	mus_you_say_run_4

	.end
