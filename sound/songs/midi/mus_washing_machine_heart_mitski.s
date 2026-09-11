	.include "MPlayDef.s"

	.equ	mus_washing_machine_heart_mitski_grp, voicegroup_hlw_rock_metal
	.equ	mus_washing_machine_heart_mitski_pri, 0
	.equ	mus_washing_machine_heart_mitski_rev, reverb_set+12
	.equ	mus_washing_machine_heart_mitski_mvl, 90
	.equ	mus_washing_machine_heart_mitski_key, 0
	.equ	mus_washing_machine_heart_mitski_tbs, 1
	.equ	mus_washing_machine_heart_mitski_exg, 0
	.equ	mus_washing_machine_heart_mitski_cmp, 1

	.section .rodata
	.global	mus_washing_machine_heart_mitski
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_washing_machine_heart_mitski_1:
	.byte	KEYSH , mus_washing_machine_heart_mitski_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 108*mus_washing_machine_heart_mitski_tbs/2
	.byte		VOICE , 33
	.byte		VOL   , 90*mus_washing_machine_heart_mitski_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
mus_washing_machine_heart_mitski_1_001:
	.byte		N12   , Cs1 , v068
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
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_001
@ 003   ----------------------------------------
mus_washing_machine_heart_mitski_1_003:
	.byte		N12   , Cs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_washing_machine_heart_mitski_1_004:
	.byte		N12   , Dn1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_washing_machine_heart_mitski_1_005:
	.byte		N12   , Fn1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_005
@ 010   ----------------------------------------
mus_washing_machine_heart_mitski_1_010:
	.byte		N12   , As0 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 012   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_003
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_004
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_005
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_003
@ 022   ----------------------------------------
	.byte		N12   , Dn1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 023   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 024   ----------------------------------------
mus_washing_machine_heart_mitski_1_024:
	.byte		N12   , An1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_washing_machine_heart_mitski_1_025:
	.byte		N12   , En1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_washing_machine_heart_mitski_1_026:
	.byte		N12   , Bn0 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_washing_machine_heart_mitski_1_027:
	.byte		N12   , An1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_washing_machine_heart_mitski_1_028:
	.byte		N12   , An1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_washing_machine_heart_mitski_1_029:
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_washing_machine_heart_mitski_1_030:
	.byte		N12   , An1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_washing_machine_heart_mitski_1_031:
	.byte		N12   , Bn0 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_washing_machine_heart_mitski_1_032:
	.byte		N12   , En1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_washing_machine_heart_mitski_1_033:
	.byte		N12   , Gn1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_washing_machine_heart_mitski_1_034:
	.byte		N12   , Dn1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_010
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_030
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_031
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_032
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_033
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_034
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_010
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_030
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_031
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_032
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_033
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_034
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_010
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_024
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_026
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_027
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_028
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_1_029
@ 054   ----------------------------------------
	.byte		N12   , An1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte		N12   
	.byte	W12
@ 055   ----------------------------------------
	.byte		N12   
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte		N24   
	.byte		N24   
	.byte	W12
@ 056   ----------------------------------------
	.byte	W12
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_washing_machine_heart_mitski_2:
	.byte	KEYSH , mus_washing_machine_heart_mitski_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 86*mus_washing_machine_heart_mitski_mvl/mxv
	.byte		PAN   , c_v-16
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
	.byte	W66
	.byte	W01
	.byte		N01   , Cs3 , v060
	.byte	W02
	.byte		        Fs3 
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte		N24   , Fs3 
	.byte		N24   , An3 
	.byte		N24   , Cs4 
	.byte		N24   , Fs4 
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Fs3 
	.byte		N24   , An3 
	.byte		N24   , Cs4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gs3 
	.byte		N24   , Bn3 
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N10   , Fs3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte		N12   
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Cs3 
	.byte	W12
	.byte		N10   , En3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte		N24   
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N10   , Fs3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte		N01   
	.byte		N01   
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		N10   , En3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        Gs3 
	.byte	W02
	.byte		N12   
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N10   , Cs3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        En3 
	.byte	W02
	.byte		N12   
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		N10   , Ds3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        Fs3 
	.byte	W02
	.byte		N12   
	.byte		N12   , An3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        Gs3 
	.byte	W02
	.byte		N12   
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		N10   , Cs3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        En3 
	.byte	W02
	.byte		N12   
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N10   , Fs3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte		N12   
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		N10   , Cs3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        En3 
	.byte	W02
	.byte		N12   
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        Gs3 
	.byte	W02
	.byte		N12   
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Cs3 
	.byte	W12
	.byte		N10   , Fs3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte		N12   
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N10   , Fs3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte		N12   
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		N10   , Cs3 
	.byte	W09
	.byte		N01   
	.byte	W01
	.byte		        En3 
	.byte	W02
	.byte		N12   
	.byte		N12   , An3 
	.byte	W72
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
mus_washing_machine_heart_mitski_2_036:
	.byte	W44
	.byte	W01
	.byte		N01   , Bn2 , v060
	.byte	W01
	.byte		        Dn3 
	.byte	W02
	.byte		N24   
	.byte		N24   , Fs3 
	.byte		N24   , Bn3 
	.byte	W48
	.byte	PEND
