	.include "MPlayDef.s"

	.equ	mus_twilight_princess_title_grp, voicegroup_brothers
	.equ	mus_twilight_princess_title_pri, 0
	.equ	mus_twilight_princess_title_rev, reverb_set+20
	.equ	mus_twilight_princess_title_mvl, 90
	.equ	mus_twilight_princess_title_key, 0
	.equ	mus_twilight_princess_title_tbs, 1
	.equ	mus_twilight_princess_title_exg, 0
	.equ	mus_twilight_princess_title_cmp, 1

	.section .rodata
	.global	mus_twilight_princess_title
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_twilight_princess_title_1:
	.byte	KEYSH , mus_twilight_princess_title_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 140*mus_twilight_princess_title_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 88*mus_twilight_princess_title_mvl/mxv
	.byte		PAN   , c_v-10
	.byte		TIE   , Cs3 , v052
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 002   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 004   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 006   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 008   ----------------------------------------
	.byte		TIE   , As2 
	.byte		TIE   , Dn3 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   , As2 
	.byte		        Dn3 
@ 010   ----------------------------------------
	.byte		TIE   , An2 
	.byte		TIE   , Cn3 
	.byte	W96
@ 011   ----------------------------------------
	.byte	W48
	.byte		EOT   , An2 
	.byte		        Cn3 
	.byte		N48   , Fn2 
	.byte		N48   , Cn3 
	.byte	W48
@ 012   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte		N96   , As2 
	.byte		TIE   , Dn3 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , Cn3 
	.byte	W48
	.byte		EOT   , Gn2 
@ 014   ----------------------------------------
	.byte		TIE   , En2 
	.byte		N92   , An2 
	.byte		TIE   , Cn3 
	.byte	W78
	.byte	W01
	.byte		N16   , An2 
	.byte	W16
	.byte		        As2 
	.byte	W01
@ 015   ----------------------------------------
	.byte	W15
	.byte		        Cn3 
	.byte	W16
	.byte		EOT   
	.byte		N16   , Dn3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		        Fn3 , v056
	.byte	W16
	.byte		        Gn3 , v060
	.byte	W17
	.byte		EOT   , En2 
@ 016   ----------------------------------------
	.byte		TIE   , As1 , v052
	.byte		TIE   , Dn3 
	.byte		TIE   , An3 , v060
	.byte	W96
@ 017   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , Dn4 
	.byte	W48
	.byte		EOT   , As1 
	.byte		        Dn3 
@ 018   ----------------------------------------
	.byte		TIE   , An1 , v052
	.byte		TIE   , Cn3 
	.byte		N72   , An3 , v060
	.byte	W72
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N48   , En3 
	.byte	W48
	.byte		        Cn3 
	.byte	W48
	.byte		EOT   , An1 
	.byte		        Cn3 
@ 020   ----------------------------------------
	.byte		N96   , Gn1 , v052
	.byte		N96   , As2 
	.byte		N96   , Dn3 , v060
	.byte	W96
@ 021   ----------------------------------------
	.byte		        An1 , v052
	.byte		N96   , An2 
	.byte		N96   , En3 , v060
	.byte	W96
@ 022   ----------------------------------------
	.byte		TIE   , As1 , v052
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn3 , v060
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
	.byte		EOT   , As1 
	.byte		        Dn3 
	.byte		        Fn3 
@ 024   ----------------------------------------
	.byte		TIE   , Cn2 , v052
	.byte		TIE   , En3 
	.byte		TIE   , Gn3 , v060
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        En3 
	.byte		        Gn3 
@ 026   ----------------------------------------
	.byte		TIE   , Dn2 , v052
	.byte		TIE   , Dn3 
	.byte		TIE   , An3 , v060
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte		N24   , Dn3 , v052
	.byte	W24
	.byte		EOT   
	.byte	W24
	.byte		N48   , En3 
	.byte	W48
@ 029   ----------------------------------------
	.byte		N24   , Dn3 
	.byte	W48
	.byte		N48   , En3 
	.byte	W48
@ 030   ----------------------------------------
	.byte		N24   , Dn3 
	.byte	W48
	.byte		        Fn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N36   , Gn3 
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		TIE   , En3 
	.byte	W24
@ 032   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 033   ----------------------------------------
	.byte	W96
	.byte		        Dn2 
	.byte		        An3 
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_twilight_princess_title_2:
	.byte	KEYSH , mus_twilight_princess_title_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 94*mus_twilight_princess_title_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		TIE   , An3 , v064
	.byte	W96
