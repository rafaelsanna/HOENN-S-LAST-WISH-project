	.include "MPlayDef.s"

	.equ	mus_touhou7_stage6_boss_grp, voicegroup_ancient_groover
	.equ	mus_touhou7_stage6_boss_pri, 0
	.equ	mus_touhou7_stage6_boss_rev, reverb_set+50
	.equ	mus_touhou7_stage6_boss_mvl, 100
	.equ	mus_touhou7_stage6_boss_key, 0
	.equ	mus_touhou7_stage6_boss_tbs, 1
	.equ	mus_touhou7_stage6_boss_exg, 1
	.equ	mus_touhou7_stage6_boss_cmp, 1

	.section .rodata
	.global	mus_touhou7_stage6_boss
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_touhou7_stage6_boss_1:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 144*mus_touhou7_stage6_boss_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
	.byte		PAN   , c_v+8
	.byte		N36   , Gs3 , v100
	.byte		N36   , Cn4 
	.byte		N36   , Gs4 
	.byte		N36   , Cn5 
	.byte	W36
	.byte		        Gs3 
	.byte		N36   , Fn4 
	.byte		N36   , Gs4 
	.byte		N36   , Fn5 
	.byte	W36
	.byte		N24   , As3 
	.byte		N24   , Gn4 
	.byte		N24   , As4 
	.byte		N24   , Gn5 
	.byte	W24
@ 001   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Cn4 
	.byte		N36   , Gs4 
	.byte		N36   , Cn5 
	.byte	W36
	.byte		        Gs3 
	.byte		N36   , Fn4 
	.byte		N36   , Gs4 
	.byte		N36   , Fn5 
	.byte	W36
	.byte		N24   , As3 
	.byte		N24   , Gn4 
	.byte		N24   , As4 
	.byte		N24   , Gn5 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N03   , As3 
	.byte		N03   , Gn4 
	.byte		N03   , As4 
	.byte		N03   , Gn5 
	.byte	W03
	.byte		N21   , Cn4 
	.byte		N21   , Gs4 
	.byte		N21   , Cn5 
	.byte		N21   , Gs5 
	.byte	W21
	.byte		N24   , Gs3 
	.byte		N24   , Fn4 
	.byte		N24   , Gs4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Gn4 
	.byte		N24   , As4 
	.byte		N24   , Gn5 
	.byte	W24
	.byte		        Gn3 
	.byte		N24   , Ds4 
	.byte		N24   , Gn4 
	.byte		N24   , Ds5 
	.byte	W24
@ 003   ----------------------------------------
	.byte		N96   , Gs3 
	.byte		N96   , Fn4 
	.byte		N96   , Gs4 
	.byte		N96   , Fn5 
	.byte	W96
@ 004   ----------------------------------------
	.byte		N36   , Fn3 
	.byte		N36   , Cn4 
	.byte		N36   , Fn4 
	.byte		N36   , Cn5 
	.byte	W36
	.byte		        Fn3 
	.byte		N36   , Ds4 
	.byte		N36   , Fn4 
	.byte		N36   , Ds5 
	.byte	W36
	.byte		N24   , Gs3 
	.byte		N24   , Fn4 
	.byte		N24   , Gs4 
	.byte		N24   , Fn5 
	.byte	W24
@ 005   ----------------------------------------
	.byte		N36   , Gn3 
	.byte		N36   , As3 
	.byte		N36   , Gn4 
	.byte		N36   , As4 
	.byte	W36
	.byte		        Gn3 
	.byte		N36   , Ds4 
	.byte		N36   , Gn4 
	.byte		N36   , Ds5 
	.byte	W36
	.byte		N24   , Gs3 
	.byte		N24   , Fn4 
	.byte		N24   , Gs4 
	.byte		N24   , Fn5 
	.byte	W24
@ 006   ----------------------------------------
	.byte		        Cn3 
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Gs2 
	.byte		N24   , Fn3 
	.byte		N24   , Gs3 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        As2 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Ds3 
	.byte		N24   , Gn3 
	.byte		N24   , Ds4 
	.byte	W24
@ 007   ----------------------------------------
	.byte		N96   , Gs2 
	.byte		N96   , Fn3 
	.byte		N96   , Gs3 
	.byte		N96   , Fn4 
	.byte	W96
@ 008   ----------------------------------------
	.byte	TEMPO , 156*mus_touhou7_stage6_boss_tbs/2
	.byte	W48
@ 009   ----------------------------------------
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Ds3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Bn4 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Ds3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Ds3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Bn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Ds3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 013   ----------------------------------------
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Ds4 
	.byte		N24   , Ds5 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , En4 
	.byte		N12   , En5 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Ds4 
	.byte		N24   , Ds5 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Bn3 
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte		N12   , Cs5 
	.byte	W12
@ 017   ----------------------------------------
mus_touhou7_stage6_boss_1_017:
	.byte		N36   , Bn3 , v100
	.byte		N36   , Ds4 
	.byte		N36   , Bn4 
	.byte		N36   , Ds5 
	.byte	W36
	.byte	PEND
	.byte		        Bn3 
	.byte		N36   , Gs4 
	.byte		N36   , Bn4 
	.byte		N36   , Gs5 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte		N24   , Cs5 
	.byte		N24   , As5 
	.byte	W24
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_1_017
	.byte		N36   , Bn3 , v100
	.byte		N36   , Gs4 
	.byte		N36   , Bn4 
	.byte		N36   , Gs5 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte		N24   , Cs5 
	.byte		N24   , As5 
	.byte	W24
@ 019   ----------------------------------------
	.byte		        Ds4 
	.byte		N24   , Bn4 
	.byte		N24   , Ds5 
	.byte		N24   , Bn5 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Gs4 
	.byte		N24   , Bn4 
	.byte		N24   , Gs5 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , As4 
	.byte		N24   , Cs5 
	.byte		N24   , As5 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Fs4 
	.byte		N24   , As4 
	.byte		N24   , Fs5 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N96   , Bn3 
	.byte		N96   , Gs4 
	.byte		N96   , Bn4 
	.byte		N96   , Gs5 
	.byte	W96
@ 021   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Ds4 
	.byte		N36   , Gs4 
	.byte		N36   , Ds5 
	.byte	W36
	.byte		        Ds4 
	.byte		N36   , Fs4 
	.byte		N36   , Ds5 
	.byte		N36   , Fs5 
	.byte	W36
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte		N24   , Ds5 
	.byte		N24   , Gs5 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N36   , As3 
	.byte		N36   , Cs4 
	.byte		N36   , As4 
	.byte		N36   , Cs5 
	.byte	W36
	.byte		        As3 
	.byte		N36   , Fs4 
	.byte		N36   , As4 
	.byte		N36   , Fs5 
	.byte	W36
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte		N24   , Bn4 
	.byte		N24   , Gs5 
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Gs3 
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
	.byte		        As2 
	.byte		N24   , Fs3 
	.byte		N24   , As3 
	.byte		N24   , Fs4 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N72   , Bn2 
	.byte		N72   , Gs3 
	.byte		N72   , Bn3 
	.byte		N72   , Gs4 
	.byte	W72
	.byte		N12   , Gs3 
	.byte		N12   , Bn3 
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte		N12   , Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_1_017
	.byte		N36   , Bn3 , v100
	.byte		N36   , Gs4 
	.byte		N36   , Bn4 
	.byte		N36   , Gs5 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte		N24   , Cs5 
	.byte		N24   , As5 
	.byte	W24
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_1_017
	.byte		N36   , Bn3 , v100
	.byte		N36   , Gs4 
	.byte		N36   , Bn4 
	.byte		N36   , Gs5 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte		N24   , Cs5 
	.byte		N24   , As5 
	.byte	W24