@ 037   ----------------------------------------
mus_washing_machine_heart_mitski_2_037:
	.byte	W44
	.byte	W01
	.byte		N01   , En3 , v060
	.byte	W01
	.byte		        Gs3 
	.byte	W02
	.byte		N24   
	.byte		N24   , Bn3 
	.byte		N24   , En4 
	.byte	W48
	.byte	PEND
@ 038   ----------------------------------------
mus_washing_machine_heart_mitski_2_038:
	.byte	W44
	.byte	W01
	.byte		N01   , Bn2 , v060
	.byte	W01
	.byte		        Dn3 
	.byte	W02
	.byte		N24   
	.byte		N24   , Gn3 
	.byte		N24   , Bn3 
	.byte	W48
	.byte	PEND
@ 039   ----------------------------------------
mus_washing_machine_heart_mitski_2_039:
	.byte	W44
	.byte	W01
	.byte		N03   , Dn3 , v060
	.byte	W01
	.byte		N01   , Fs3 
	.byte	W02
	.byte		N24   
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W48
	.byte	PEND
@ 040   ----------------------------------------
mus_washing_machine_heart_mitski_2_040:
	.byte	W44
	.byte	W01
	.byte		N01   , Fn2 , v060
	.byte	W01
	.byte		        As2 
	.byte	W02
	.byte		N24   
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte	W48
	.byte	PEND
@ 041   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N01   , An2 
	.byte	W01
	.byte		        Cs3 
	.byte	W02
	.byte		N24   
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W48
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_2_036
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_2_037
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_2_038
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_2_039
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_2_040
@ 047   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N01   , An2 , v060
	.byte	W01
	.byte		        Cs3 
	.byte	W02
	.byte		N24   
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W24
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_washing_machine_heart_mitski_3:
	.byte	KEYSH , mus_washing_machine_heart_mitski_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 28
	.byte		VOL   , 90*mus_washing_machine_heart_mitski_mvl/mxv
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
	.byte	W72
	.byte		N24   , Cn3 , v060
	.byte		N24   , Cn4 
	.byte	W24
@ 017   ----------------------------------------
mus_washing_machine_heart_mitski_3_017:
	.byte		N24   , Cs3 , v060
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N06   , En3 
	.byte		N06   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   , Dn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Cn4 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        An2 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Dn3 
	.byte		N12   , Dn4 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte	W24
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_3_017
@ 022   ----------------------------------------
	.byte		N24   , Cs3 , v060
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Fs4 
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Dn4 
	.byte	W48
@ 024   ----------------------------------------
	.byte		        Cs3 
	.byte		N24   , Cs4 
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
	.byte	W60
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte	W24
@ 049   ----------------------------------------
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W12
@ 050   ----------------------------------------
	.byte	W24
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Fs4 
	.byte	W24
@ 051   ----------------------------------------
	.byte		N06   , En3 
	.byte		N06   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   , Dn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 052   ----------------------------------------
	.byte		N24   , An2 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        An2 
	.byte		N24   , An3 
	.byte	W24
@ 053   ----------------------------------------
	.byte		N12   , Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , Dn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
