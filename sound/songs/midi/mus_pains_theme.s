	.include "MPlayDef.s"

	.equ	mus_pains_theme_grp, voicegroup_pains_theme
	.equ	mus_pains_theme_pri, 0
	.equ	mus_pains_theme_rev, reverb_set+50
	.equ	mus_pains_theme_mvl, 100
	.equ	mus_pains_theme_key, 0
	.equ	mus_pains_theme_tbs, 1
	.equ	mus_pains_theme_exg, 1
	.equ	mus_pains_theme_cmp, 1

	.section .rodata
	.global	mus_pains_theme
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_pains_theme_1:
	.byte	KEYSH , mus_pains_theme_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 60*mus_pains_theme_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_pains_theme_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N96   , An0 , v064
	.byte	W96
@ 002   ----------------------------------------
	.byte	W36
	.byte		N48   , Dn2 , v068
	.byte	W60
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W12
	.byte		N24   , An1 
	.byte	W24
	.byte		N48   , Dn2 
	.byte	W48
	.byte		N60   , An1 
	.byte	W12
@ 006   ----------------------------------------
	.byte	W72
	.byte		N48   , Gn1 , v072
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
	.byte		N72   , An1 , v068
	.byte	W72
@ 008   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 009   ----------------------------------------
	.byte	W36
	.byte		TIE   , An0 , v064
	.byte	W60
@ 010   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 011   ----------------------------------------
	.byte	W24
	.byte		N60   , An0 , v068
	.byte	W72
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W48
	.byte		TIE   
	.byte	W48
@ 014   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 015   ----------------------------------------
	.byte	W96
mus_pains_theme_1_B1:
@ 016   ----------------------------------------
	.byte	TEMPO , 60*mus_pains_theme_tbs/2
	.byte		N12   , An0 , v076
	.byte	W12
	.byte		        An0 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   , An0 , v064
	.byte	W36
	.byte		N12   , An0 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
@ 017   ----------------------------------------
mus_pains_theme_1_017:
	.byte		N12   , An0 , v076
	.byte	W12
	.byte		N36   , An0 , v064
	.byte	W36
	.byte		N12   , An0 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   , An0 , v052
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_pains_theme_1_018:
	.byte	W24
	.byte		N12   , An0 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   , An0 , v064
	.byte	W36
	.byte	PEND
@ 019   ----------------------------------------
mus_pains_theme_1_019:
	.byte		N12   , An0 , v076
	.byte	W12
	.byte		        An0 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N48   , An0 , v064
	.byte	W48
	.byte		N12   , An0 , v072
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_pains_theme_1_020:
	.byte		N12   , An0 , v076
	.byte	W12
	.byte		        An0 , v072
	.byte	W12
	.byte		N72   , An0 , v064
	.byte	W72
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N12   , An0 , v076
	.byte	W12
	.byte		        An0 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N60   , An0 , v052
	.byte	W60
@ 022   ----------------------------------------
mus_pains_theme_1_022:
	.byte		N12   , An0 , v076
	.byte	W12
	.byte		        An0 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N60   
	.byte	W60
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_1_022
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_1_019
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_1_020
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_1_019
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_1_020
@ 028   ----------------------------------------
	.byte		N12   , An0 , v076
	.byte	W12
	.byte		        An0 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   , An0 , v064
	.byte	W36
	.byte		N12   , An0 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_1_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_1_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_1_022
	.byte	GOTO
	 .word	mus_pains_theme_1_B1
mus_pains_theme_1_B2:
@ 032   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_pains_theme_2:
	.byte	KEYSH , mus_pains_theme_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 50*mus_pains_theme_mvl/mxv
	.byte		PAN   , c_v-10
	.byte	W96
@ 001   ----------------------------------------
	.byte	W12
	.byte		N24   , Cn3 , v044
	.byte		N12   , Cn4 
	.byte	W24
	.byte		N48   , Fs2 
	.byte		N36   , Dn4 
	.byte	W48
	.byte		N60   , Cn3 
	.byte		N48   , Cn4 
	.byte	W12
@ 002   ----------------------------------------
	.byte	W48
	.byte		N24   , Cn3 , v048
	.byte		N12   , Cn4 
	.byte	W24
	.byte		N48   , Bn2 , v044
	.byte		N36   , Dn4 
	.byte	W24