@ 027   ----------------------------------------
	.byte		        Gs4 
	.byte		N24   , Bn4 
	.byte		N24   , Gs5 
	.byte		N24   , Bn5 
	.byte	W24
	.byte		        As4 
	.byte		N24   , Cs5 
	.byte		N24   , As5 
	.byte		N24   , Cs6 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , Ds5 
	.byte		N24   , Bn5 
	.byte		N24   , Ds6 
	.byte	W24
	.byte		        Cs5 
	.byte		N24   , Fs5 
	.byte		N24   , Cs6 
	.byte		N24   , Fs6 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N96   , Bn4 
	.byte		N96   , Ds5 
	.byte		N96   , Bn5 
	.byte		N96   , Ds6 
	.byte	W96
@ 029   ----------------------------------------
	.byte		N36   , Bn4 
	.byte		N36   , Ds5 
	.byte		N36   , Bn5 
	.byte		N36   , Ds6 
	.byte	W36
	.byte		        Ds4 
	.byte		N36   , Gs4 
	.byte		N36   , Ds5 
	.byte		N36   , Gs5 
	.byte	W36
	.byte		N24   , Bn4 
	.byte		N24   , Ds5 
	.byte		N24   , Bn5 
	.byte		N24   , Ds6 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N36   , As4 
	.byte		N36   , Ds5 
	.byte		N36   , As5 
	.byte		N36   , Ds6 
	.byte	W36
	.byte		        Ds4 
	.byte		N36   , Gs4 
	.byte		N36   , Ds5 
	.byte		N36   , Gs5 
	.byte	W36
	.byte		N24   , As4 
	.byte		N24   , Ds5 
	.byte		N24   , As5 
	.byte		N24   , Ds6 
	.byte	W24
@ 031   ----------------------------------------
	.byte		        Bn3 
	.byte		N24   , Gs4 
	.byte		N24   , Bn4 
	.byte		N24   , Gs5 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , As4 
	.byte		N24   , Fs5 
	.byte		N24   , As5 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , Ds5 
	.byte		N24   , Bn5 
	.byte		N24   , Ds6 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , Fs5 
	.byte		N24   , Bn5 
	.byte		N24   , Fs6 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N96   , Bn4 
	.byte		N96   , Gs5 
	.byte		N96   , Bn5 
	.byte		N96   , Gs6 
	.byte	W96
@ 033   ----------------------------------------
mus_touhou7_stage6_boss_1_033:
	.byte		N24   , Bn3 , v100
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte	PEND
	.byte		N12   , An3 
	.byte		N12   , En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Fs4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , En4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte		N12   , Bn4 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N24   , Fs3 
	.byte		N24   , Dn4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte		N24   , Fs4 
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , En4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Dn4 
	.byte		N24   , Bn4 
	.byte	W24
@ 035   ----------------------------------------
	.byte		        Bn3 
	.byte		N24   , Dn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Dn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		TIE   , Bn3 
	.byte		TIE   , Dn4 
	.byte		TIE   , Bn4 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn3 
	.byte		        Dn4 
	.byte		        Bn4 
@ 037   ----------------------------------------
mus_touhou7_stage6_boss_1_037:
	.byte		N24   , Dn4 , v100
	.byte		N24   , Fs4 
	.byte		N24   , Dn5 
	.byte	W24
	.byte	PEND
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N24   , Dn4 
	.byte		N24   , Fs4 
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte		N12   , Dn5 
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_1_033
	.byte		N24   , Fs4 , v100
	.byte		N24   , Dn5 
	.byte		N24   , Fs5 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Cs5 
	.byte		N24   , En5 
	.byte	W24
	.byte		        Dn4 
	.byte		N24   , Bn4 
	.byte		N24   , Dn5 
	.byte	W24
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_1_037
	.byte		N12   , Cs4 , v100
	.byte		N12   , En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N24   , Dn4 
	.byte		N24   , Fs4 
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte		N12   , Dn5 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N48   , Cs4 
	.byte		N48   , En4 
	.byte		N48   , Cs5 
	.byte	W48
	.byte		N18   , Fs4 
	.byte		N18   , As4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		        Fs4 
	.byte		N18   , As4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Fs4 
	.byte		N12   , As4 
	.byte		N12   , Fs5 
	.byte	W12
@ 041   ----------------------------------------
	.byte	W60
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
@ 042   ----------------------------------------
	.byte		N60   , Gn4 
	.byte		N60   , Gn5 
	.byte	W60
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N60   , Gn4 
	.byte		N60   , Gn5 
	.byte	W60
	.byte		N12   , En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
@ 044   ----------------------------------------
	.byte		        Bn4 
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W12
@ 045   ----------------------------------------
	.byte	W60
	.byte		N12   , Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , Bn5 
	.byte	W12
@ 046   ----------------------------------------
	.byte		N60   , En5 
	.byte		N60   , En6 
	.byte	W60
	.byte		N12   , Bn4 
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        Fs5 
	.byte		N12   , Fs6 
	.byte	W12
	.byte		N72   , Gn5 
	.byte		N72   , Gn6 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W60
	.byte		N12   , En5 
	.byte		N12   , En6 
	.byte	W12
	.byte		        Fs5 
	.byte		N12   , Fs6 
	.byte	W12
	.byte		        Gn5 
	.byte		N12   , Gn6 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        Gn5 
	.byte		N12   , Gn6 
	.byte	W12
	.byte		        En5 
	.byte		N12   , En6 
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
	.byte		        Gn5 
	.byte		N12   , Gn6 
	.byte	W12
	.byte		        Fs5 
	.byte		N12   , Fs6 
	.byte	W12
	.byte		        Dn5 
	.byte		N12   , Dn6 
	.byte	W12
	.byte		        An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		N72   , Bn4 
	.byte		N72   , Bn5 
	.byte	W12
@ 049   ----------------------------------------
	.byte	W60
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
@ 050   ----------------------------------------
	.byte		N60   , Gn4 
	.byte		N60   , Gn5 
	.byte	W60
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N60   , Gn4 
	.byte		N60   , Gn5 
	.byte	W60
	.byte		N12   , En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Bn4 
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W12
@ 053   ----------------------------------------
	.byte	W60
	.byte		N12   , Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , Bn5 
	.byte	W12
@ 054   ----------------------------------------
	.byte		N60   , En5 
	.byte		N60   , En6 
	.byte	W60
	.byte		N12   , Bn4 
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        Fs5 
	.byte		N12   , Fs6 
	.byte	W12
	.byte		N72   , Gn5 
	.byte		N72   , Gn6 
	.byte	W12