@ 054   ----------------------------------------
	.byte		N24   , Dn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_washing_machine_heart_mitski_4:
	.byte	KEYSH , mus_washing_machine_heart_mitski_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 82*mus_washing_machine_heart_mitski_mvl/mxv
	.byte		PAN   , c_v+8
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
mus_washing_machine_heart_mitski_4_003:
	.byte		N24   , Cs3 , v056
	.byte		N24   
	.byte	W24
	.byte		        Fs3 
	.byte		N24   
	.byte	W24
	.byte		N18   , En3 
	.byte		N18   
	.byte	W12
	.byte		        Fs3 
	.byte		N18   
	.byte	W12
	.byte		N24   , Dn3 
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_washing_machine_heart_mitski_4_004:
	.byte		N24   , Cs3 , v056
	.byte		N24   
	.byte	W24
	.byte		N18   , Bn2 
	.byte		N18   
	.byte	W12
	.byte		        Cs3 
	.byte		N18   
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   
	.byte	W24
	.byte		N18   , Bn2 
	.byte		N18   
	.byte	W12
	.byte		        Cn3 
	.byte		N18   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_washing_machine_heart_mitski_4_005:
	.byte		N24   , Cs3 , v056
	.byte		N24   
	.byte	W24
	.byte		        An2 
	.byte		N24   
	.byte	W24
	.byte		N18   , Gs2 
	.byte		N18   
	.byte	W12
	.byte		        An2 
	.byte		N18   
	.byte	W12
	.byte		        Bn2 
	.byte		N18   
	.byte	W12
	.byte		        Cs3 
	.byte		N18   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_washing_machine_heart_mitski_4_006:
	.byte		N18   , Dn3 , v056
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte		N18   
	.byte	W12
	.byte		        En3 
	.byte		N18   
	.byte	W12
	.byte		N24   , Dn3 
	.byte		N24   
	.byte	W24
	.byte		        Cs3 
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_003
@ 008   ----------------------------------------
	.byte		N24   , Cs3 , v056
	.byte		N24   
	.byte	W24
	.byte		N18   , Bn2 
	.byte		N18   
	.byte	W12
	.byte		        Cs3 
	.byte		N18   
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   
	.byte	W24
	.byte		        Bn2 
	.byte		N24   
	.byte	W24
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_005
@ 010   ----------------------------------------
	.byte		N24   , Dn3 , v056
	.byte		N24   
	.byte	W24
	.byte		N18   
	.byte		N18   
	.byte	W12
	.byte		        En3 
	.byte		N18   
	.byte	W12
	.byte		N24   , Dn3 
	.byte		N24   
	.byte	W24
	.byte		        Cs3 
	.byte		N24   
	.byte	W24
@ 011   ----------------------------------------
	.byte		N18   , Gs3 
	.byte		N18   
	.byte	W12
	.byte		        An3 
	.byte		N18   
	.byte	W12
	.byte		        Gs3 
	.byte		N18   
	.byte	W12
	.byte		        Fs3 
	.byte		N18   
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   
	.byte	W24
	.byte		        Dn3 
	.byte		N24   
	.byte	W24
@ 012   ----------------------------------------
	.byte		        En3 
	.byte		N24   
	.byte	W24
	.byte		N18   , Dn3 
	.byte		N18   
	.byte	W12
	.byte		        Cs3 
	.byte		N18   
	.byte	W12
	.byte		        An2 
	.byte		N18   
	.byte	W12
	.byte		        Bn2 
	.byte		N18   
	.byte	W12
	.byte		        Cs3 
	.byte		N18   
	.byte	W24
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_006
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
	.byte		N18   , Gs3 , v056
	.byte		N18   
	.byte	W12
	.byte		        An3 
	.byte		N18   
	.byte	W12
	.byte		        Gs3 
	.byte		N18   
	.byte	W12
	.byte		        Fs3 
	.byte		N18   
	.byte	W12
@ 025   ----------------------------------------
	.byte		N24   , Cs3 
	.byte		N24   
	.byte	W24
	.byte		        Dn3 
	.byte		N24   
	.byte	W24
	.byte		        En3 
	.byte		N24   
	.byte	W24
	.byte		N18   , Dn3 
	.byte		N18   
	.byte	W12
	.byte		        Cs3 
	.byte		N18   
	.byte	W12
@ 026   ----------------------------------------
	.byte		        An2 
	.byte		N18   
	.byte	W12
	.byte		        Bn2 
	.byte		N18   
	.byte	W12
	.byte		        Cn3 
	.byte		N18   
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   
	.byte	W24
	.byte		N18   , Fs3 
	.byte		N18   
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   
	.byte	W24
