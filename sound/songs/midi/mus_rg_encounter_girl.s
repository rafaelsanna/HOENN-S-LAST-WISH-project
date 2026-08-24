	.include "MPlayDef.s"

	.equ	mus_rg_encounter_girl_grp, voicegroup_rg_encounter_girl
	.equ	mus_rg_encounter_girl_pri, 0
	.equ	mus_rg_encounter_girl_rev, reverb_set+50
	.equ	mus_rg_encounter_girl_mvl, 84
	.equ	mus_rg_encounter_girl_key, 0
	.equ	mus_rg_encounter_girl_tbs, 1
	.equ	mus_rg_encounter_girl_exg, 1
	.equ	mus_rg_encounter_girl_cmp, 1

	.section .rodata
	.global	mus_rg_encounter_girl
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_rg_encounter_girl_1:
	.byte	KEYSH , mus_rg_encounter_girl_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 280*mus_rg_encounter_girl_tbs/2
	.byte		VOICE , 4
	.byte		VOL   , 127*mus_rg_encounter_girl_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N23   , An3 , v127
	.byte	W24
	.byte		N68   , An3 , v127, gtp3
	.byte		N68   , An4 , v127, gtp3
	.byte	W72
@ 002   ----------------------------------------
mus_rg_encounter_girl_1_002:
	.byte	W24
	.byte		N23   , Fs4 , v127
	.byte		N23   , An4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte		N11   , As4 
	.byte	W12
	.byte		N23   , Cn4 
	.byte		N23   , Bn4 
	.byte	W24
	.byte		N56   , Gn4 , v127, gtp3
	.byte		N56   , Dn5 , v127, gtp3
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_rg_encounter_girl_1_003:
	.byte	W48
	.byte		N44   , Gn4 , v127, gtp3
	.byte		N44   , Dn5 , v127, gtp3
	.byte	W48
	.byte	PEND
mus_rg_encounter_girl_1_B1:
@ 004   ----------------------------------------
mus_rg_encounter_girl_1_004:
	.byte		N32   , As4 , v127, gtp3
	.byte		N32   , Fs5 , v127, gtp3
	.byte	W36
	.byte		        Fs4 , v127, gtp3
	.byte		N32   , En5 , v127, gtp3
	.byte	W36
	.byte		N23   , As4 
	.byte		N23   , Fs5 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N32   , An4 , v127, gtp3
	.byte		N32   , En5 , v127, gtp3
	.byte	W36
	.byte		        En4 , v127, gtp3
	.byte		N32   , Dn5 , v127, gtp3
	.byte	W36
	.byte		N44   , En4 , v127, gtp3
	.byte		N44   , Dn5 , v127, gtp3
	.byte	W24
@ 006   ----------------------------------------
	.byte	W24
	.byte		N23   , Ds4 
	.byte		N23   , An4 
	.byte	W24
	.byte		N11   , En4 
	.byte		N11   , As4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte		N23   , Bn4 
	.byte	W24
	.byte		N56   , En3 , v127, gtp3
	.byte		N56   , Dn4 , v127, gtp3
	.byte	W12
@ 007   ----------------------------------------
	.byte	W48
	.byte		N44   , En3 , v127, gtp3
	.byte		N44   , Dn4 , v127, gtp3
	.byte	W48
@ 008   ----------------------------------------
	.byte		N32   , Fs3 , v127, gtp3
	.byte		N32   , Cs4 , v127, gtp3
	.byte	W36
	.byte		        As3 , v127, gtp3
	.byte		N32   , Dn4 , v127, gtp3
	.byte	W36
	.byte		N23   , Fs3 
	.byte		N23   , Cs4 
	.byte	W24
@ 009   ----------------------------------------
	.byte		N32   , En3 , v127, gtp3
	.byte		N32   , Bn3 , v127, gtp3
	.byte	W36
	.byte		        Cs3 , v127, gtp3
	.byte		N32   , An3 , v127, gtp3
	.byte	W36
	.byte		N44   , An3 , v127, gtp3
	.byte		N44   , Fs4 , v127, gtp3
	.byte	W24
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_1_004
@ 013   ----------------------------------------
	.byte		N11   , An4 , v127
	.byte		N11   , En5 
	.byte	W12
	.byte		N23   , An4 
	.byte		N23   , En5 
	.byte	W24
	.byte		N11   , Cs5 
	.byte		N11   , An5 
	.byte	W12
	.byte		N23   , Cs5 
	.byte		N23   , An5 
	.byte	W24
	.byte		N44   , En4 , v127, gtp3
	.byte		N44   , Dn5 , v127, gtp3
	.byte	W24