@ 055   ----------------------------------------
	.byte	W60
	.byte		N12   , En5 
	.byte		N12   , En6 
	.byte	W12
	.byte		        Fs5 
	.byte		N12   , Fs6 
	.byte	W12
	.byte		        Gn5 
	.byte		N12   , Gn6 
	.byte	W12
@ 056   ----------------------------------------
	.byte		        Gn5 
	.byte		N12   , Gn6 
	.byte	W12
	.byte		        En5 
	.byte		N12   , En6 
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
	.byte		        Gn5 
	.byte		N12   , Gn6 
	.byte	W12
	.byte		        Fs5 
	.byte		N12   , Fs6 
	.byte	W12
	.byte		        Dn5 
	.byte		N12   , Dn6 
	.byte	W12
	.byte		        An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		N72   , Bn4 
	.byte		N72   , Bn5 
	.byte	W12
@ 057   ----------------------------------------
	.byte	W60
	.byte	W36
@ 058   ----------------------------------------
	.byte		N36   , Cn4 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte		N48   , Fn4 
	.byte	W48
@ 059   ----------------------------------------
	.byte		N12   
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
@ 060   ----------------------------------------
	.byte		        Cn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 062   ----------------------------------------
mus_touhou7_stage6_boss_1_062:
	.byte	W12
	.byte		N12   , Gs3 , v100
	.byte		N12   , Cn4 
	.byte	W12
	.byte	PEND
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Gn4 
	.byte	W12
@ 066   ----------------------------------------
	.byte		N36   , Cn4 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte		N48   , Fn4 
	.byte	W48
@ 067   ----------------------------------------
	.byte		N12   
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
@ 068   ----------------------------------------
	.byte		        Cn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_1_062
	.byte		N12   , Gs3 , v100
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Gn4 
	.byte	W12
@ 074   ----------------------------------------
	.byte	TEMPO , 148*mus_touhou7_stage6_boss_tbs/2
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
mus_touhou7_stage6_boss_1_082:
	.byte		N36   , An3 , v100
	.byte		N36   , Cs4 
	.byte		N36   , An4 
	.byte		N36   , Cs5 
	.byte	W36
	.byte	PEND
	.byte		        An3 
	.byte		N36   , Fs4 
	.byte		N36   , An4 
	.byte		N36   , Fs5 
	.byte	W36
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte		N24   , Bn4 
	.byte		N24   , Gs5 
	.byte	W24
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_1_082
	.byte		N36   , An3 , v100
	.byte		N36   , Fs4 
	.byte		N36   , An4 
	.byte		N36   , Fs5 
	.byte	W36
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte		N24   , Bn4 
	.byte		N24   , Gs5 
	.byte	W24
@ 084   ----------------------------------------
	.byte		        Fs4 
	.byte		N24   , An4 
	.byte		N24   , Fs5 
	.byte		N24   , An5 
	.byte	W24
	.byte		        Gs4 
	.byte		N24   , Bn4 
	.byte		N24   , Gs5 
	.byte		N24   , Bn5 
	.byte	W24
	.byte		        An4 
	.byte		N24   , Cs5 
	.byte		N24   , An5 
	.byte		N24   , Cs6 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , En5 
	.byte		N24   , Bn5 
	.byte		N24   , En6 
	.byte	W24
@ 085   ----------------------------------------
	.byte		N96   , An4 
	.byte		N96   , Cs5 
	.byte		N96   , An5 
	.byte		N96   , Cs6 
	.byte	W96
@ 086   ----------------------------------------
	.byte		N36   , An4 
	.byte		N36   , Cs5 
	.byte		N36   , An5 
	.byte		N36   , Cs6 
	.byte	W36
	.byte		        Cs4 
	.byte		N36   , Fs4 
	.byte		N36   , Cs5 
	.byte		N36   , Fs5 
	.byte	W36
	.byte		N24   , An4 
	.byte		N24   , Cs5 
	.byte		N24   , An5 
	.byte		N24   , Cs6 
	.byte	W24
@ 087   ----------------------------------------
	.byte		N36   , Gs4 
	.byte		N36   , Cs5 
	.byte		N36   , Gs5 
	.byte		N36   , Cs6 
	.byte	W36
	.byte		        Cs4 
	.byte		N36   , Fs4 
	.byte		N36   , Cs5 
	.byte		N36   , Fs5 
	.byte	W36
	.byte		N24   , Gs4 
	.byte		N24   , Cs5 
	.byte		N24   , Gs5 
	.byte		N24   , Cs6 
	.byte	W24
@ 088   ----------------------------------------
	.byte		        An3 
	.byte		N24   , Fs4 
	.byte		N24   , An4 
	.byte		N24   , Fs5 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte		N24   , En5 
	.byte		N24   , Gs5 
	.byte	W24
	.byte		        An4 
	.byte		N24   , Cs5 
	.byte		N24   , An5 
	.byte		N24   , Cs6 
	.byte	W24
	.byte		        An4 
	.byte		N24   , En5 
	.byte		N24   , An5 
	.byte		N24   , En6 
	.byte	W24
@ 089   ----------------------------------------
	.byte		N96   , An4 
	.byte		N96   , Fs5 
	.byte		N96   , An5 
	.byte		N96   , Fs6 
	.byte	W96
@ 090   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_touhou7_stage6_boss_2:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte	W12
	.byte		N12   , As3 , v076
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W12
@ 001   ----------------------------------------
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N24   , As2 
	.byte	W24
@ 003   ----------------------------------------
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N24   , Gs2 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		N12   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N24   , As2 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W48
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
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N24   , Bn2 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 025   ----------------------------------------
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W12
@ 026   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N24   , Bn2 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
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
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W48
@ 043   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W48
@ 044   ----------------------------------------
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N36   , Gn3 
	.byte	W12
@ 045   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W12
@ 046   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 047   ----------------------------------------
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 048   ----------------------------------------
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 050   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N12   , An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N48   , Bn3 
	.byte		N48   , En4 
	.byte	W48
@ 051   ----------------------------------------
	.byte		N12   
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Fs3 
	.byte		N24   , An3 
	.byte	W24
@ 052   ----------------------------------------
	.byte		        Bn3 
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N12   
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
@ 054   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn4 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fs3 
	.byte	W12
@ 056   ----------------------------------------
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N12   
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , An3 
	.byte	W12
@ 057   ----------------------------------------
	.byte		N24   , Gn3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Gn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W12
@ 058   ----------------------------------------
	.byte		N36   , Cn4 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte		N48   , Fn4 
	.byte	W48
@ 059   ----------------------------------------
	.byte		N12   
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
@ 060   ----------------------------------------
	.byte		        Cn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 062   ----------------------------------------
mus_touhou7_stage6_boss_2_062:
	.byte	W12
	.byte		N12   , Gs3 , v076
	.byte		N12   , Cn4 
	.byte	W12
	.byte	PEND
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Gn4 
	.byte	W12
@ 066   ----------------------------------------
	.byte		N36   , Cn4 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte		N48   , Fn4 
	.byte	W48