@ 003   ----------------------------------------
	.byte	W24
	.byte		N72   , Cn3 
	.byte		N72   , Cn4 
	.byte	W72
@ 004   ----------------------------------------
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N48   , Fs2 
	.byte		N36   , Dn3 
	.byte	W48
	.byte		N60   , Cn2 
	.byte		N48   , Cn3 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W72
	.byte		        Bn1 
	.byte		N36   , Bn2 
	.byte	W24
@ 006   ----------------------------------------
	.byte	W24
	.byte		N72   , Cn2 
	.byte		N72   , An2 
	.byte	W72
@ 007   ----------------------------------------
	.byte		N96   , An2 , v056
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
mus_pains_theme_2_B1:
@ 015   ----------------------------------------
mus_pains_theme_2_015:
	.byte		N12   , An1 , v060
	.byte	W12
	.byte		        An1 , v056
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   , An1 , v052
	.byte	W36
	.byte		N12   , An1 , v056
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_pains_theme_2_016:
	.byte		N12   , An1 , v060
	.byte	W12
	.byte		N36   , An1 , v052
	.byte	W36
	.byte		N12   , An1 , v060
	.byte	W12
	.byte		        An1 , v056
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   , An1 , v044
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_pains_theme_2_017:
	.byte	W24
	.byte		N12   , An1 , v056
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 , v060
	.byte	W12
	.byte		N36   , An1 , v052
	.byte	W36
	.byte	PEND
@ 018   ----------------------------------------
mus_pains_theme_2_018:
	.byte		N12   , An1 , v060
	.byte	W12
	.byte		        An1 , v056
	.byte		N12   , Cn4 , v044
	.byte	W12
	.byte		        An1 , v056
	.byte	W12
	.byte		N48   , An1 , v052
	.byte		N36   , Dn4 , v044
	.byte	W48
	.byte		N12   , An1 , v056
	.byte		TIE   , Cn4 , v044
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 020   ----------------------------------------
	.byte		N12   , An1 , v060
	.byte		N12   , An3 , v048
	.byte	W12
	.byte		        An1 , v056
	.byte		N12   , Cn4 , v044
	.byte	W12
	.byte		        An1 , v056
	.byte	W12
	.byte		N60   , An1 , v044
	.byte		N48   , Dn4 
	.byte	W60
@ 021   ----------------------------------------
	.byte		N12   , An1 , v060
	.byte		N96   , Cn4 , v044
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_2_018
@ 024   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
@ 025   ----------------------------------------
	.byte		N12   , An1 , v060
	.byte		N12   , Cn4 , v048
	.byte	W12
	.byte		        An1 , v056
	.byte		N12   , Dn4 , v044
	.byte	W12
	.byte		        An1 , v056
	.byte		N12   , En4 , v044
	.byte	W12
	.byte		N48   , An1 , v052
	.byte		N36   , Dn4 , v044
	.byte	W48
	.byte		N12   , An1 , v056
	.byte		TIE   , En3 , v044
	.byte	W12
@ 026   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_2_015
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_2_016
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_2_017
@ 030   ----------------------------------------
	.byte		N12   , An1 , v060
	.byte	W96
	.byte	GOTO
	 .word	mus_pains_theme_2_B1
mus_pains_theme_2_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_pains_theme_3:
	.byte	KEYSH , mus_pains_theme_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 100*mus_pains_theme_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N96   , An2 , v068
	.byte	W96
@ 001   ----------------------------------------
	.byte		N12   , An3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 , v064
	.byte	W12
	.byte		N36   , Fs4 , v068
	.byte	W36
	.byte		N12   , Dn4 , v064
	.byte	W12
	.byte		N48   , En4 
	.byte	W12
@ 002   ----------------------------------------
	.byte	W36
	.byte		N12   , Cn4 , v068
	.byte	W12
	.byte		        En4 , v072
	.byte	W12
	.byte		        Dn4 , v064
	.byte	W12
	.byte		N36   , Gn4 
	.byte	W24
@ 003   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N72   , En4 , v068
	.byte	W72