@ 014   ----------------------------------------
	.byte	W24
	.byte		N23   , Fs4 
	.byte		N23   , An4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte		N11   , As4 
	.byte	W12
	.byte		N23   , Cn4 
	.byte		N23   , Bn4 
	.byte	W24
	.byte		N44   , Gn4 , v127, gtp3
	.byte		N44   , Dn5 , v127, gtp3
	.byte	W12
@ 015   ----------------------------------------
	.byte	W36
	.byte		N32   , En5 , v127, gtp3
	.byte		N32   , An5 , v127, gtp3
	.byte	W36
	.byte		N11   , Gn4 
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        Gn4 
	.byte		N11   , Dn5 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N23   , An4 
	.byte		N23   , Fs5 
	.byte	W24
	.byte		N11   , Bn4 
	.byte		N11   , Gn5 
	.byte	W12
	.byte		        Cs5 
	.byte		N11   , Gs5 
	.byte	W12
	.byte		        Dn5 
	.byte		N11   , An5 
	.byte	W12
	.byte		N23   , Bn4 
	.byte		N23   , Dn5 
	.byte	W24
	.byte		N32   , An4 , v127, gtp3
	.byte		N32   , Dn5 , v127, gtp3
	.byte	W12
@ 017   ----------------------------------------
	.byte	W24
	.byte		N11   , An4 
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        An4 
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        An4 
	.byte		N11   , Fs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N11   , Gn5 
	.byte	W12
	.byte		        Cn5 
	.byte		N11   , Gs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N11   , An5 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Cs4 
	.byte		N11   , An4 
	.byte	W12
	.byte		N11   
	.byte		N11   , An5 
	.byte	W12
	.byte		        Cs4 
	.byte		N11   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N11   , An4 
	.byte	W12
	.byte		        Fn4 
	.byte		N11   , As4 
	.byte	W12
	.byte		N23   , Cn4 
	.byte		N23   , Bn4 
	.byte	W24
	.byte		N56   , Gn4 , v127, gtp3
	.byte		N56   , Dn5 , v127, gtp3
	.byte	W12
@ 019   ----------------------------------------
	.byte	W48
	.byte		N44   , Gn4 , v127, gtp3
	.byte		N44   , Dn5 , v127, gtp3
	.byte	W44
	.byte	W03
	.byte		VOICE , 4
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_encounter_girl_1_B1
mus_rg_encounter_girl_1_B2:
@ 020   ----------------------------------------
	.byte		VOICE , 4
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_rg_encounter_girl_2:
	.byte	KEYSH , mus_rg_encounter_girl_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 85
	.byte		VOL   , 100*mus_rg_encounter_girl_mvl/mxv
	.byte		PAN   , c_v+34
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W72
	.byte		N05   , An3 , v060
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        An3 , v060
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
@ 001   ----------------------------------------
mus_rg_encounter_girl_2_001:
	.byte		N05   , An4 , v060
	.byte	W06
	.byte		        An4 , v040
	.byte	W06
	.byte		        An5 , v060
	.byte	W06
	.byte		        An5 , v040
	.byte	W06
	.byte		        An5 , v060
	.byte	W06
	.byte		        An5 , v040
	.byte	W06
	.byte		        An4 , v060
	.byte	W06
	.byte		        An4 , v040
	.byte	W06
	.byte		        Fn3 , v060
	.byte	W06
	.byte		        Fn3 , v040
	.byte	W06
	.byte		        Fn3 , v060
	.byte	W06
	.byte		        Fn3 , v040
	.byte	W06
	.byte		        Fn3 , v060
	.byte	W06
	.byte		        Fn3 , v040
	.byte	W06
	.byte		        Fn3 , v060
	.byte	W06
	.byte		        Fn3 , v040
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_rg_encounter_girl_2_002:
	.byte		N05   , En3 , v060
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        En3 , v060
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        Bn3 , v060
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        Bn3 , v060
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        Gn3 , v060
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Dn4 , v060
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W06
	.byte		        Dn5 , v040
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W06
	.byte		        Dn5 , v040
	.byte	W06
	.byte	PEND