@ 067   ----------------------------------------
	.byte		N12   
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
@ 068   ----------------------------------------
	.byte		        Cn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_2_062
	.byte		N12   , Gs3 , v076
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Gn4 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 076   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
@ 077   ----------------------------------------
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N24   , An2 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W12
@ 079   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 080   ----------------------------------------
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 081   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 082   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W12
@ 083   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 084   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
@ 085   ----------------------------------------
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N24   , An2 
	.byte	W12
@ 086   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W12
@ 087   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 088   ----------------------------------------
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 089   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 090   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_touhou7_stage6_boss_3:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		MOD   , 56
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
	.byte	W48
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
	.byte	W72
	.byte		N12   , Gs3 , v088
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		        Bn3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		        Bn3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
@ 019   ----------------------------------------
	.byte		        Ds4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , As4 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Fs4 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N96   , Bn3 
	.byte		N96   , Gs4 
	.byte	W96
@ 021   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N36   
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N36   , As3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		        As3 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        As2 
	.byte		N24   , Fs3 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N72   , Bn2 
	.byte		N72   , Gs3 
	.byte	W72
	.byte		N12   
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		        Bn3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		        Bn3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
@ 027   ----------------------------------------
	.byte		        Gs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        As4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , Ds5 
	.byte	W24
	.byte		        Cs5 
	.byte		N24   , Fs5 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N96   , Bn4 
	.byte		N96   , Ds5 
	.byte	W96
@ 029   ----------------------------------------
	.byte		N36   , Bn4 
	.byte		N36   , Ds5 
	.byte	W36
	.byte		        Ds4 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , Bn4 
	.byte		N24   , Ds5 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N36   , As4 
	.byte		N36   , Ds5 
	.byte	W36
	.byte		        Ds4 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , As4 
	.byte		N24   , Ds5 
	.byte	W24
@ 031   ----------------------------------------
	.byte		        Bn3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , Ds5 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , Fs5 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N96   , Bn4 
	.byte		N96   , Gs5 
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
	.byte	W48
	.byte		N02   , As3 
	.byte	W02
	.byte		        Bn3 
	.byte	W02
	.byte		        Cn4 
	.byte	W02
	.byte		        Cs4 
	.byte	W02
	.byte		        Dn4 
	.byte	W02
	.byte		        Ds4 
	.byte	W02
	.byte		        En4 
	.byte	W02
	.byte		        Fn4 
	.byte	W02
	.byte		        Fs4 
	.byte	W02
	.byte		        Gn4 
	.byte	W02
	.byte		        Gs4 
	.byte	W02
	.byte		        An4 
	.byte	W02
	.byte		        As4 
	.byte	W02
	.byte		        Bn4 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        Cs5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		        Ds5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		        Fs5 
	.byte	W02
	.byte		        Gn5 
	.byte	W02
	.byte		        Gs5 
	.byte	W02
	.byte		        An5 
	.byte	W02
@ 058   ----------------------------------------
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
@ 059   ----------------------------------------
	.byte		N72   , Fn4 
	.byte	W72
	.byte		N24   , Ds4 
	.byte	W24
@ 060   ----------------------------------------
	.byte		        Fn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 062   ----------------------------------------
	.byte		N48   , Fn4 
	.byte	W48
	.byte		        Cn5 
	.byte	W48
@ 063   ----------------------------------------
	.byte		N72   , Gn4 
	.byte	W72
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
@ 065   ----------------------------------------
	.byte		N72   , Fn5 
	.byte	W72
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
@ 066   ----------------------------------------
	.byte		N72   , Fn5 
	.byte	W72
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
@ 067   ----------------------------------------
	.byte		N72   , Fn5 
	.byte	W72
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
@ 068   ----------------------------------------
	.byte		N24   , Fn5 
	.byte	W24
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N24   , Fn5 
	.byte	W24
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
@ 069   ----------------------------------------
	.byte		N24   , Gs5 
	.byte	W24
	.byte		        Gn5 
	.byte	W24
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N72   , Fn5 
	.byte	W72
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
@ 071   ----------------------------------------
	.byte		N60   , As4 
	.byte	W60
	.byte	W12
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
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
	.byte		N36   , An3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		        An3 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte	W24
@ 083   ----------------------------------------
	.byte		N36   , An3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		        An3 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte	W24
@ 084   ----------------------------------------
	.byte		        Fs4 
	.byte		N24   , An4 
	.byte	W24
	.byte		        Gs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        An4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , En5 
	.byte	W24
@ 085   ----------------------------------------
	.byte		N96   , An4 
	.byte		N96   , Cs5 
	.byte	W96
@ 086   ----------------------------------------
	.byte		N36   , An4 
	.byte		N36   , Cs5 
	.byte	W36
	.byte		        Cs4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , An4 
	.byte		N24   , Cs5 
	.byte	W24
@ 087   ----------------------------------------
	.byte		N36   , Gs4 
	.byte		N36   , Cs5 
	.byte	W36
	.byte		        Cs4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , Gs4 
	.byte		N24   , Cs5 
	.byte	W24
@ 088   ----------------------------------------
	.byte		        An3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        An4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        An4 
	.byte		N24   , En5 
	.byte	W24
@ 089   ----------------------------------------
	.byte		N96   , An4 
	.byte		N96   , Fs5 
	.byte	W96
@ 090   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_touhou7_stage6_boss_4:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
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
	.byte	W48
@ 009   ----------------------------------------
	.byte		N06   , En2 , v048
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 013   ----------------------------------------
	.byte		        En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 018   ----------------------------------------
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 019   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 021   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 022   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 023   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 024   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 025   ----------------------------------------
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 029   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 030   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 032   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
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
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_touhou7_stage6_boss_5:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
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
	.byte	W48
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
	.byte		N06   , Bn2 , v064
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 043   ----------------------------------------
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 047   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 048   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 049   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 050   ----------------------------------------
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 051   ----------------------------------------
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 052   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 053   ----------------------------------------
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 054   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 055   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 056   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 057   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Cn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 059   ----------------------------------------
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 060   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 064   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 065   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Cn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 068   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 070   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 072   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
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
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_touhou7_stage6_boss_6:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
	.byte		PAN   , c_v-24
	.byte		N12   , Fn2 , v068
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W24
@ 008   ----------------------------------------
	.byte	W48
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
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 075   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 076   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 077   ----------------------------------------
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 078   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 079   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 080   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 081   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
@ 082   ----------------------------------------
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 083   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 084   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 085   ----------------------------------------
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 086   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 087   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 088   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 089   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
@ 090   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_touhou7_stage6_boss_7:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
	.byte		PAN   , c_v+8
	.byte		N36   , Gs3 , v068
	.byte		N36   , Cn4 
	.byte	W36
	.byte		        Gs3 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N24   , As3 
	.byte		N24   , Gn4 
	.byte	W24
@ 001   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Cn4 
	.byte	W36
	.byte		        Gs3 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N24   , As3 
	.byte		N24   , Gn4 
	.byte	W24
@ 002   ----------------------------------------
	.byte		        Cn4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Gn3 
	.byte		N24   , Ds4 
	.byte	W24
@ 003   ----------------------------------------
	.byte		N96   , Gs3 
	.byte		N96   , Fn4 
	.byte	W96
