	.include "MPlayDef.s"

	.equ	mus_abracadabra_grp, voicegroup_diva_pop
	.equ	mus_abracadabra_pri, 0
	.equ	mus_abracadabra_rev, reverb_set+50
	.equ	mus_abracadabra_mvl, 100
	.equ	mus_abracadabra_key, 0
	.equ	mus_abracadabra_tbs, 1
	.equ	mus_abracadabra_exg, 1
	.equ	mus_abracadabra_cmp, 1

	.section .rodata
	.global	mus_abracadabra
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_abracadabra_1:
	.byte	KEYSH , mus_abracadabra_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 126*mus_abracadabra_tbs/2
	.byte		VOICE , 5
	.byte		VOL   , 76*mus_abracadabra_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N96   , As2 , v072
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
mus_abracadabra_1_B1:
@ 003   ----------------------------------------
	.byte		N96   , Cn3 , v052
	.byte	W96
@ 004   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 005   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Cn3 
	.byte	W96
@ 008   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 009   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Cn3 , v076
	.byte	W96
@ 012   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 013   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Gs2 
	.byte	W96
@ 015   ----------------------------------------
	.byte		        Cn3 
	.byte	W96
@ 016   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Gs2 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Cn2 , v052
	.byte	W96
@ 020   ----------------------------------------
mus_abracadabra_1_020:
	.byte		N03   , Fn2 , v052
	.byte	W18
	.byte		        Fn2 , v100
	.byte	W18
	.byte		        Fs2 
	.byte	W24
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , Fs2 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_1_020
@ 023   ----------------------------------------
	.byte		N48   , Fs2 , v100
	.byte	W96
	.byte	GOTO
	 .word	mus_abracadabra_1_B1
mus_abracadabra_1_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_abracadabra_2:
	.byte	KEYSH , mus_abracadabra_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 116*mus_abracadabra_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N05   , As0 , v052
	.byte	W06
	.byte		        As0 , v060
	.byte	W06
	.byte		        As0 , v072
	.byte	W06
	.byte		        As0 , v060
	.byte	W06
	.byte		        As0 , v052
	.byte	W06
	.byte		        As0 , v060
	.byte	W06
	.byte		        As0 , v072
	.byte	W06
	.byte		        As0 , v060
	.byte	W06
	.byte		        As0 , v052
	.byte	W06
	.byte		        As0 , v060
	.byte	W06
	.byte		        As0 , v072
	.byte	W06
	.byte		        As0 , v060
	.byte	W06
	.byte		        As0 , v052
	.byte	W06
	.byte		        As0 , v060
	.byte	W06
	.byte		        As0 , v072
	.byte	W06
	.byte		        As0 , v060
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Gs0 , v052
	.byte	W06
	.byte		        Gs0 , v060
	.byte	W06
	.byte		        Gs0 , v072
	.byte	W06
	.byte		        Gs0 , v060
	.byte	W06
	.byte		        Gs0 , v052
	.byte	W06
	.byte		        Gs0 , v060
	.byte	W06
	.byte		        Gs0 , v072
	.byte	W06
	.byte		        Gs0 , v060
	.byte	W06
	.byte		        Gs0 , v052
	.byte	W06
	.byte		        Gs0 , v060
	.byte	W06
	.byte		        Gs0 , v072
	.byte	W06
	.byte		        Gs0 , v060
	.byte	W06
	.byte		        Gs0 , v052
	.byte	W06
	.byte		        Gs0 , v060
	.byte	W06
	.byte		        Gs0 , v072
	.byte	W06
	.byte		        Gs0 , v060
	.byte	W06