mus_rg_encounter_girl_2_B1:
@ 003   ----------------------------------------
mus_rg_encounter_girl_2_003:
	.byte		N05   , Gn3 , v060
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Gn3 , v060
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Dn4 , v060
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        Dn4 , v060
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        As3 , v060
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		        Fs4 , v060
	.byte	W06
	.byte		        Fs4 , v040
	.byte	W06
	.byte		        Fs5 , v060
	.byte	W06
	.byte		        Fs5 , v040
	.byte	W06
	.byte		        Fs5 , v060
	.byte	W06
	.byte		        Fs5 , v040
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_rg_encounter_girl_2_004:
	.byte		N05   , Fs3 , v060
	.byte	W06
	.byte		        Fs3 , v040
	.byte	W06
	.byte		        Fs3 , v060
	.byte	W06
	.byte		        Fs3 , v040
	.byte	W06
	.byte		        En4 , v060
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        En4 , v060
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        An3 , v060
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Cs4 , v060
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W06
	.byte		        Cs5 , v060
	.byte	W06
	.byte		        Cs5 , v040
	.byte	W06
	.byte		        Cs5 , v060
	.byte	W06
	.byte		        Cs5 , v040
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_rg_encounter_girl_2_005:
	.byte		N05   , Fn3 , v060
	.byte	W06
	.byte		        Fn3 , v040
	.byte	W06
	.byte		        Fn3 , v060
	.byte	W06
	.byte		        Fn3 , v040
	.byte	W06
	.byte		        Ds4 , v060
	.byte	W06
	.byte		        Ds4 , v040
	.byte	W06
	.byte		        Ds4 , v060
	.byte	W06
	.byte		        Ds4 , v040
	.byte	W06
	.byte		        Gs3 , v060
	.byte	W06
	.byte		        Gs3 , v040
	.byte	W06
	.byte		        Cn4 , v060
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_2_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_2_005
@ 010   ----------------------------------------
	.byte		N05   , Dn4 , v060
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        En5 , v060
	.byte	W06
	.byte		        En5 , v040
	.byte	W06
	.byte		        Gn5 , v060
	.byte	W06
	.byte		        Gn5 , v040
	.byte	W06
	.byte		        Bn5 , v060
	.byte	W06
	.byte		        Bn5 , v040
	.byte	W06
	.byte		        Dn6 , v060
	.byte	W06
	.byte		        Dn6 , v040
	.byte	W06
	.byte		        Fs6 , v060
	.byte	W06
	.byte		        Fs6 , v040
	.byte	W06
	.byte		        Dn6 , v060
	.byte	W06
	.byte		        Dn6 , v040
	.byte	W06
	.byte		        Dn6 , v060
	.byte	W06
	.byte		        Dn6 , v040
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Fs4 , v060
	.byte	W06
	.byte		        Fs4 , v040
	.byte	W06
	.byte		        Gn5 , v060
	.byte	W06
	.byte		        Gn5 , v040
	.byte	W06
	.byte		        As5 , v060
	.byte	W06
	.byte		        As5 , v040
	.byte	W06
	.byte		        Dn6 , v060
	.byte	W06
	.byte		        Dn6 , v040
	.byte	W06
	.byte		        Fs6 , v060
	.byte	W06
	.byte		        Fs6 , v040
	.byte	W06
	.byte		        An6 , v060
	.byte	W06
	.byte		        An6 , v040
	.byte	W06
	.byte		        Dn6 , v060
	.byte	W06
	.byte		        Dn6 , v040
	.byte	W06
	.byte		        Dn6 , v060
	.byte	W06
	.byte		        Dn6 , v040
	.byte	W06