@ 004   ----------------------------------------
	.byte		N36   , Fn3 
	.byte		N36   , Cn4 
	.byte	W36
	.byte		        Fn3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N24   , Gs3 
	.byte		N24   , Fn4 
	.byte	W24
@ 005   ----------------------------------------
	.byte		N36   , Gn3 
	.byte		N36   , As3 
	.byte	W36
	.byte		        Gn3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N24   , Gs3 
	.byte		N24   , Fn4 
	.byte	W24
@ 006   ----------------------------------------
	.byte		        Cn3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Gs2 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        As2 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Ds3 
	.byte	W24
@ 007   ----------------------------------------
	.byte		N96   , Gs2 
	.byte		N96   , Fn3 
	.byte	W96
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Ds2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Bn3 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		N12   , Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Ds2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Ds2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Bn3 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N12   , Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Ds2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Ds4 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Ds4 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		        Bn3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		        Bn3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
@ 019   ----------------------------------------
	.byte		        Ds4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , As4 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Fs4 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N96   , Bn3 
	.byte		N96   , Gs4 
	.byte	W96
@ 021   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N36   
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N36   , As3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		        As3 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        As2 
	.byte		N24   , Fs3 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N72   , Bn2 
	.byte		N72   , Gs3 
	.byte	W72
	.byte		N12   
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		        Bn3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		        Bn3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
@ 027   ----------------------------------------
	.byte		        Gs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        As4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , Ds5 
	.byte	W24
	.byte		        Cs5 
	.byte		N24   , Fs5 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N96   , Bn4 
	.byte		N96   , Ds5 
	.byte	W96
@ 029   ----------------------------------------
	.byte		N36   , Bn4 
	.byte		N36   , Ds5 
	.byte	W36
	.byte		        Ds4 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , Bn4 
	.byte		N24   , Ds5 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N36   , As4 
	.byte		N36   , Ds5 
	.byte	W36
	.byte		        Ds4 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , As4 
	.byte		N24   , Ds5 
	.byte	W24
@ 031   ----------------------------------------
	.byte		        Bn3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , Ds5 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , Fs5 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N96   , Bn4 
	.byte		N96   , Gs5 
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
	.byte	W60
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 042   ----------------------------------------
	.byte		N60   , Gn3 
	.byte		N60   , Gn4 
	.byte	W60
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N60   , Gn3 
	.byte		N60   , Gn4 
	.byte	W60
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
@ 044   ----------------------------------------
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N72   , Gn3 
	.byte		N72   , Gn4 
	.byte	W12
@ 045   ----------------------------------------
	.byte	W60
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
@ 046   ----------------------------------------
	.byte		N60   , En4 
	.byte		N60   , En5 
	.byte	W60
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W60
	.byte		N12   , En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N72   , Bn3 
	.byte		N72   , Bn4 
	.byte	W12
@ 049   ----------------------------------------
	.byte	W60
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 050   ----------------------------------------
	.byte		N60   , Gn3 
	.byte		N60   , Gn4 
	.byte	W60
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N60   , Gn3 
	.byte		N60   , Gn4 
	.byte	W60
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N72   , Gn3 
	.byte		N72   , Gn4 
	.byte	W12
@ 053   ----------------------------------------
	.byte	W60
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
@ 054   ----------------------------------------
	.byte		N60   , En4 
	.byte		N60   , En5 
	.byte	W60
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W12
@ 055   ----------------------------------------
	.byte	W60
	.byte		N12   , En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
@ 056   ----------------------------------------
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N72   , Bn3 
	.byte		N72   , Bn4 
	.byte	W12
@ 057   ----------------------------------------
	.byte	W60
	.byte	W36
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
	.byte		N36   , An3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		        An3 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte	W24
@ 083   ----------------------------------------
	.byte		N36   , An3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		        An3 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte	W24
@ 084   ----------------------------------------
	.byte		        Fs4 
	.byte		N24   , An4 
	.byte	W24
	.byte		        Gs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        An4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Bn4 
	.byte		N24   , En5 
	.byte	W24
@ 085   ----------------------------------------
	.byte		N96   , An4 
	.byte		N96   , Cs5 
	.byte	W96
@ 086   ----------------------------------------
	.byte		N36   , An4 
	.byte		N36   , Cs5 
	.byte	W36
	.byte		        Cs4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , An4 
	.byte		N24   , Cs5 
	.byte	W24
@ 087   ----------------------------------------
	.byte		N36   , Gs4 
	.byte		N36   , Cs5 
	.byte	W36
	.byte		        Cs4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N24   , Gs4 
	.byte		N24   , Cs5 
	.byte	W24
@ 088   ----------------------------------------
	.byte		        An3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        An4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        An4 
	.byte		N24   , En5 
	.byte	W24
@ 089   ----------------------------------------
	.byte		N96   , An4 
	.byte		N96   , Fs5 
	.byte	W96
@ 090   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_touhou7_stage6_boss_8:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
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
	.byte	W48
@ 009   ----------------------------------------
mus_touhou7_stage6_boss_8_009:
	.byte		N36   , Bn1 , v076
	.byte		N36   , En2 
	.byte		N36   , Bn2 
	.byte	W36
	.byte	PEND
	.byte		N60   , As1 
	.byte		N60   , Ds2 
	.byte		N60   , As2 
	.byte	W60
@ 010   ----------------------------------------
mus_touhou7_stage6_boss_8_010:
	.byte		N36   , En2 , v076
	.byte		N36   , Bn2 
	.byte		N36   , En3 
	.byte	W36
	.byte	PEND
	.byte		N60   , Ds2 
	.byte		N60   , As2 
	.byte		N60   , Ds3 
	.byte	W60
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_009
	.byte		N60   , As1 , v076
	.byte		N60   , Ds2 
	.byte		N60   , As2 
	.byte	W60
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_010
	.byte		N60   , Ds2 , v076
	.byte		N60   , As2 
	.byte		N60   , Ds3 
	.byte	W60
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_009
	.byte		N60   , As1 , v076
	.byte		N60   , Ds2 
	.byte		N60   , As2 
	.byte	W60
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_010
	.byte		N60   , Ds2 , v076
	.byte		N60   , As2 
	.byte		N60   , Ds3 
	.byte	W60
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_009
	.byte		N60   , As1 , v076
	.byte		N60   , Ds2 
	.byte		N60   , As2 
	.byte	W60
@ 016   ----------------------------------------
	.byte		N36   , Bn2 
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N60   , Cs3 
	.byte		N60   , Cs4 
	.byte		N60   , Fs4 
	.byte	W60
@ 017   ----------------------------------------
	.byte		N96   , Ds3 
	.byte		N96   , Gs3 
	.byte		N96   , Ds4 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Ds3 
	.byte		N96   , Fs3 
	.byte		N96   , Ds4 
	.byte	W96
@ 019   ----------------------------------------
	.byte		N48   , Bn2 
	.byte		N48   , En3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Cs3 
	.byte		N48   , Fs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 020   ----------------------------------------
	.byte		N96   , Bn2 
	.byte		N96   , Gs3 
	.byte		N96   , Bn3 
	.byte	W96