mus_abracadabra_2_B1:
@ 002   ----------------------------------------
mus_abracadabra_2_002:
	.byte		N05   , Fn1 , v024
	.byte	W06
	.byte		        Fn1 , v032
	.byte	W06
	.byte		        Fn1 , v044
	.byte	W06
	.byte		        Fn1 , v032
	.byte	W06
	.byte		        Fn1 , v024
	.byte	W06
	.byte		        Fn1 , v032
	.byte	W06
	.byte		        Fn1 , v044
	.byte	W06
	.byte		        Fn1 , v032
	.byte	W06
	.byte		        Fn1 , v024
	.byte	W06
	.byte		        Fn1 , v032
	.byte	W06
	.byte		        Fn1 , v044
	.byte	W06
	.byte		        Fn1 , v032
	.byte	W06
	.byte		        Fn1 , v024
	.byte	W06
	.byte		        Fn1 , v032
	.byte	W06
	.byte		        Fn1 , v044
	.byte	W06
	.byte		        Fn1 , v032
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_abracadabra_2_003:
	.byte		N05   , Cn1 , v024
	.byte	W06
	.byte		        Cn1 , v032
	.byte	W06
	.byte		        Cn1 , v044
	.byte	W06
	.byte		        Cn1 , v032
	.byte	W06
	.byte		        Cn1 , v024
	.byte	W06
	.byte		        Cn1 , v032
	.byte	W06
	.byte		        Cn1 , v044
	.byte	W06
	.byte		        Cn1 , v032
	.byte	W06
	.byte		        Cn1 , v024
	.byte	W06
	.byte		        Cn1 , v032
	.byte	W06
	.byte		        Cn1 , v044
	.byte	W06
	.byte		        Cn1 , v032
	.byte	W06
	.byte		        Cn1 , v024
	.byte	W06
	.byte		        Cn1 , v032
	.byte	W06
	.byte		        Cn1 , v044
	.byte	W06
	.byte		        Cn1 , v032
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_abracadabra_2_004:
	.byte		N05   , As0 , v024
	.byte	W06
	.byte		        As0 , v032
	.byte	W06
	.byte		        As0 , v044
	.byte	W06
	.byte		        As0 , v032
	.byte	W06
	.byte		        As0 , v024
	.byte	W06
	.byte		        As0 , v032
	.byte	W06
	.byte		        As0 , v044
	.byte	W06
	.byte		        As0 , v032
	.byte	W06
	.byte		        As0 , v024
	.byte	W06
	.byte		        As0 , v032
	.byte	W06
	.byte		        As0 , v044
	.byte	W06
	.byte		        As0 , v032
	.byte	W06
	.byte		        As0 , v024
	.byte	W06
	.byte		        As0 , v032
	.byte	W06
	.byte		        As0 , v044
	.byte	W06
	.byte		        As0 , v032
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        Gs0 , v024
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v024
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v024
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v024
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_2_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_2_004
@ 009   ----------------------------------------
	.byte		N05   , Gs0 , v024
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v024
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v024
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v032
	.byte	W30
@ 010   ----------------------------------------
mus_abracadabra_2_010:
	.byte		N05   , Fn0 , v060
	.byte	W06
	.byte		        Fn0 , v072
	.byte	W06
	.byte		        Fn0 , v080
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v060
	.byte	W06
	.byte		        Fn0 , v072
	.byte	W06
	.byte		        Fn0 , v080
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v060
	.byte	W06
	.byte		        Fn0 , v072
	.byte	W06
	.byte		        Fn0 , v080
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v060
	.byte	W06
	.byte		        Fn0 , v072
	.byte	W06
	.byte		        Fn0 , v080
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
mus_abracadabra_2_011:
	.byte		N05   , Cn1 , v060
	.byte	W06
	.byte		        Cn1 , v072
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        Cn1 , v072
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        Cn1 , v072
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        Cn1 , v072
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_abracadabra_2_012:
	.byte		N05   , As0 , v060
	.byte	W06
	.byte		        As0 , v072
	.byte	W06
	.byte		        As0 , v080
	.byte	W06
	.byte		        As0 , v068
	.byte	W06
	.byte		        As0 , v060
	.byte	W06
	.byte		        As0 , v072
	.byte	W06
	.byte		        As0 , v080
	.byte	W06
	.byte		        As0 , v068
	.byte	W06
	.byte		        As0 , v060
	.byte	W06
	.byte		        As0 , v072
	.byte	W06
	.byte		        As0 , v080
	.byte	W06
	.byte		        As0 , v068
	.byte	W06
	.byte		        As0 , v060
	.byte	W06
	.byte		        As0 , v072
	.byte	W06
	.byte		        As0 , v080
	.byte	W06
	.byte		        As0 , v068
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_abracadabra_2_013:
	.byte		N05   , Gs0 , v060
	.byte	W06
	.byte		        Gs0 , v072
	.byte	W06
	.byte		        Gs0 , v080
	.byte	W06
	.byte		        Gs0 , v068
	.byte	W06
	.byte		        Gs0 , v060
	.byte	W06
	.byte		        Gs0 , v072
	.byte	W06
	.byte		        Gs0 , v080
	.byte	W06
	.byte		        Gs0 , v068
	.byte	W06
	.byte		        Gs0 , v060
	.byte	W06
	.byte		        Gs0 , v072
	.byte	W06
	.byte		        Gs0 , v080
	.byte	W06
	.byte		        Gs0 , v068
	.byte	W06
	.byte		        Gs0 , v060
	.byte	W06
	.byte		        Gs0 , v072
	.byte	W06
	.byte		        Gs0 , v080
	.byte	W06
	.byte		        Gs0 , v068
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_2_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_2_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_2_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_2_013
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
	.byte	GOTO
	 .word	mus_abracadabra_2_B1