@ 001   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N24   , En3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 002   ----------------------------------------
mus_twilight_princess_title_2_002:
	.byte		N12   , Gn3 , v064
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		TIE   , Gn3 
	.byte	W72
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte	W24
@ 004   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N24   , En3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_twilight_princess_title_2_002
@ 007   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gn3 
	.byte	W24
@ 008   ----------------------------------------
	.byte		TIE   , An3 , v064
	.byte	W96
@ 009   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 010   ----------------------------------------
mus_twilight_princess_title_2_010:
	.byte		N12   , Gn3 , v064
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		TIE   , En3 
	.byte	W72
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , Cn3 
	.byte	W48
@ 012   ----------------------------------------
	.byte		        Dn3 
	.byte	W48
	.byte		N72   , An3 
	.byte	W48
@ 013   ----------------------------------------
	.byte	W24
	.byte		N48   , Fn3 
	.byte	W48
	.byte		N24   , Cn4 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		TIE   , En3 
	.byte	W72
@ 015   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 016   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_twilight_princess_title_2_010
@ 019   ----------------------------------------
	.byte	W48
	.byte		EOT   , En3 
	.byte		N48   , Cn3 , v064
	.byte	W48
@ 020   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N72   , Fn3 
	.byte	W72
@ 021   ----------------------------------------
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N72   , Gn3 
	.byte	W72
@ 022   ----------------------------------------
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W72
@ 023   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 024   ----------------------------------------
	.byte		N16   , Fn3 
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N96   , Cn4 
	.byte	W48
@ 025   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 026   ----------------------------------------
	.byte		TIE   , Dn4 
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
mus_twilight_princess_title_2_028:
	.byte		N24   , Dn3 , v064
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N48   , En3 
	.byte	W48
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_twilight_princess_title_2_028
@ 030   ----------------------------------------
	.byte		N24   , Dn3 , v064
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N36   , Gn3 
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		TIE   , En3 
	.byte	W24
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
	.byte		EOT   
	.byte		EOT   , Dn4 
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_twilight_princess_title_3:
	.byte	KEYSH , mus_twilight_princess_title_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 78*mus_twilight_princess_title_mvl/mxv
	.byte		PAN   , c_v-18
	.byte		TIE   , An3 , v052
	.byte	W96
@ 001   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N24   , En3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 002   ----------------------------------------
mus_twilight_princess_title_3_002:
	.byte		N12   , Gn3 , v052
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		TIE   , Gn3 
	.byte	W72
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte	W24
@ 004   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N24   , En3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_twilight_princess_title_3_002
@ 007   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gn3 
	.byte	W24
@ 008   ----------------------------------------
	.byte		TIE   , An3 , v052
	.byte	W96
@ 009   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 010   ----------------------------------------
mus_twilight_princess_title_3_010:
	.byte		N12   , Gn3 , v052
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		TIE   , En3 
	.byte	W72
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , Cn3 
	.byte	W48
@ 012   ----------------------------------------
	.byte		        Dn3 
	.byte	W48
	.byte		N72   , An3 
	.byte	W48
@ 013   ----------------------------------------
	.byte	W24
	.byte		N48   , Fn3 
	.byte	W48
	.byte		N24   , Cn4 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		TIE   , En3 
	.byte	W72
@ 015   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 016   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_twilight_princess_title_3_010
@ 019   ----------------------------------------
	.byte	W48
	.byte		EOT   , En3 
	.byte		N48   , Cn3 , v052
	.byte	W48
@ 020   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N72   , Fn3 
	.byte	W72
@ 021   ----------------------------------------
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N72   , Gn3 
	.byte	W72
@ 022   ----------------------------------------
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W72
@ 023   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 024   ----------------------------------------
	.byte		N16   , Fn3 
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N96   , Cn4 
	.byte	W48
@ 025   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 026   ----------------------------------------
	.byte		TIE   , Dn4 
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
	.byte		EOT   
@ 034   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_twilight_princess_title:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_twilight_princess_title_pri	@ Priority
	.byte	mus_twilight_princess_title_rev	@ Reverb.

	.word	mus_twilight_princess_title_grp

	.word	mus_twilight_princess_title_1
	.word	mus_twilight_princess_title_2
	.word	mus_twilight_princess_title_3

	.end