@ 021   ----------------------------------------
mus_touhou7_stage6_boss_8_021:
	.byte		N96   , Gs2 , v076
	.byte		N96   , Cs3 
	.byte		N96   , Gs3 
	.byte	W96
	.byte	PEND
@ 022   ----------------------------------------
	.byte		        As2 
	.byte		N96   , Ds3 
	.byte		N96   , As3 
	.byte	W96
@ 023   ----------------------------------------
	.byte		N24   , Bn2 
	.byte		N24   , En3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N96   , Bn3 
	.byte		N96   , Ds4 
	.byte		N96   , Bn4 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , Gs4 
	.byte		N96   , Ds5 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Ds4 
	.byte		N96   , Fs4 
	.byte		N96   , Ds5 
	.byte	W96
@ 027   ----------------------------------------
	.byte		N48   , Bn3 
	.byte		N48   , En4 
	.byte		N48   , Bn4 
	.byte	W48
	.byte		        Cs4 
	.byte		N48   , Fs4 
	.byte		N48   , Cs5 
	.byte	W48
@ 028   ----------------------------------------
	.byte		N96   , Bn3 
	.byte		N96   , Gs4 
	.byte		N96   , Bn4 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        Cs4 
	.byte		N96   , Gs4 
	.byte		N96   , Cs5 
	.byte	W96
@ 030   ----------------------------------------
	.byte		        As3 
	.byte		N96   , Ds4 
	.byte		N96   , As4 
	.byte	W96
@ 031   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , En4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Gs4 
	.byte		N24   , Bn4 
	.byte		N24   , Gs5 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , As4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        As4 
	.byte		N24   , Cs5 
	.byte		N24   , As5 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N96   , Bn4 
	.byte		N96   , Ds5 
	.byte		N96   , Bn5 
	.byte	W96
@ 033   ----------------------------------------
mus_touhou7_stage6_boss_8_033:
	.byte		N48   , Dn2 , v076
	.byte		N48   , Gn2 
	.byte		N48   , Dn3 
	.byte	W48
	.byte	PEND
	.byte		        En2 
	.byte		N48   , An2 
	.byte		N48   , En3 
	.byte	W48
@ 034   ----------------------------------------
mus_touhou7_stage6_boss_8_034:
	.byte		N48   , En2 , v076
	.byte		N48   , Bn2 
	.byte		N48   , En3 
	.byte	W48
	.byte	PEND
	.byte		        Dn2 
	.byte		N48   , Bn2 
	.byte		N48   , Dn3 
	.byte	W48
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_033
	.byte		N48   , En2 , v076
	.byte		N48   , An2 
	.byte		N48   , En3 
	.byte	W48
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_034
	.byte		N48   , Fs2 , v076
	.byte		N48   , Bn2 
	.byte		N48   , Fs3 
	.byte	W48
@ 037   ----------------------------------------
	.byte		        Gn2 
	.byte		N48   , Bn2 
	.byte		N48   , Gn3 
	.byte	W48
	.byte		        An2 
	.byte		N48   , Cs3 
	.byte		N48   , An3 
	.byte	W48
@ 038   ----------------------------------------
mus_touhou7_stage6_boss_8_038:
	.byte		N48   , Bn2 , v076
	.byte		N48   , Dn3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte	PEND
	.byte		        Cs3 
	.byte		N48   , En3 
	.byte		N48   , Cs4 
	.byte	W48
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_038
	.byte		N48   , Cs3 , v076
	.byte		N48   , En3 
	.byte		N48   , Cs4 
	.byte	W48
@ 040   ----------------------------------------
	.byte		        Cs3 
	.byte		N48   , As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		N18   , Fs3 
	.byte		N18   , As3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Fs3 
	.byte		N18   , As3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
mus_touhou7_stage6_boss_8_042:
	.byte		N96   , Gn2 , v076
	.byte		N96   , Cn3 
	.byte		N96   , Gn3 
	.byte	W96
	.byte	PEND
@ 043   ----------------------------------------
mus_touhou7_stage6_boss_8_043:
	.byte		N96   , Bn2 , v076
	.byte		N96   , En3 
	.byte		N96   , Bn3 
	.byte	W96
	.byte	PEND
@ 044   ----------------------------------------
mus_touhou7_stage6_boss_8_044:
	.byte		N48   , Gn2 , v076
	.byte		N48   , Cn3 
	.byte		N48   , Gn3 
	.byte	W48
	.byte	PEND
	.byte		        An2 
	.byte		N48   , Dn3 
	.byte		N48   , An3 
	.byte	W48
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_043
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_043
@ 048   ----------------------------------------
mus_touhou7_stage6_boss_8_048:
	.byte		N48   , Cn3 , v076
	.byte		N48   , En3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte	PEND
	.byte		        Dn3 
	.byte		N48   , Fs3 
	.byte		N48   , Dn4 
	.byte	W48
@ 049   ----------------------------------------
	.byte		N96   , En3 
	.byte		N96   , Gn3 
	.byte		N96   , En4 
	.byte	W96
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_042
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_043
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_044
	.byte		N48   , An2 , v076
	.byte		N48   , Dn3 
	.byte		N48   , An3 
	.byte	W48
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_043
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_042
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_043
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_048
	.byte		N48   , Dn3 , v076
	.byte		N48   , Fs3 
	.byte		N48   , Dn4 
	.byte	W48
@ 057   ----------------------------------------
	.byte		N96   , En3 
	.byte		N96   , Gn3 
	.byte		N96   , En4 
	.byte	W96
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_021
@ 059   ----------------------------------------
mus_touhou7_stage6_boss_8_059:
	.byte		N96   , Cn3 , v076
	.byte		N96   , Fn3 
	.byte		N96   , Cn4 
	.byte	W96
	.byte	PEND
@ 060   ----------------------------------------
mus_touhou7_stage6_boss_8_060:
	.byte		N48   , Gs2 , v076
	.byte		N48   , Cs3 
	.byte		N48   , Gs3 
	.byte	W48
	.byte	PEND
	.byte		        As2 
	.byte		N48   , Ds3 
	.byte		N48   , As3 
	.byte	W48
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_059
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_021
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_059
@ 064   ----------------------------------------
mus_touhou7_stage6_boss_8_064:
	.byte		N48   , Cs3 , v076
	.byte		N48   , Fn3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte	PEND
	.byte		        Ds3 
	.byte		N48   , Gn3 
	.byte		N48   , Ds4 
	.byte	W48
@ 065   ----------------------------------------
mus_touhou7_stage6_boss_8_065:
	.byte		N96   , Fn3 , v076
	.byte		N96   , Gs3 
	.byte		N96   , Fn4 
	.byte	W96
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_021
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_059
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_060
	.byte		N48   , As2 , v076
	.byte		N48   , Ds3 
	.byte		N48   , As3 
	.byte	W48
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_059
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_021
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_059
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_064
	.byte		N48   , Ds3 , v076
	.byte		N48   , Gn3 
	.byte		N48   , Ds4 
	.byte	W48
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_8_065
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
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_touhou7_stage6_boss_9:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
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
	.byte	W48