mus_abracadabra_2_B2:
@ 023   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_abracadabra_3:
	.byte	KEYSH , mus_abracadabra_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 64*mus_abracadabra_mvl/mxv
	.byte		PAN   , c_v+20
	.byte	W11
	.byte		N12   , Dn3 , v088
	.byte	W01
	.byte		        As3 
	.byte	W32
	.byte	W03
	.byte		N06   , As3 , v092
	.byte	W01
	.byte		        Dn3 , v088
	.byte	W17
	.byte		        As3 
	.byte	W01
	.byte		        Fn3 
	.byte	W17
	.byte		        Fn3 , v092
	.byte	W01
	.byte		        Dn3 , v088
	.byte	W12
@ 001   ----------------------------------------
	.byte	W11
	.byte		N12   , Ds3 , v092
	.byte	W01
	.byte		        Gs3 
	.byte	W32
	.byte	W03
	.byte		N06   , Ds3 
	.byte		N06   , Gs3 
	.byte	W18
	.byte		        Ds3 , v088
	.byte	W01
	.byte		        Gs3 , v092
	.byte	W17
	.byte		N06   
	.byte	W01
	.byte		        Cn3 
	.byte	W12
mus_abracadabra_3_B1:
@ 002   ----------------------------------------
	.byte		N90   , Gs2 , v056
	.byte		N90   , Fn3 , v048
	.byte	W92
	.byte	W03
	.byte		        Gn2 
	.byte		N90   , Cn3 , v056
	.byte	W01
@ 003   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		        Dn3 , v052
	.byte	W01
@ 004   ----------------------------------------
	.byte		        As2 , v048
	.byte	W92
	.byte	W03
	.byte		        Fn2 
	.byte	W01
@ 005   ----------------------------------------
	.byte		        Gs2 , v052
	.byte	W92
	.byte	W03
	.byte		        Cn3 , v048
	.byte	W01
@ 006   ----------------------------------------
	.byte		        Fn3 
	.byte	W92
	.byte	W03
	.byte		        Gn2 , v052
	.byte		N90   , Cn3 , v048
	.byte	W01
@ 007   ----------------------------------------
mus_abracadabra_3_007:
	.byte	W92
	.byte	W03
	.byte		N90   , Fn2 , v052
	.byte	W01
	.byte	PEND
@ 008   ----------------------------------------
	.byte		        As2 , v056
	.byte	W92
	.byte	W03
	.byte		N72   , Fn2 , v052
	.byte		N72   , Gs2 
	.byte	W01
@ 009   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N90   , Gs2 , v056
	.byte		N90   , Cn3 , v048
	.byte	W01
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Ds2 , v052
	.byte		N90   , Gn2 , v056
	.byte	W92
	.byte	W03
	.byte		        As2 
	.byte		N90   , Dn3 , v048
	.byte	W01
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_3_007
@ 013   ----------------------------------------
	.byte		N90   , Gs2 , v048
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
	.byte	GOTO
	 .word	mus_abracadabra_3_B1
mus_abracadabra_3_B2:
@ 023   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_abracadabra_4:
	.byte	KEYSH , mus_abracadabra_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 7
	.byte		VOL   , 108*mus_abracadabra_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W68
	.byte	W03
	.byte		N06   , Fn3 , v100
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gs3 , v096
	.byte	W01
@ 001   ----------------------------------------
	.byte	W12
	.byte		N24   , Gs3 , v104
	.byte	W24
	.byte		N32   , Fn3 , v104, gtp3
	.byte	W36
	.byte		N06   , Fn3 , v100
	.byte	W12
	.byte		        Fn3 , v096
	.byte	W12
mus_abracadabra_4_B1:
@ 002   ----------------------------------------
	.byte		N24   , Gs3 , v104
	.byte	W24
	.byte		N12   , Gn3 , v100
	.byte	W12
	.byte		N24   , Fn3 , v096
	.byte	W36
	.byte		N06   , Cn3 , v100
	.byte	W12
	.byte		N12   , Cn3 , v096
	.byte	W12
@ 003   ----------------------------------------
	.byte	W11
	.byte		N06   , Ds3 , v100
	.byte	W13
	.byte		        Ds3 , v096
	.byte	W12
	.byte		N24   , Fn3 , v100
	.byte	W36
	.byte		N06   , Cn3 , v104
	.byte	W11
	.byte		N12   
	.byte	W13