@ 027   ----------------------------------------
mus_washing_machine_heart_mitski_4_027:
	.byte		N18   , Dn3 , v056
	.byte		N18   
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   
	.byte	W24
	.byte		N18   , Bn2 
	.byte		N18   
	.byte	W12
	.byte		N24   , Fs2 
	.byte		N24   
	.byte	W24
	.byte		N18   , Cs3 
	.byte		N18   
	.byte	W12
	.byte		N06   
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 
	.byte		N12   
	.byte	W06
	.byte		        Cs3 
	.byte		N12   
	.byte	W06
	.byte		N18   , Bn2 
	.byte		N18   
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   
	.byte	W24
	.byte		N18   , Fs3 
	.byte		N18   
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   
	.byte	W24
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_027
@ 030   ----------------------------------------
	.byte	W24
	.byte		N12   , An2 , v056
	.byte		N12   
	.byte	W12
	.byte		N24   , An3 
	.byte		N24   
	.byte	W60
@ 031   ----------------------------------------
mus_washing_machine_heart_mitski_4_031:
	.byte		N24   , Cs3 , v056
	.byte		N24   
	.byte	W36
	.byte		        Gs3 
	.byte		N24   
	.byte	W60
	.byte	PEND
@ 032   ----------------------------------------
mus_washing_machine_heart_mitski_4_032:
	.byte	W36
	.byte		N24   , Fs3 , v056
	.byte		N24   
	.byte	W60
	.byte	PEND
@ 033   ----------------------------------------
mus_washing_machine_heart_mitski_4_033:
	.byte		N24   , An2 , v056
	.byte		N24   
	.byte	W36
	.byte		        En3 
	.byte		N24   
	.byte	W60
	.byte	PEND
@ 034   ----------------------------------------
mus_washing_machine_heart_mitski_4_034:
	.byte	W36
	.byte		N24   , Dn3 , v056
	.byte		N24   
	.byte	W60
	.byte	PEND
@ 035   ----------------------------------------
mus_washing_machine_heart_mitski_4_035:
	.byte		N24   , Fs2 , v056
	.byte		N24   
	.byte	W36
	.byte		        Cs3 
	.byte		N24   
	.byte	W48
	.byte		N12   , Dn3 
	.byte		N12   
	.byte	W06
	.byte		        Cs3 
	.byte		N12   
	.byte	W06
	.byte	PEND
@ 036   ----------------------------------------
mus_washing_machine_heart_mitski_4_036:
	.byte		N24   , Bn2 , v056
	.byte		N24   
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   
	.byte	W12
	.byte		N24   , An3 
	.byte		N24   
	.byte	W60
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_031
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_032
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_033
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_034
@ 041   ----------------------------------------
	.byte		N18   , En3 , v056
	.byte		N18   
	.byte	W12
	.byte		        Dn3 
	.byte		N18   
	.byte	W24
	.byte		N24   , Cs3 
	.byte		N24   
	.byte	W48
	.byte		N12   , Dn3 
	.byte		N12   
	.byte	W06
	.byte		        Cs3 
	.byte		N12   
	.byte	W06
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_036
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_031
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_032
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_033
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_034
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_4_035
@ 048   ----------------------------------------
	.byte		N24   , Bn2 , v056
	.byte		N24   
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   
	.byte	W12
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_washing_machine_heart_mitski_5:
	.byte	KEYSH , mus_washing_machine_heart_mitski_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 94*mus_washing_machine_heart_mitski_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W12
@ 001   ----------------------------------------
mus_washing_machine_heart_mitski_5_001:
	.byte		N02   , Cn1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 003   ----------------------------------------
mus_washing_machine_heart_mitski_5_003:
	.byte		N02   , Cn1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , En1 , v044
	.byte		N02   , Fs1 , v040
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , En1 , v060
	.byte		N02   , Fs1 , v032
	.byte	W06
	.byte		        En1 , v068
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_washing_machine_heart_mitski_5_001
@ 053   ----------------------------------------
	.byte		N02   , Cn1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_washing_machine_heart_mitski:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_washing_machine_heart_mitski_pri	@ Priority
	.byte	mus_washing_machine_heart_mitski_rev	@ Reverb.

	.word	mus_washing_machine_heart_mitski_grp

	.word	mus_washing_machine_heart_mitski_1
	.word	mus_washing_machine_heart_mitski_2
	.word	mus_washing_machine_heart_mitski_3
	.word	mus_washing_machine_heart_mitski_4
	.word	mus_washing_machine_heart_mitski_5

	.end