@ 009   ----------------------------------------
	.byte		N06   , En1 , v112
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 013   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 018   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 019   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 021   ----------------------------------------
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 022   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 023   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 024   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 025   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 027   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 029   ----------------------------------------
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 030   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 031   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 032   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 033   ----------------------------------------
	.byte		N36   , Gn1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N36   , An1 
	.byte	W36
	.byte		N12   
	.byte	W12
@ 034   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 036   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N36   , Gn1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N36   , An1 
	.byte	W36
	.byte		N12   
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 040   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 043   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 047   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 048   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An2 
	.byte	W06
@ 049   ----------------------------------------
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 050   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 051   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 052   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 053   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 054   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 055   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 056   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An2 
	.byte	W06
@ 057   ----------------------------------------
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 059   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 060   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 065   ----------------------------------------
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
@ 070   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
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
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_touhou7_stage6_boss_10:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte	W92
	.byte	W01
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
	.byte	W72
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
mus_touhou7_stage6_boss_10_009:
	.byte		N03   , Cn1 , v100
	.byte		N03   , Dn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	PEND
	.byte	W80
	.byte	W01
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 010   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W44
	.byte	W01
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
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 011   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W36
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 012   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W36
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
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 013   ----------------------------------------
	.byte		N03   
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
	.byte		        Dn1 
	.byte	W03
	.byte	W03
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
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 014   ----------------------------------------
	.byte		N03   
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
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 015   ----------------------------------------
	.byte		N03   
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
	.byte		        Dn1 
	.byte	W03
	.byte	W03
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
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 016   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W60
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 017   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 018   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 019   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 020   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 021   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 022   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 023   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 024   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W03
@ 025   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 026   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 027   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 028   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 029   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 030   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 031   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 032   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W15
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W15
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W15
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
@ 033   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W80
	.byte	W01
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 034   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 035   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W36
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 036   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W36
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 037   ----------------------------------------
	.byte		N03   
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
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 038   ----------------------------------------
	.byte		N03   
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
	.byte		N03   
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 039   ----------------------------------------
	.byte		N03   
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
	.byte		        Dn1 
	.byte	W03
	.byte	W03
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
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_10_009
	.byte	W44
	.byte	W01
	.byte		N03   , Dn1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 043   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 044   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
@ 045   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 046   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 047   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 048   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
@ 049   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 050   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 051   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 052   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 053   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 054   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 055   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 056   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 057   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 058   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 059   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 060   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 061   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 062   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 063   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 064   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 065   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 066   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 067   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 068   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 069   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 070   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 071   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 072   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 073   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 074   ----------------------------------------
	.byte		        Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
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
	.byte	W72
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou7_stage6_boss_10_009
	.byte	W80
	.byte	W01
	.byte		N03   , Dn1 , v100
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 083   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W44
	.byte	W01
@ 084   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W32
	.byte	W01
@ 085   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W80
	.byte	W01
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 086   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W80
	.byte	W01
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 087   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W44
	.byte	W01
@ 088   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W56
	.byte	W01
	.byte		        Dn1 
	.byte	W03
	.byte	W32
	.byte	W01
@ 089   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 , v064
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v084
	.byte	W03
	.byte		        Dn1 , v088
	.byte	W03
	.byte		        Dn1 , v096
	.byte	W03
	.byte		        Dn1 , v100
	.byte	W03
@ 090   ----------------------------------------
	.byte	FINE

@**************** Track 11 (Midi-Chn.10) ****************@

mus_touhou7_stage6_boss_11:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
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
	.byte	W48
@ 009   ----------------------------------------
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 010   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
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
@ 011   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 012   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 013   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 014   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 015   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 016   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 017   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 018   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 019   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 020   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 021   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 022   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 023   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 024   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 025   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 026   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 027   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 028   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 029   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 030   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 031   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 032   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 033   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 034   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W12
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 035   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 036   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W12
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 037   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 038   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 039   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 040   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 043   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 044   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 045   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 046   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 047   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 048   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 049   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 050   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 051   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 052   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 053   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 054   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 055   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 056   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 057   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 058   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 059   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 060   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 061   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 062   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 063   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 064   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 065   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 066   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 067   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 068   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 069   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 070   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 071   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 072   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 073   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
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
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 083   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 084   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 085   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 086   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 087   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W12
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 088   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W12
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 089   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W12
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 090   ----------------------------------------
	.byte	FINE

@**************** Track 12 (Midi-Chn.10) ****************@

mus_touhou7_stage6_boss_12:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
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
	.byte	W48
	.byte		N03   , En1 , v040
	.byte	W03
	.byte		        En1 , v044
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
@ 008   ----------------------------------------
	.byte	W48
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
	.byte	W72
	.byte		        En1 , v060
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
@ 016   ----------------------------------------
	.byte	W48
	.byte		        En1 , v032
	.byte	W03
	.byte		        En1 , v036
	.byte	W03
	.byte		        En1 , v040
	.byte	W03
	.byte		        En1 , v044
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
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
	.byte	W48
	.byte		        En1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		        En1 , v092
	.byte	W03
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
	.byte		        En1 , v088
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte		        En1 , v044
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		        En1 , v092
	.byte	W03
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
	.byte	W48
	.byte		        En1 , v088
	.byte	W03
	.byte	W21
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
@ 040   ----------------------------------------
	.byte	W72
	.byte		        En1 , v060
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
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
	.byte		        En1 , v004
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v008
	.byte	W03
	.byte		        En1 , v012
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v016
	.byte	W03
	.byte		        En1 , v020
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v024
	.byte	W03
	.byte		        En1 , v028
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v032
	.byte	W03
	.byte		        En1 , v036
	.byte	W03
	.byte		        En1 , v040
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v044
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
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
	.byte	W24
	.byte		        En1 , v020
	.byte	W03
	.byte		        En1 , v024
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v028
	.byte	W03
	.byte		        En1 , v032
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v036
	.byte	W03
	.byte		        En1 , v040
	.byte	W03
	.byte		        En1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
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
	.byte	W24
	.byte		        En1 , v020
	.byte	W03
	.byte		        En1 , v024
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v028
	.byte	W03
	.byte		        En1 , v032
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v036
	.byte	W03
	.byte		        En1 , v040
	.byte	W03
	.byte		        En1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
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
	.byte	W24
	.byte		        En1 , v020
	.byte	W03
	.byte		        En1 , v024
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v028
	.byte	W03
	.byte		        En1 , v032
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v036
	.byte	W03
	.byte		        En1 , v040
	.byte	W03
	.byte		        En1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
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
	.byte	W24
	.byte		        En1 , v024
	.byte	W03
	.byte		        En1 , v028
	.byte	W03
	.byte		        En1 , v032
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v036
	.byte	W03
	.byte		        En1 , v040
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v044
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
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
	.byte		        En1 , v016
	.byte	W03
	.byte		        En1 , v020
	.byte	W03
	.byte		        En1 , v024
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v028
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v032
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v036
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v040
	.byte	W03
	.byte		        En1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
@ 090   ----------------------------------------
	.byte	FINE

@**************** Track 13 (Midi-Chn.10) ****************@