@ 012   ----------------------------------------
	.byte		        En4 , v060
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        Fs5 , v060
	.byte	W06
	.byte		        Fs5 , v040
	.byte	W06
	.byte		        An5 , v060
	.byte	W06
	.byte		        An5 , v040
	.byte	W06
	.byte		        Cs6 , v060
	.byte	W06
	.byte		        Cs6 , v040
	.byte	W06
	.byte		        En6 , v060
	.byte	W06
	.byte		        En6 , v040
	.byte	W06
	.byte		        Gs6 , v060
	.byte	W06
	.byte		        Gs6 , v040
	.byte	W06
	.byte		        Cs6 , v060
	.byte	W06
	.byte		        Cs6 , v040
	.byte	W06
	.byte		        Cs6 , v060
	.byte	W06
	.byte		        Cs6 , v040
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Ds4 , v060
	.byte	W06
	.byte		        Ds4 , v040
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Gs5 , v060
	.byte	W06
	.byte		        Gs5 , v040
	.byte	W06
	.byte		        Cn6 , v060
	.byte	W06
	.byte		        Cn6 , v040
	.byte	W06
	.byte		        Ds6 , v060
	.byte	W06
	.byte		        Ds6 , v040
	.byte	W06
	.byte		        Gn6 , v060
	.byte	W06
	.byte		        Gn6 , v040
	.byte	W06
	.byte		        Cn6 , v060
	.byte	W06
	.byte		        Cn6 , v040
	.byte	W06
	.byte		        Cn6 , v060
	.byte	W06
	.byte		        Cn6 , v040
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Gn6 , v060
	.byte	W06
	.byte		        Gn6 , v040
	.byte	W06
	.byte		        Fs6 , v060
	.byte	W06
	.byte		        Fs6 , v040
	.byte	W06
	.byte		        Dn6 , v060
	.byte	W06
	.byte		        Dn6 , v040
	.byte	W06
	.byte		        Bn5 , v060
	.byte	W06
	.byte		        Bn5 , v040
	.byte	W06
	.byte		        Gn5 , v060
	.byte	W06
	.byte		        Gn5 , v040
	.byte	W06
	.byte		        Bn5 , v060
	.byte	W06
	.byte		        Bn5 , v040
	.byte	W06
	.byte		        Dn6 , v060
	.byte	W06
	.byte		        Dn6 , v040
	.byte	W06
	.byte		        Fs6 , v060
	.byte	W06
	.byte		        Fs6 , v040
	.byte	W06
@ 015   ----------------------------------------
	.byte		        An6 , v060
	.byte	W06
	.byte		        An6 , v040
	.byte	W06
	.byte		        Fs6 , v060
	.byte	W06
	.byte		        Fs6 , v040
	.byte	W06
	.byte		        Dn6 , v060
	.byte	W06
	.byte		        Dn6 , v040
	.byte	W06
	.byte		        As5 , v060
	.byte	W06
	.byte		        As5 , v040
	.byte	W06
	.byte		        Gn5 , v060
	.byte	W06
	.byte		        Gn5 , v040
	.byte	W06
	.byte		        As5 , v060
	.byte	W06
	.byte		        As5 , v040
	.byte	W06
	.byte		        Dn6 , v060
	.byte	W06
	.byte		        Dn6 , v040
	.byte	W06
	.byte		        Fs6 , v060
	.byte	W06
	.byte		        Fs6 , v040
	.byte	W06
@ 016   ----------------------------------------
	.byte		        En6 , v060
	.byte	W06
	.byte		        En6 , v040
	.byte	W06
	.byte		        Dn6 , v060
	.byte	W06
	.byte		        Dn6 , v040
	.byte	W06
	.byte		        Cs6 , v060
	.byte	W06
	.byte		        Cs6 , v040
	.byte	W06
	.byte		        An5 , v060
	.byte	W06
	.byte		        An5 , v040
	.byte	W06
	.byte		        Fs5 , v060
	.byte	W06
	.byte		        Fs5 , v040
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W06
	.byte		        Dn5 , v040
	.byte	W06
	.byte		        An4 , v060
	.byte	W06
	.byte		        An4 , v040
	.byte	W06
	.byte		        An3 , v060
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_2_001
@ 018   ----------------------------------------
	.byte		N05   , En3 , v060
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        En3 , v060
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        Bn3 , v060
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        Bn3 , v060
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        Gn3 , v060
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Dn4 , v060
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W06
	.byte		        Dn5 , v040
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W06
	.byte		        Dn5 , v040
	.byte	W05
	.byte		VOICE , 85
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_encounter_girl_2_B1
mus_rg_encounter_girl_2_B2:
@ 019   ----------------------------------------
	.byte		VOICE , 85
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_rg_encounter_girl_3:
	.byte	KEYSH , mus_rg_encounter_girl_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 116*mus_rg_encounter_girl_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W60
	.byte		N48   , An3 , v080
	.byte	W36
@ 001   ----------------------------------------
	.byte	W12
	.byte		        Gs3 
	.byte	W48
	.byte		N84   , Gn3 
	.byte	W36
@ 002   ----------------------------------------
	.byte	W48
	.byte		N44   , En3 , v080, gtp3
	.byte	W48
mus_rg_encounter_girl_3_B1:
@ 003   ----------------------------------------
	.byte		N32   , Dn3 , v080, gtp3
	.byte	W36
	.byte		        Gn3 , v080, gtp3
	.byte	W36
	.byte		N68   , Dn3 , v080, gtp3
	.byte	W24
@ 004   ----------------------------------------
	.byte	W48
	.byte		N44   , Fs3 , v080, gtp3
	.byte	W48
