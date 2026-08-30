	.include "MPlayDef.s"

	.equ	mus_kanashimi_wo_yasashisa_ni_grp, voicegroup_kanashimi_wo_yasashisa_ni
	.equ	mus_kanashimi_wo_yasashisa_ni_pri, 0
	.equ	mus_kanashimi_wo_yasashisa_ni_rev, reverb_set+50
	.equ	mus_kanashimi_wo_yasashisa_ni_mvl, 100
	.equ	mus_kanashimi_wo_yasashisa_ni_key, 0
	.equ	mus_kanashimi_wo_yasashisa_ni_tbs, 1
	.equ	mus_kanashimi_wo_yasashisa_ni_exg, 1
	.equ	mus_kanashimi_wo_yasashisa_ni_cmp, 1

	.section .rodata
	.global	mus_kanashimi_wo_yasashisa_ni
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_kanashimi_wo_yasashisa_ni_1:
	.byte	KEYSH , mus_kanashimi_wo_yasashisa_ni_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 126*mus_kanashimi_wo_yasashisa_ni_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_kanashimi_wo_yasashisa_ni_mvl/mxv
	.byte		PAN   , c_v+0
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
	.byte	W36
	.byte		N11   , Bn0 , v124
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 009   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_1_009:
	.byte		N11   , Bn0 , v124
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
@ 010   ----------------------------------------
	.byte		N23   , An0 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_1_009
@ 012   ----------------------------------------
	.byte		N23   , An0 , v124
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N09   , An0 
	.byte	W09
@ 013   ----------------------------------------
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N90   , An1 
	.byte	W60
@ 014   ----------------------------------------
	.byte	W36
	.byte		TIE   , Gn1 , v108
	.byte	W60
@ 015   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 016   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		TIE   , Fs1 
	.byte	W60
@ 017   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 018   ----------------------------------------
	.byte		N12   , En1 
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W60
@ 019   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 020   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N84   , Fs1 
	.byte	W60
@ 021   ----------------------------------------
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N23   , Fs1 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W12
	.byte		N24   , Fs1 , v127
	.byte	W24
	.byte		N72   , Bn0 , v124
	.byte	W60
@ 023   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_1_023:
	.byte	W12
	.byte		N12   , An0 , v124
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N96   , An0 
	.byte	W60
	.byte	PEND
@ 024   ----------------------------------------
	.byte	W36
	.byte		TIE   , Gn0 
	.byte	W60
@ 025   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N03   , Ds1 
	.byte	W03
	.byte		N21   , En1 
	.byte	W21
@ 026   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N72   , Bn0 
	.byte	W60
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_1_023
@ 028   ----------------------------------------
	.byte	W36
	.byte		N44   , Fs1 , v124, gtp3
	.byte	W48
	.byte		N24   
	.byte	W12
@ 029   ----------------------------------------
	.byte	W12
	.byte		        Cs1 
	.byte	W84
@ 030   ----------------------------------------
	.byte	W36
mus_kanashimi_wo_yasashisa_ni_1_B1:
	.byte	W60
@ 031   ----------------------------------------
	.byte	W36
	.byte		N11   , En1 , v124
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Fs1 
	.byte	W12
@ 032   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_1_032:
	.byte		N11   , Fs1 , v124
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Gs0 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_1_033:
	.byte		N11   , Gs0 , v124
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Fs1 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_1_034:
	.byte		N11   , Fs1 , v124
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Ds1 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_1_035:
	.byte		N11   , Ds1 , v124
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Fs1 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_1_036:
	.byte		N11   , Fs1 , v124
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Gs1 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_1_037:
	.byte		N11   , Gs1 , v124
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Fs1 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N11   , En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Fs1 
	.byte	W12
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_1_032
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_1_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_1_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_1_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_1_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_1_037
@ 046   ----------------------------------------
	.byte		N11   , Fs1 , v124
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_kanashimi_wo_yasashisa_ni_1_B1
mus_kanashimi_wo_yasashisa_ni_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_kanashimi_wo_yasashisa_ni_2:
	.byte	KEYSH , mus_kanashimi_wo_yasashisa_ni_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_kanashimi_wo_yasashisa_ni_mvl/mxv
	.byte		PAN   , c_v-12
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
	.byte	W12
	.byte		N12   , Bn2 , v052
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 008   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_2_008:
	.byte		N11   , Ds3 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_2_009:
	.byte		N11   , Cs3 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Ds3 
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
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_009
@ 012   ----------------------------------------
	.byte		N11   , Ds3 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N03   
	.byte	W03
	.byte		N92   , Cs3 , v052, gtp1
	.byte	W56
	.byte	W01