mus_touhou7_stage6_boss_13:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
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
	.byte	W48
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
	.byte	W72
	.byte		N03   , Cn2 , v044
	.byte	W03
	.byte		        Cn2 , v048
	.byte	W03
	.byte		        Bn1 , v052
	.byte	W03
	.byte		        Bn1 , v056
	.byte	W03
	.byte		        An1 , v060
	.byte	W03
	.byte		        An1 , v064
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		        Cn2 , v068
	.byte	W03
@ 016   ----------------------------------------
	.byte	W48
	.byte		        Cn2 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn2 , v072
	.byte	W03
	.byte		        Cn2 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn2 , v064
	.byte	W03
	.byte		        Cn2 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 , v056
	.byte	W03
	.byte		        Bn1 , v052
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 , v048
	.byte	W03
	.byte		        An1 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Gn1 , v040
	.byte	W03
	.byte		        Gn1 , v036
	.byte	W03
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
	.byte	W24
	.byte		        Cn2 , v076
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        An1 
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
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
	.byte	W24
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        An1 
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
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
	.byte	W24
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        An1 
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
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
	.byte	W24
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 
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
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
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
	.byte	FINE

@**************** Track 14 (Midi-Chn.11) ****************@

mus_touhou7_stage6_boss_14:
	.byte	KEYSH , mus_touhou7_stage6_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou7_stage6_boss_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		MOD   , 56
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
	.byte	W48
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
	.byte	W72
	.byte		N12   , Gs2 , v088
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        As2 
	.byte		N12   , Cs3 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N36   , Bn2 
	.byte		N36   , Ds3 
	.byte	W36
	.byte		        Bn2 
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N24   , Cs3 
	.byte		N24   , As3 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N36   , Bn2 
	.byte		N36   , Ds3 
	.byte	W36
	.byte		        Bn2 
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N24   , Cs3 
	.byte		N24   , As3 
	.byte	W24
@ 019   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        As2 
	.byte		N24   , Fs3 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N96   , Bn2 
	.byte		N96   , Gs3 
	.byte	W96
@ 021   ----------------------------------------
	.byte		N36   , Gs2 
	.byte		N36   , Ds3 
	.byte	W36
	.byte		N36   
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N36   , As2 
	.byte		N36   , Cs3 
	.byte	W36
	.byte		        As2 
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Ds2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        Bn1 
	.byte		N24   , Gs2 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , As2 
	.byte	W24
	.byte		        As1 
	.byte		N24   , Fs2 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N72   , Bn1 
	.byte		N72   , Gs2 
	.byte	W72
	.byte		N12   
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        As2 
	.byte		N12   , Cs3 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N36   , Bn2 
	.byte		N36   , Ds3 
	.byte	W36
	.byte		        Bn2 
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N24   , Cs3 
	.byte		N24   , As3 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N36   , Bn2 
	.byte		N36   , Ds3 
	.byte	W36
	.byte		        Bn2 
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N24   , Cs3 
	.byte		N24   , As3 
	.byte	W24
@ 027   ----------------------------------------
	.byte		        Gs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Fs4 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N96   , Bn3 
	.byte		N96   , Ds4 
	.byte	W96
@ 029   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		        Ds3 
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N36   , As3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		        Ds3 
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N24   , As3 
	.byte		N24   , Ds4 
	.byte	W24
@ 031   ----------------------------------------
	.byte		        Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Fs4 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N96   , Bn3 
	.byte		N96   , Gs4 
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
	.byte	W48
	.byte		N02   , As2 
	.byte	W02
	.byte		        Bn2 
	.byte	W02
	.byte		        Cn3 
	.byte	W02
	.byte		        Cs3 
	.byte	W02
	.byte		        Dn3 
	.byte	W02
	.byte		        Ds3 
	.byte	W02
	.byte		        En3 
	.byte	W02
	.byte		        Fn3 
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		        Gn3 
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		        An3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Bn3 
	.byte	W02
	.byte		        Cn4 
	.byte	W02
	.byte		        Cs4 
	.byte	W02
	.byte		        Dn4 
	.byte	W02
	.byte		        Ds4 
	.byte	W02
	.byte		        En4 
	.byte	W02
	.byte		        Fn4 
	.byte	W02
	.byte		        Fs4 
	.byte	W02
	.byte		        Gn4 
	.byte	W02
	.byte		        Gs4 
	.byte	W02
	.byte		        An4 
	.byte	W02
@ 058   ----------------------------------------
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
@ 059   ----------------------------------------
	.byte		N72   , Fn3 
	.byte	W72
	.byte		N24   , Ds3 
	.byte	W24
@ 060   ----------------------------------------
	.byte		        Fn3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 062   ----------------------------------------
	.byte		N48   , Fn3 
	.byte	W48
	.byte		        Cn4 
	.byte	W48
@ 063   ----------------------------------------
	.byte		N72   , Gn3 
	.byte	W72
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
@ 065   ----------------------------------------
	.byte		N72   , Fn4 
	.byte	W72
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 066   ----------------------------------------
	.byte		N72   , Fn4 
	.byte	W72
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 067   ----------------------------------------
	.byte		N72   , Fn4 
	.byte	W72
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 068   ----------------------------------------
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 069   ----------------------------------------
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N72   , Fn4 
	.byte	W72
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 071   ----------------------------------------
	.byte		N60   , As3 
	.byte	W60
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
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
	.byte		N36   , An2 
	.byte		N36   , Cs3 
	.byte	W36
	.byte		        An2 
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
@ 083   ----------------------------------------
	.byte		N36   , An2 
	.byte		N36   , Cs3 
	.byte	W36
	.byte		        An2 
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
@ 084   ----------------------------------------
	.byte		        Fs3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , En4 
	.byte	W24
@ 085   ----------------------------------------
	.byte		N96   , An3 
	.byte		N96   , Cs4 
	.byte	W96
@ 086   ----------------------------------------
	.byte		N36   , An3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		        Cs3 
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N24   , An3 
	.byte		N24   , Cs4 
	.byte	W24
@ 087   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		        Cs3 
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N24   , Gs3 
	.byte		N24   , Cs4 
	.byte	W24
@ 088   ----------------------------------------
	.byte		        An2 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , En4 
	.byte	W24
@ 089   ----------------------------------------
	.byte		N96   , An3 
	.byte		N96   , Fs4 
	.byte	W96
@ 090   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_touhou7_stage6_boss:
	.byte	14	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_touhou7_stage6_boss_pri	@ Priority
	.byte	mus_touhou7_stage6_boss_rev	@ Reverb.

	.word	mus_touhou7_stage6_boss_grp

	.word	mus_touhou7_stage6_boss_1
	.word	mus_touhou7_stage6_boss_2
	.word	mus_touhou7_stage6_boss_3
	.word	mus_touhou7_stage6_boss_4
	.word	mus_touhou7_stage6_boss_5
	.word	mus_touhou7_stage6_boss_6
	.word	mus_touhou7_stage6_boss_7
	.word	mus_touhou7_stage6_boss_8
	.word	mus_touhou7_stage6_boss_9
	.word	mus_touhou7_stage6_boss_10
	.word	mus_touhou7_stage6_boss_11
	.word	mus_touhou7_stage6_boss_12
	.word	mus_touhou7_stage6_boss_13
	.word	mus_touhou7_stage6_boss_14

	.end