@ 005   ----------------------------------------
	.byte		N32   , Cn3 , v080, gtp3
	.byte	W36
	.byte		        Fn3 , v080, gtp3
	.byte	W36
	.byte		N44   , Cn3 , v080, gtp3
	.byte	W24
@ 006   ----------------------------------------
	.byte	W24
	.byte		        Gn3 , v080, gtp3
	.byte	W48
	.byte		        Bn2 , v080, gtp3
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
	.byte		        As3 , v080, gtp3
	.byte	W48
	.byte		        Dn3 , v080, gtp3
	.byte	W24
@ 008   ----------------------------------------
	.byte	W24
	.byte		N92   , An3 , v080, gtp3
	.byte	W72
@ 009   ----------------------------------------
	.byte	W24
	.byte		N44   , Gs3 , v080, gtp3
	.byte	W48
	.byte		N23   , Cn4 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N32   , Bn3 , v080, gtp3
	.byte	W36
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , Bn3 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N32   , Dn4 , v080, gtp3
	.byte	W36
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
@ 012   ----------------------------------------
	.byte		N32   , Cs4 , v080, gtp3
	.byte	W36
	.byte		N23   , En4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W24
@ 013   ----------------------------------------
	.byte		N32   , Cn4 , v080, gtp3
	.byte	W36
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N32   , Gn3 , v080, gtp3
	.byte	W36
	.byte		        Bn3 , v080, gtp3
	.byte	W36
	.byte		N23   , Gn3 
	.byte	W24
@ 015   ----------------------------------------
	.byte		        As3 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N80   , An4 , v080, gtp3
	.byte	W60
@ 016   ----------------------------------------
	.byte	W24
	.byte		N32   , Fs3 , v080, gtp3
	.byte	W36
	.byte		N44   , An3 , v080, gtp3
	.byte	W36
@ 017   ----------------------------------------
	.byte	W12
	.byte		        Gs3 , v080, gtp3
	.byte	W48
	.byte		N84   , Gn3 
	.byte	W36
@ 018   ----------------------------------------
	.byte	W48
	.byte		N44   , En3 , v080, gtp3
	.byte	W44
	.byte	W03
	.byte		VOICE , 35
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_encounter_girl_3_B1
mus_rg_encounter_girl_3_B2:
@ 019   ----------------------------------------
	.byte		VOICE , 35
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_rg_encounter_girl_4:
	.byte	KEYSH , mus_rg_encounter_girl_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		VOL   , 104*mus_rg_encounter_girl_mvl/mxv
	.byte		PAN   , c_v-33
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
	.byte		N32   , Dn2 , v127, gtp3
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
@ 001   ----------------------------------------
mus_rg_encounter_girl_4_001:
	.byte		N32   , Fs1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N32   , Fn1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_rg_encounter_girl_4_002:
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		        En1 , v052
	.byte	W12
	.byte		N32   , En1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        En1 , v052
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte	PEND
mus_rg_encounter_girl_4_B1:
@ 003   ----------------------------------------
mus_rg_encounter_girl_4_003:
	.byte		N11   , Gn1 , v127
	.byte	W12
	.byte		        Gn1 , v052
	.byte	W12
	.byte		N32   , Gn1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Gn1 , v052
	.byte	W12
	.byte		        Gn1 , v127
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_rg_encounter_girl_4_004:
	.byte		N11   , Fs1 , v127
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		N32   , Fs1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v127
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_rg_encounter_girl_4_005:
	.byte		N11   , Fn1 , v127
	.byte	W12
	.byte		        Fn1 , v052
	.byte	W12
	.byte		N32   , Fn1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Fn1 , v052
	.byte	W12
	.byte		        Fn1 , v127
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_4_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_4_005
@ 010   ----------------------------------------
mus_rg_encounter_girl_4_010:
	.byte		N32   , En1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        En1 , v052
	.byte	W12
	.byte		N23   , En1 , v127
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_rg_encounter_girl_4_011:
	.byte		N32   , Gn1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Gn1 , v052
	.byte	W12
	.byte		N23   , Gn1 , v127
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N32   , Fs1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		N23   , Fs1 , v127
	.byte	W24
	.byte		N11   
	.byte	W12