@ 013   ----------------------------------------
	.byte	W48
	.byte		N20   , Gn2 , v068
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 014   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_2_014:
	.byte		N32   , En3 , v068
	.byte	W48
	.byte		N20   , Gn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_2_015:
	.byte		N32   , En3 , v068
	.byte	W48
	.byte		N20   , An2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_015
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_014
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_015
@ 021   ----------------------------------------
	.byte		N32   , En3 , v068
	.byte	W36
	.byte		N96   , Fs2 , v052
	.byte		N96   , Dn3 
	.byte	W60
@ 022   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_2_022:
	.byte	W36
	.byte		N96   , En2 , v052
	.byte		N96   , Cs3 
	.byte	W60
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W36
	.byte		TIE   , Dn2 
	.byte		TIE   , Bn2 
	.byte	W60
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W36
	.byte		EOT   , Dn2 
	.byte		        Bn2 
	.byte		N96   , Fs2 
	.byte		N96   , Dn3 
	.byte	W60
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_022
@ 027   ----------------------------------------
	.byte	W36
	.byte		N96   , Cs2 , v052
	.byte		N96   , Bn2 
	.byte	W60
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W36
mus_kanashimi_wo_yasashisa_ni_2_B1:
	.byte	W12
	.byte		N12   , En3 , v076
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N11   , Bn2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
@ 031   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_2_031:
	.byte		N11   , Cs3 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , As2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Gs2 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_2_032:
	.byte		N11   , Gs2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , As2 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_2_033:
	.byte		N11   , As2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , As2 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Gs2 
	.byte	W12
@ 036   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_2_036:
	.byte		N11   , Gs2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Fs2 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Fs2 , v068
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N11   , Bn2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_031
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_032
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_033
@ 042   ----------------------------------------
	.byte		N11   , Ds3 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Gs2 
	.byte	W12
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_2_036
@ 045   ----------------------------------------
	.byte		N11   , Fs2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_kanashimi_wo_yasashisa_ni_2_B1
mus_kanashimi_wo_yasashisa_ni_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_kanashimi_wo_yasashisa_ni_3:
	.byte	KEYSH , mus_kanashimi_wo_yasashisa_ni_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 106*mus_kanashimi_wo_yasashisa_ni_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N20   , Gs4 , v112
	.byte	W24
	.byte		N11   , As4 
	.byte	W12
	.byte		N15   , Bn4 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        Cs5 
	.byte	W12
@ 001   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_3_001:
	.byte	W04
	.byte		N15   , Bn4 , v112
	.byte	W16
	.byte		        As4 
	.byte	W16
	.byte		        Fs4 
	.byte	W16
	.byte		        Gs4 
	.byte	W16
	.byte		        As4 
	.byte	W16
	.byte		N32   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W24
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N20   , En4 
	.byte	W24
	.byte		N11   , Bn4 
	.byte	W12
	.byte		N20   , As4 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Gs4 
	.byte	W24
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N36   , As4 
	.byte	W12
@ 004   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_3_004:
	.byte	W36
	.byte		N15   , Bn4 , v112
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        Cs5 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_001
@ 006   ----------------------------------------
	.byte	W24
	.byte		N11   , As4 , v112
	.byte	W12
	.byte		N20   , Bn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N32   , As4 
	.byte	W24
@ 007   ----------------------------------------
	.byte	W12
	.byte		N11   , Bn4 
	.byte	W12
	.byte		TIE   
	.byte	W72