@ 004   ----------------------------------------
	.byte		N18   , Dn3 , v100
	.byte	W24
	.byte		        Dn3 , v096
	.byte	W23
	.byte		N12   , Dn3 , v100
	.byte	W13
	.byte		        Ds3 
	.byte	W24
	.byte		N36   , Cn3 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W72
	.byte		N06   , Fn3 , v096
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W12
@ 006   ----------------------------------------
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , Gn3 , v096
	.byte	W44
	.byte	W03
	.byte		N06   , Cn3 
	.byte	W13
	.byte		N12   , Cn3 , v104
	.byte	W12
@ 007   ----------------------------------------
	.byte	W11
	.byte		N06   , Ds3 , v096
	.byte	W13
	.byte		N06   
	.byte	W11
	.byte		N24   , Fn3 , v100
	.byte	W36
	.byte	W01
	.byte		N06   , Cn3 , v096
	.byte	W12
	.byte		N12   , Cn3 , v100
	.byte	W12
@ 008   ----------------------------------------
	.byte	W24
	.byte		N18   , Dn3 , v104
	.byte	W23
	.byte		N12   
	.byte	W24
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W12
	.byte		N36   , Cn3 , v104
	.byte	W12
@ 009   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N06   , Cn4 , v100
	.byte	W01
@ 010   ----------------------------------------
	.byte	W12
	.byte		        Cn4 , v096
	.byte	W11
	.byte		        Cn4 , v100
	.byte	W12
	.byte		N24   , Cn4 , v096
	.byte	W24
	.byte	W01
	.byte		N06   , Gs3 , v100
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		        Gs3 , v096
	.byte	W11
	.byte		        As3 
	.byte	W01
@ 011   ----------------------------------------
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N24   
	.byte	W32
	.byte	W03
	.byte		N06   , Gn3 , v100
	.byte	W13
	.byte		        Gn3 , v104
	.byte	W12
@ 012   ----------------------------------------
	.byte		        As3 , v100
	.byte	W11
	.byte		N18   , As3 , v104
	.byte	W24
	.byte		N24   , As3 , v100
	.byte	W36
	.byte	W01
	.byte		N06   , Gn3 , v096
	.byte	W11
	.byte		        Gn3 , v104
	.byte	W13
@ 013   ----------------------------------------
	.byte		N12   , As3 , v100
	.byte	W23
	.byte		        Gn3 , v096
	.byte	W72
	.byte	W01
@ 014   ----------------------------------------
	.byte		N06   , Cn4 , v100
	.byte	W12
	.byte		        Cn4 , v096
	.byte	W12
	.byte		        Cn4 , v100
	.byte	W11
	.byte		N24   , Cn4 , v096
	.byte	W36
	.byte		N06   , Gs3 , v104
	.byte	W13
	.byte		        Gs3 , v100
	.byte	W12
@ 015   ----------------------------------------
	.byte		        As3 
	.byte	W11
	.byte		N18   , As3 , v096
	.byte	W24
	.byte		N24   , As3 , v100
	.byte	W36
	.byte		N06   , Fn3 , v104
	.byte	W12
	.byte		        Fn3 , v096
	.byte	W12
	.byte		N24   , Gs3 , v100
	.byte	W01
@ 016   ----------------------------------------
	.byte	W24
	.byte		N12   , Gn3 , v104
	.byte	W68
	.byte	W03
	.byte		N18   , Gs3 , v096
	.byte	W01
@ 017   ----------------------------------------
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N24   , Gs3 , v104
	.byte	W24
	.byte		N06   , Fn3 
	.byte	W11
	.byte		N60   
	.byte	W13
@ 018   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N12   , Fn2 , v084
	.byte	W01
@ 019   ----------------------------------------
	.byte	W18
	.byte		N06   , Cn3 , v080
	.byte	W17
	.byte		N06   
	.byte	W13
	.byte		N09   , Fn2 , v076
	.byte	W11
	.byte		N06   , Cn3 , v084
	.byte	W13
	.byte		N09   , Fn2 , v076
	.byte	W11
	.byte		N06   , Cn3 , v084
	.byte	W12
	.byte		N48   , Gn2 
	.byte	W01
@ 020   ----------------------------------------
	.byte	W48
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N44   , Gs2 , v080, gtp3
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W04
@ 021   ----------------------------------------
	.byte		        c_v+0
	.byte		N12   , Fn2 
	.byte	W17
	.byte		N06   , Cn3 , v076
	.byte	W07
	.byte		N09   , Fn2 , v084
	.byte	W11
	.byte		N06   , Cn3 , v076
	.byte	W12
	.byte		N09   , Fn2 , v084
	.byte	W12
	.byte		N06   , Cn3 , v076
	.byte	W13
	.byte		N09   , Fn2 , v084
	.byte	W12
	.byte		N06   , Cn3 , v080
	.byte	W11
	.byte		N48   , Gn2 
	.byte	W01