@ 013   ----------------------------------------
	.byte		N32   , Fn1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Fn1 , v052
	.byte	W12
	.byte		N23   , Fn1 , v127
	.byte	W24
	.byte		N11   
	.byte	W12
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_4_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_4_011
@ 016   ----------------------------------------
	.byte		N11   , Dn1 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn1 , v052
	.byte	W12
	.byte		        Dn1 , v127
	.byte	W12
	.byte		N32   , Dn2 , v127, gtp3
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_4_001
@ 018   ----------------------------------------
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		        En1 , v052
	.byte	W12
	.byte		N32   , En1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        En1 , v052
	.byte	W12
	.byte		        En1 , v127
	.byte	W11
	.byte		VOICE , 81
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_encounter_girl_4_B1
mus_rg_encounter_girl_4_B2:
@ 019   ----------------------------------------
	.byte		VOICE , 81
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.6) ****************@

mus_rg_encounter_girl_5:
	.byte	KEYSH , mus_rg_encounter_girl_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		PAN   , c_v+12
	.byte		VOL   , 100*mus_rg_encounter_girl_mvl/mxv
	.byte		        100*mus_rg_encounter_girl_mvl/mxv
	.byte		        100*mus_rg_encounter_girl_mvl/mxv
	.byte		        100*mus_rg_encounter_girl_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
	.byte		N05   , Fs4 , v056
	.byte	W36
	.byte		        Fs4 , v040
	.byte	W12
@ 001   ----------------------------------------
mus_rg_encounter_girl_5_001:
	.byte		N05   , Fs4 , v056
	.byte	W36
	.byte		        Fs4 , v040
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W36
	.byte		        Fs4 , v040
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_rg_encounter_girl_5_002:
	.byte	W48
	.byte		N05   , Fs4 , v056
	.byte	W36
	.byte		        Fs4 , v040
	.byte	W12
	.byte	PEND
mus_rg_encounter_girl_5_B1:
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_002
@ 010   ----------------------------------------
mus_rg_encounter_girl_5_010:
	.byte	W12
	.byte		N05   , Fs4 , v056
	.byte	W36
	.byte		N05   
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_010
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_010
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_010
@ 016   ----------------------------------------
	.byte	W12
	.byte		N05   , Fs4 , v056
	.byte	W36
	.byte		N05   
	.byte	W36
	.byte		        Fs4 , v040
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_5_001
@ 018   ----------------------------------------
	.byte	W48
	.byte		N05   , Fs4 , v056
	.byte	W36
	.byte		        Fs4 , v040
	.byte	W11
	.byte		VOICE , 127
	.byte		VOL   , 100*mus_rg_encounter_girl_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_encounter_girl_5_B1
mus_rg_encounter_girl_5_B2:
@ 019   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 100*mus_rg_encounter_girl_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_rg_encounter_girl_6:
	.byte	KEYSH , mus_rg_encounter_girl_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_rg_encounter_girl_mvl/mxv
	.byte		PAN   , c_v-19
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W60
	.byte		N11   , Cs1 , v044
	.byte	W12
	.byte		N11   
	.byte	W24
@ 001   ----------------------------------------
mus_rg_encounter_girl_6_001:
	.byte	W12
	.byte		N11   , Cs1 , v044
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_rg_encounter_girl_6_002:
	.byte		N11   , Cn1 , v127
	.byte	W12
	.byte		        Cs1 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn1 , v108
	.byte	W24
	.byte		        Cs1 , v044
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte	PEND
mus_rg_encounter_girl_6_B1:
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_002
@ 010   ----------------------------------------
mus_rg_encounter_girl_6_010:
	.byte		N11   , Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v044
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        Cn1 , v112
	.byte	W12
	.byte		        Cs1 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_010
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_010
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_010
@ 016   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v044
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W24
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_girl_6_001
@ 018   ----------------------------------------
	.byte		N11   , Cn1 , v127
	.byte	W12
	.byte		        Cs1 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn1 , v108
	.byte	W24
	.byte		        Cs1 , v044
	.byte	W12
	.byte		N11   
	.byte	W23
	.byte		VOICE , 0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_encounter_girl_6_B1
mus_rg_encounter_girl_6_B2:
@ 019   ----------------------------------------
	.byte		VOICE , 0
	.byte		BEND  , c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_rg_encounter_girl:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rg_encounter_girl_pri	@ Priority
	.byte	mus_rg_encounter_girl_rev	@ Reverb.

	.word	mus_rg_encounter_girl_grp

	.word	mus_rg_encounter_girl_1
	.word	mus_rg_encounter_girl_2
	.word	mus_rg_encounter_girl_3
	.word	mus_rg_encounter_girl_4
	.word	mus_rg_encounter_girl_5
	.word	mus_rg_encounter_girl_6

	.end