@ 004   ----------------------------------------
	.byte		N12   , An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 , v064
	.byte	W12
	.byte		N36   , Fs3 , v068
	.byte	W36
	.byte		N12   , Dn3 , v064
	.byte	W12
	.byte		N48   , En3 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W36
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W24
@ 006   ----------------------------------------
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N72   , Cn3 , v068
	.byte	W72
@ 007   ----------------------------------------
	.byte		N12   , An3 
	.byte	W12
	.byte		        En4 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Gn3 , v068
	.byte	W12
	.byte		N24   , An3 , v064
	.byte	W24
	.byte		N48   , An2 , v068
	.byte	W48
	.byte		N12   , An3 , v064
	.byte	W12
@ 009   ----------------------------------------
	.byte		        En4 , v068
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N24   , An3 
	.byte	W24
	.byte		N48   , An2 
	.byte	W48
	.byte		N12   , An3 , v068
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        An3 , v072
	.byte	W12
	.byte		        Gn3 , v068
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 , v072
	.byte	W12
	.byte		        Bn3 , v068
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N60   , An3 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W48
	.byte		N12   , An2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 013   ----------------------------------------
	.byte		        Gn3 , v072
	.byte	W12
	.byte		        Cn4 , v068
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 , v072
	.byte	W12
	.byte		        Bn3 , v068
	.byte	W12
	.byte		N72   , An3 
	.byte	W24
@ 014   ----------------------------------------
	.byte	W96
mus_pains_theme_3_B1:
@ 015   ----------------------------------------
mus_pains_theme_3_015:
	.byte		N06   , An2 , v068
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
mus_pains_theme_3_016:
	.byte		N06   , Cn3 , v068
	.byte	W06
	.byte		        An2 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
mus_pains_theme_3_017:
	.byte		N06   , Cn3 , v068
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
mus_pains_theme_3_018:
	.byte		N12   , An4 , v068
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 , v064
	.byte	W12
	.byte		N36   , Fs4 , v068
	.byte	W36
	.byte		N12   , Dn5 , v064
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_pains_theme_3_019:
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		        An2 , v068
	.byte	W12
	.byte		N72   , An2 , v064
	.byte	W72
	.byte	PEND
@ 020   ----------------------------------------
	.byte		N12   , Cn5 , v072
	.byte	W12
	.byte		        En5 , v068
	.byte	W12
	.byte		        Dn5 , v064
	.byte	W12
	.byte		N48   , Gn4 , v056
	.byte	W48
	.byte		N12   , Fs4 , v064
	.byte	W12
@ 021   ----------------------------------------
	.byte		        En5 , v068
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N60   
	.byte	W60
@ 022   ----------------------------------------
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		        An2 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N60   
	.byte	W60
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_3_018
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_3_019
@ 025   ----------------------------------------
	.byte		N12   , Cn5 , v072
	.byte	W12
	.byte		        Dn5 , v068
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N36   , Gn4 
	.byte	W36
	.byte		N12   , An3 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_3_019
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_3_015
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_3_016
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_pains_theme_3_017
@ 030   ----------------------------------------
	.byte		N12   , An4 , v064
	.byte	W12
	.byte		        An2 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N60   
	.byte	W60
	.byte	GOTO
	 .word	mus_pains_theme_3_B1
mus_pains_theme_3_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_pains_theme_4:
	.byte	KEYSH , mus_pains_theme_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 72*mus_pains_theme_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W36
	.byte		N48   , Dn1 , v052
	.byte	W60
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W12
	.byte		N24   , An0 
	.byte	W24
	.byte		N48   , Dn1 
	.byte	W48
	.byte		N60   , An0 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W24
	.byte		N72   
	.byte	W72
@ 007   ----------------------------------------
	.byte		N96   
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
mus_pains_theme_4_B1:
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
	.byte	GOTO
	 .word	mus_pains_theme_4_B1
mus_pains_theme_4_B2:
@ 031   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_pains_theme:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_pains_theme_pri	@ Priority
	.byte	mus_pains_theme_rev	@ Reverb.

	.word	mus_pains_theme_grp

	.word	mus_pains_theme_1
	.word	mus_pains_theme_2
	.word	mus_pains_theme_3
	.word	mus_pains_theme_4

	.end