@ 022   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N44   , Gs2 , v076, gtp3
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W04
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_abracadabra_4_B1
mus_abracadabra_4_B2:
@ 023   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_abracadabra_5:
	.byte	KEYSH , mus_abracadabra_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 78*mus_abracadabra_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
mus_abracadabra_5_B1:
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
mus_abracadabra_5_010:
	.byte	W12
	.byte		N06   , Gs3 , v052
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_abracadabra_5_011:
	.byte	W12
	.byte		N06   , Gn3 , v052
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_5_011
@ 013   ----------------------------------------
mus_abracadabra_5_013:
	.byte	W12
	.byte		N06   , Fn3 , v052
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_5_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_5_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_5_011
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_5_013
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
	.byte	GOTO
	 .word	mus_abracadabra_5_B1
mus_abracadabra_5_B2:
@ 023   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_abracadabra_6:
	.byte	KEYSH , mus_abracadabra_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 42*mus_abracadabra_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
mus_abracadabra_6_B1:
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
	.byte		N92   , Cn2 , v060, gtp3
	.byte		N96   , Fn4 , v044
	.byte	W96
@ 011   ----------------------------------------
mus_abracadabra_6_011:
	.byte		N96   , Cn2 , v060
	.byte		N96   , Gn4 , v044
	.byte	W96
	.byte	PEND
@ 012   ----------------------------------------
	.byte		        Fn2 , v060
	.byte		N96   , As3 , v080
	.byte	W96
@ 013   ----------------------------------------
mus_abracadabra_6_013:
	.byte		N96   , Ds2 , v060
	.byte		N96   , Gs3 , v080
	.byte	W96
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N92   , Cn2 , v060, gtp3
	.byte	W96
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_6_011
@ 016   ----------------------------------------
	.byte		N96   , Fn2 , v060
	.byte		N96   , Fn3 , v080
	.byte	W96
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_6_013
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
	.byte	GOTO
	 .word	mus_abracadabra_6_B1
mus_abracadabra_6_B2:
@ 023   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_abracadabra_7:
	.byte	KEYSH , mus_abracadabra_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte		VOL   , 98*mus_abracadabra_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Cn1 , v100
	.byte		N06   
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
@ 001   ----------------------------------------
mus_abracadabra_7_001:
	.byte		N06   , Cn1 , v100
	.byte		N06   
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte	PEND
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
mus_abracadabra_7_B1:
@ 002   ----------------------------------------
mus_abracadabra_7_002:
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        En1 , v100
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        En1 , v100
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_7_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_7_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_7_002
@ 006   ----------------------------------------
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        En1 , v100
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        En1 , v100
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        En1 , v100
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        En1 , v100
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        En1 , v100
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        En1 , v100
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
@ 009   ----------------------------------------
	.byte		        Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        En1 , v100
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
@ 010   ----------------------------------------
mus_abracadabra_7_010:
	.byte		N06   , Cn1 , v100
	.byte		N06   
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_7_010
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_7_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_7_001
	.byte		N06   , Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_7_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_7_010
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_7_010
@ 017   ----------------------------------------
	.byte		N06   , Cn1 , v100
	.byte		N06   
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
@ 018   ----------------------------------------
	.byte	W48
	.byte	W48
@ 019   ----------------------------------------
mus_abracadabra_7_019:
	.byte		N06   , Cn1 , v100
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte		N06   
	.byte		N06   , En1 
	.byte	W24
	.byte		        Cn1 
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte		N06   
	.byte		N06   , En1 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_7_019
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_abracadabra_7_019
@ 022   ----------------------------------------
	.byte		N06   , Cn1 , v100
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte		N06   
	.byte		N06   , En1 
	.byte	W24
	.byte	W06
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   
	.byte		N06   , En1 
	.byte	W24
	.byte	GOTO
	 .word	mus_abracadabra_7_B1
mus_abracadabra_7_B2:
@ 023   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_abracadabra:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_abracadabra_pri	@ Priority
	.byte	mus_abracadabra_rev	@ Reverb.

	.word	mus_abracadabra_grp

	.word	mus_abracadabra_1
	.word	mus_abracadabra_2
	.word	mus_abracadabra_3
	.word	mus_abracadabra_4
	.word	mus_abracadabra_5
	.word	mus_abracadabra_6
	.word	mus_abracadabra_7

	.end