@ 008   ----------------------------------------
	.byte	W30
	.byte		EOT   
	.byte	W54
	.byte		N24   
	.byte	W12
@ 009   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_3_009:
	.byte	W12
	.byte		N24   , Cs5 , v112
	.byte	W24
	.byte		N48   , Bn4 
	.byte	W60
	.byte	PEND
@ 010   ----------------------------------------
	.byte	W84
	.byte		N24   
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_009
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_3_013:
	.byte	W36
	.byte		N05   , An4 , v112
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
	.byte		        Fs4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An4 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_3_014:
	.byte		N05   , Fs4 , v112
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn4 
	.byte	W12
	.byte		N78   , An4 
	.byte	W72
	.byte	PEND
@ 015   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_3_015:
	.byte	W36
	.byte		N05   , An4 , v112
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gn4 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte		N05   , Fs4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N78   , Fs4 
	.byte	W72
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_015
@ 020   ----------------------------------------
	.byte		N11   , Fs4 , v112
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N60   , Fs4 
	.byte	W72
@ 021   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_3_021:
	.byte	W12
	.byte		N20   , Bn3 , v112
	.byte	W24
	.byte		N56   , Fs4 , v112, gtp3
	.byte	W60
	.byte	PEND
@ 022   ----------------------------------------
	.byte		N20   , Bn3 
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N32   , Bn4 
	.byte	W36
	.byte		N44   , An4 
	.byte	W24
@ 023   ----------------------------------------
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N56   , An4 , v112, gtp3
	.byte	W60
@ 024   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W48
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_021
@ 026   ----------------------------------------
	.byte		N20   , Bn3 , v112
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N32   , En4 
	.byte	W36
	.byte		        An4 
	.byte	W24
@ 027   ----------------------------------------
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N66   , Bn4 
	.byte	W60
@ 028   ----------------------------------------
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N20   , Bn4 
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N20   , Bn4 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N72   , Bn4 
	.byte	W24
mus_kanashimi_wo_yasashisa_ni_3_B1:
	.byte	W60
@ 030   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_3_030:
	.byte		N20   , Gs4 , v112
	.byte	W24
	.byte		N11   , As4 
	.byte	W12
	.byte		N15   , Bn4 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        Cs5 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_001
@ 032   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_3_032:
	.byte	W24
	.byte		N11   , Ds4 , v112
	.byte	W12
	.byte		N20   , En4 
	.byte	W24
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N24   , As4 
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
mus_kanashimi_wo_yasashisa_ni_3_033:
	.byte		N24   , Gs4 , v112
	.byte	W24
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N36   , As4 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_001
@ 036   ----------------------------------------
	.byte	W24
	.byte		N11   , As4 , v112
	.byte	W12
	.byte		N20   , Bn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N36   , As4 
	.byte	W24
@ 037   ----------------------------------------
	.byte	W12
	.byte		N11   , Bn4 
	.byte	W12
	.byte		N54   
	.byte	W72
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_030
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_032
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_004
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_kanashimi_wo_yasashisa_ni_3_001
@ 044   ----------------------------------------
	.byte	W24
	.byte		N11   , As4 , v112
	.byte	W12
	.byte		N20   , Bn4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N36   , As4 
	.byte	W24
@ 045   ----------------------------------------
	.byte	W12
	.byte		N11   , Bn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_kanashimi_wo_yasashisa_ni_3_B1
mus_kanashimi_wo_yasashisa_ni_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_kanashimi_wo_yasashisa_ni:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_kanashimi_wo_yasashisa_ni_pri	@ Priority
	.byte	mus_kanashimi_wo_yasashisa_ni_rev	@ Reverb.

	.word	mus_kanashimi_wo_yasashisa_ni_grp

	.word	mus_kanashimi_wo_yasashisa_ni_1
	.word	mus_kanashimi_wo_yasashisa_ni_2
	.word	mus_kanashimi_wo_yasashisa_ni_3

	.end
