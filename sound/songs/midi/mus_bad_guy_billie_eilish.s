	.include "MPlayDef.s"

	.equ	mus_bad_guy_billie_eilish_grp, voicegroup_diva_pop
	.equ	mus_bad_guy_billie_eilish_pri, 0
	.equ	mus_bad_guy_billie_eilish_rev, reverb_set+12
	.equ	mus_bad_guy_billie_eilish_mvl, 90
	.equ	mus_bad_guy_billie_eilish_key, 0
	.equ	mus_bad_guy_billie_eilish_tbs, 1
	.equ	mus_bad_guy_billie_eilish_exg, 1
	.equ	mus_bad_guy_billie_eilish_cmp, 1

	.section .rodata
	.global	mus_bad_guy_billie_eilish
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_bad_guy_billie_eilish_1:
	.byte		VOL   , 127*mus_bad_guy_billie_eilish_mvl/mxv
	.byte	KEYSH , mus_bad_guy_billie_eilish_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_bad_guy_billie_eilish_tbs/2
	.byte		VOICE , 1
	.byte		N24   , Gn1 , v044
	.byte	W36
	.byte		N12   , Gn1 , v040
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N12   
	.byte	W12
@ 001   ----------------------------------------
mus_bad_guy_billie_eilish_1_001:
	.byte	W12
	.byte		N12   , Gn1 , v040
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N24   , Fn1 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_bad_guy_billie_eilish_1_002:
	.byte		N24   , Gn1 , v044
	.byte	W36
	.byte		N12   , Gn1 , v040
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N24   , Fn1 , v044
	.byte	W24
@ 004   ----------------------------------------
mus_bad_guy_billie_eilish_1_004:
	.byte		N24   , Cn2 , v040
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_bad_guy_billie_eilish_1_005:
	.byte	W12
	.byte		N12   , Cn2 , v040
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W84
	.byte		        Dn1 
	.byte	W12
@ 007   ----------------------------------------
mus_bad_guy_billie_eilish_1_007:
	.byte	W12
	.byte		N12   , Dn1 , v040
	.byte	W24
	.byte		N12   
	.byte	W60
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_002
@ 011   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn1 , v040
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 , v044
	.byte	W12
	.byte		N24   , Fn1 , v040
	.byte	W24
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_004
@ 013   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn2 , v040
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
@ 014   ----------------------------------------
	.byte	W84
	.byte		N12   , Dn1 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_007
@ 016   ----------------------------------------
	.byte		N24   , Gn1 , v040
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N12   
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_005
@ 022   ----------------------------------------
	.byte	W84
	.byte		N12   , Dn1 , v040
	.byte	W12
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte		N24   , Gn1 , v048
	.byte	W36
	.byte		N12   , Gn1 , v044
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		        Gn1 , v040
	.byte	W12
@ 025   ----------------------------------------
	.byte	W12
	.byte		        Gn1 , v044
	.byte	W24
	.byte		        Gn1 , v040
	.byte	W12
	.byte		        As1 , v044
	.byte	W12
	.byte		        Gn1 , v040
	.byte	W12
	.byte		N24   , Fn1 
	.byte	W24
@ 026   ----------------------------------------
	.byte		        Gn1 , v048
	.byte	W36
	.byte		N12   , Gn1 , v040
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		        Gn1 , v044
	.byte	W12
@ 027   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn1 , v040
	.byte	W84
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_004
@ 029   ----------------------------------------
	.byte	W12
	.byte		N24   , Cn2 , v040
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
@ 030   ----------------------------------------
	.byte	W48
	.byte		N12   , Fs1 
	.byte	W36
	.byte		        Dn1 
	.byte	W12
@ 031   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W84
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte		N24   , Gn0 , v052
	.byte		N24   , Gn1 
	.byte	W36
	.byte		N12   , Gn0 , v048
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        As0 , v044
	.byte		N12   , As1 , v048
	.byte	W12
	.byte		        Gn0 
	.byte		N12   , Gn1 
	.byte	W24
	.byte		        Gn0 
	.byte		N12   , Gn1 
	.byte	W12
@ 035   ----------------------------------------
	.byte	W12
	.byte		        Gn0 
	.byte		N12   , Gn1 
	.byte	W24
	.byte		        Gn0 , v040
	.byte		N12   , Gn1 , v044
	.byte	W12
	.byte		        As0 , v048
	.byte		N12   , As1 
	.byte	W12
	.byte		        Gn0 , v044
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N24   , Fn0 
	.byte		N24   , Fn1 
	.byte	W24
@ 036   ----------------------------------------
	.byte		        Gn0 , v052
	.byte		N24   , Gn1 
	.byte	W36
	.byte		N12   , Gn0 , v044
	.byte		N12   , Gn1 , v048
	.byte	W12
	.byte		        As0 , v044
	.byte		N12   , As1 
	.byte	W12
	.byte		        Gn0 
	.byte		N12   , Gn1 , v040
	.byte	W24
	.byte		        Gn0 , v048
	.byte		N12   , Gn1 
	.byte	W12
@ 037   ----------------------------------------
	.byte	W12
	.byte		        Gn0 , v044
	.byte		N12   , Gn1 
	.byte	W24
	.byte		        Gn0 , v048
	.byte		N12   , Gn1 , v052
	.byte	W12
	.byte		        As0 , v048
	.byte		N12   , As1 
	.byte	W12
	.byte		        Gn0 
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N24   , Fn0 , v052
	.byte		N24   , Fn1 
	.byte	W24
@ 038   ----------------------------------------
	.byte		        Cn1 , v048
	.byte		N24   , Cn2 
	.byte	W36
	.byte		N12   , Cn1 , v044
	.byte		N12   , Cn2 , v048
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Cn2 , v044
	.byte	W24
	.byte		        Cn1 
	.byte		N12   , Cn2 
	.byte	W12
@ 039   ----------------------------------------
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Cn2 
	.byte	W24
	.byte		        Cn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Ds1 , v040
	.byte	W12
	.byte		        Cn1 , v044
	.byte		N12   , Cn2 , v048
	.byte	W12
	.byte		        Gn1 , v040
	.byte	W24
@ 040   ----------------------------------------
	.byte		N24   , Dn1 , v044
	.byte	W36
	.byte		N12   , Dn1 , v048
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		        Dn1 , v040
	.byte	W12
@ 041   ----------------------------------------
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W24
	.byte		N12   
	.byte	W60
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
	.byte	W48
	.byte		        Cn2 , v052
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        As1 , v044
	.byte	W12
@ 050   ----------------------------------------
	.byte		        Gn1 , v048
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Gn1 , v052
	.byte	W96
@ 052   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 053   ----------------------------------------
	.byte		        Gn1 , v048
	.byte	W96
@ 054   ----------------------------------------
	.byte		        Cn1 , v052
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 , v048
	.byte	W12
	.byte		        Gn1 , v052
	.byte	W12
	.byte		        Cn2 , v048
	.byte	W12
	.byte		        Gn1 , v052
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 , v044
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Cn1 , v052
	.byte	W12
	.byte		        Gn1 , v048
	.byte	W12
	.byte		        Cn2 , v044
	.byte	W12
	.byte		        Gn1 , v048
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 , v052
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 , v048
	.byte	W12
@ 056   ----------------------------------------
	.byte		        Dn1 , v052
	.byte	W12
	.byte		        An1 
	.byte	W24
	.byte		        An1 , v044
	.byte	W24
	.byte		        An1 , v052
	.byte	W24
	.byte		        An1 , v040
	.byte	W12
@ 057   ----------------------------------------
	.byte		        Dn1 , v052
	.byte	W96
@ 058   ----------------------------------------
	.byte		        Gn1 , v040
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Gn1 , v044
	.byte	W96
@ 060   ----------------------------------------
	.byte		        Gn1 , v040
	.byte	W96
@ 061   ----------------------------------------
	.byte		        Gn1 , v044
	.byte	W96
@ 062   ----------------------------------------
	.byte		        Cn1 , v040
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 , v044
	.byte	W12
	.byte		        Cn2 , v040
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 , v044
	.byte	W12
	.byte		        Gn1 , v040
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Cn1 , v044
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 , v040
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 , v044
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 , v040
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        An1 , v044
	.byte	W84
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 069   ----------------------------------------
	.byte		        Gn1 , v052
	.byte	W96
@ 070   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 071   ----------------------------------------
	.byte		        Gn1 , v048
	.byte	W96
@ 072   ----------------------------------------
	.byte		        Cn2 , v044
	.byte	W96
@ 073   ----------------------------------------
	.byte		        Cn2 , v052
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Gn1 , v044
	.byte	W96
@ 077   ----------------------------------------
	.byte		        Gn1 , v052
	.byte	W96
@ 078   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 079   ----------------------------------------
	.byte		        Gn1 , v048
	.byte	W96
@ 080   ----------------------------------------
	.byte		        Cn2 , v044
	.byte	W96
@ 081   ----------------------------------------
	.byte		        Cn2 , v052
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N48   , Gn0 
	.byte		N48   , Gn1 , v056
	.byte	W01
@ 084   ----------------------------------------
	.byte	W72
	.byte		N72   , Gn0 
	.byte		N72   , Gn1 , v060
	.byte	W24
@ 085   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N48   , Gn0 , v056
	.byte		N48   , Gn1 , v060
	.byte	W01
@ 086   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N72   , Gn0 
	.byte		N72   , Gn1 , v056
	.byte	W24
	.byte	W01
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
mus_bad_guy_billie_eilish_1_088:
	.byte		N48   , Gn0 , v052
	.byte		N48   , Gn1 , v056
	.byte	W68
	.byte	W03
	.byte		N72   
	.byte	W01
	.byte		        Gn0 
	.byte	W24
	.byte	PEND
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte		N48   
	.byte		N48   , Gn1 , v060
	.byte	W68
	.byte	W03
	.byte		N72   , Gn0 , v056
	.byte		N72   , Gn1 
	.byte	W24
	.byte	W01
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte		N48   , Gn0 , v052
	.byte		N48   , Gn1 , v056
	.byte	W68
	.byte	W03
	.byte		N72   
	.byte	W01
	.byte		        Gn0 , v060
	.byte	W24
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_088
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte		N48   , Gn0 , v056
	.byte		N48   , Gn1 
	.byte	W68
	.byte	W03
	.byte		N72   
	.byte	W01
	.byte		        Gn0 
	.byte	W24
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte		N48   , Gn0 , v060
	.byte		N48   , Gn1 
	.byte	W68
	.byte	W03
	.byte		N72   , Gn0 , v056
	.byte		N72   , Gn1 , v060
	.byte	W24
	.byte	W01
@ 099   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N48   , Gn0 , v056
	.byte		N48   , Gn1 
	.byte	W01
@ 100   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N72   , Gn0 
	.byte		N72   , Gn1 , v060
	.byte	W24
	.byte	W01
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte		N48   , Gn0 , v056
	.byte		N48   , Gn1 
	.byte	W68
	.byte	W03
	.byte		N72   , Gn0 
	.byte		N72   , Gn1 , v052
	.byte	W24
	.byte	W01
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte		N12   , Gn0 , v056
	.byte		N12   , Gn1 
	.byte	W12
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_bad_guy_billie_eilish_2:
	.byte		VOL   , 127*mus_bad_guy_billie_eilish_mvl/mxv
	.byte	KEYSH , mus_bad_guy_billie_eilish_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte	W96
@ 001   ----------------------------------------
	.byte	W36
	.byte		N12   , Gn2 , v032
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Fn2 , v028
	.byte	W24
@ 002   ----------------------------------------
	.byte		        Gn2 , v032
	.byte	W36
	.byte		N12   , Gn2 , v028
	.byte	W12
	.byte		        As2 , v032
	.byte	W12
	.byte		        Gn2 , v028
	.byte	W24
	.byte		N12   
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Gn2 , v032
	.byte	W12
	.byte		        As2 , v028
	.byte	W12
	.byte		        Gn2 , v032
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
@ 004   ----------------------------------------
	.byte	W48
	.byte		N12   , Ds2 , v028
	.byte	W48
@ 005   ----------------------------------------
	.byte	W36
	.byte		        Cn3 , v036
	.byte	W12
	.byte		        Ds2 , v028
	.byte		N12   , Ds3 , v032
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , Gn2 , v028
	.byte		N24   , As2 
	.byte	W24
@ 006   ----------------------------------------
	.byte		        Dn2 
	.byte		N24   , An2 , v032
	.byte	W36
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Fs2 , v028
	.byte	W12
	.byte		N24   , Dn2 , v032
	.byte	W36
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N12   , As2 , v028
	.byte	W24
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		        As2 , v032
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
	.byte		        Gn2 , v036
	.byte		N12   , As2 
	.byte	W24
	.byte		        Gn2 , v032
	.byte		N12   , As2 
	.byte	W12
	.byte		        An2 , v040
	.byte		N12   , Cn3 
	.byte	W24
@ 010   ----------------------------------------
	.byte		        Gn2 , v036
	.byte		N12   , As2 , v032
	.byte	W24
	.byte		        Gn2 , v036
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 , v032
	.byte	W24
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
	.byte		        Gn2 , v036
	.byte		N12   , As2 
	.byte	W24
	.byte		        Gn2 , v028
	.byte		N12   , As2 , v032
	.byte	W12
	.byte		        An2 , v036
	.byte		N12   , Cn3 , v040
	.byte	W24
@ 012   ----------------------------------------
	.byte		        Gn2 , v032
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Gn2 , v036
	.byte		N12   , As2 
	.byte		N12   , Dn3 , v040
	.byte	W24
	.byte		        Ds2 , v032
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , As2 , v032
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N12   , As2 , v036
	.byte		N12   , Dn3 , v040
	.byte	W12
@ 013   ----------------------------------------
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , As2 , v032
	.byte		N12   , Dn3 , v036
	.byte	W24
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 , v040
	.byte	W12
	.byte		        Ds2 , v028
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Cn3 , v044
	.byte		N12   , Ds3 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N24   , Dn2 , v032
	.byte		N12   , An2 
	.byte		N12   , Dn3 , v040
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        An2 , v032
	.byte		N12   , Dn3 , v040
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Fs2 , v032
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 , v040
	.byte		N12   , Fs3 , v044
	.byte	W24
	.byte		        An2 , v032
	.byte		N12   , Dn3 , v040
	.byte		N12   , Fs3 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W12
	.byte		        An2 , v036
	.byte		N12   , Dn3 
	.byte		N12   , En3 , v040
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn3 
	.byte	W72
@ 016   ----------------------------------------
	.byte		        Dn3 , v036
	.byte		N12   , Gn3 , v040
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W36
	.byte		        Dn3 , v036
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v040
	.byte		N12   , Gn3 , v036
	.byte	W24
	.byte		        Dn3 , v040
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 , v028
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 , v036
	.byte	W24
@ 018   ----------------------------------------
	.byte		        Dn3 , v032
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 , v036
	.byte		N12   , Gn3 , v040
	.byte	W36
	.byte		        Dn3 , v036
	.byte		N12   , Gn3 , v040
	.byte	W24
	.byte		        Dn3 , v036
	.byte		N12   , Gn3 , v040
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v032
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 , v040
	.byte		N12   , Gn3 , v036
	.byte	W24
	.byte		        Dn3 , v032
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        Dn3 , v032
	.byte	W24
@ 020   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Cn3 
	.byte		N12   , Gn3 , v040
	.byte	W24
	.byte		        Ds2 , v028
	.byte	W12
	.byte		        Cn3 , v032
	.byte		N12   , Gn3 , v040
	.byte	W24
	.byte		        Cn3 , v028
	.byte		N12   , Gn3 , v032
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		        Cn3 , v036
	.byte		N12   , Gn3 , v040
	.byte	W24
	.byte		        Cn3 , v032
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        Ds2 , v028
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N12   , Ds3 , v040
	.byte		N12   , Gn3 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N24   , Dn2 , v028
	.byte		N12   , An2 , v032
	.byte		N12   , Dn3 , v040
	.byte		N12   , Fs3 , v032
	.byte	W24
	.byte		        An2 , v036
	.byte		N12   , Dn3 , v040
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Dn2 , v028
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N12   , An2 , v032
	.byte		N12   , Dn3 , v040
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        An2 , v032
	.byte		N12   , Dn3 , v040
	.byte		N12   , Fs3 , v036
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 , v032
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        An2 , v040
	.byte		N12   , Dn3 , v044
	.byte		N12   , Fs3 , v040
	.byte	W36
	.byte		        As2 
	.byte	W12
	.byte		        As2 , v032
	.byte	W12
	.byte		        Cn3 , v040
	.byte	W12
@ 024   ----------------------------------------
	.byte		        As2 , v036
	.byte	W24
	.byte		        Dn2 , v032
	.byte		N12   , Gn2 , v040
	.byte	W24
	.byte		N12   
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , As2 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        As2 , v040
	.byte		N12   , Dn3 
	.byte	W24
	.byte		N24   , Dn2 , v036
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   
	.byte		N12   , Cn3 , v032
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , As2 , v032
	.byte	W12
@ 026   ----------------------------------------
	.byte		        As2 , v040
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , Gn2 , v036
	.byte	W24
	.byte		        Gn2 , v040
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        As2 , v032
	.byte	W12
@ 027   ----------------------------------------
	.byte		        As2 , v040
	.byte		N12   , Dn3 , v036
	.byte	W24
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W48
	.byte		        As2 , v040
	.byte	W12
	.byte		        Cn3 , v044
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Dn3 , v040
	.byte	W24
	.byte		N12   
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Ds2 , v032
	.byte		N12   , Gn2 , v040
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 , v044
	.byte	W12
	.byte		        Gn2 , v040
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Cn3 , v044
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Dn3 , v040
	.byte	W24
	.byte		N12   
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Ds2 , v032
	.byte		N12   , Gn2 , v036
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 , v040
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , As2 , v040
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Cn3 , v040
	.byte	W12
@ 030   ----------------------------------------
	.byte		N24   , Dn2 , v032
	.byte		N12   , Dn3 , v040
	.byte	W24
	.byte		N12   
	.byte		N12   , Fs3 , v036
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs2 , v044
	.byte		N12   , As2 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Fs2 , v040
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cn3 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		N12   
	.byte		N12   , Fs3 
	.byte	W48
	.byte		N18   , Cn3 , v036
	.byte	W18
	.byte		        As2 , v040
	.byte	W06
@ 032   ----------------------------------------
mus_bad_guy_billie_eilish_2_032:
	.byte	W12
	.byte		N60   , An2 , v040
	.byte	W60
	.byte		TIE   , Gn2 , v028
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 034   ----------------------------------------
	.byte		N12   , Gn3 , v044
	.byte	W36
	.byte		N12   
	.byte	W60
@ 035   ----------------------------------------
	.byte		N12   
	.byte	W36
	.byte		        Gn3 , v040
	.byte	W60
@ 036   ----------------------------------------
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W60
@ 037   ----------------------------------------
	.byte		        Gn3 , v036
	.byte	W36
	.byte		        Gn3 , v040
	.byte	W60
@ 038   ----------------------------------------
	.byte	W48
	.byte		        Ds2 
	.byte	W48
@ 039   ----------------------------------------
	.byte	W48
	.byte		        Ds2 , v036
	.byte	W24
	.byte		        Gn2 , v028
	.byte	W24
@ 040   ----------------------------------------
	.byte		N24   , Dn2 , v036
	.byte	W36
	.byte		N12   , Dn2 , v040
	.byte	W12
	.byte		        Fs2 , v036
	.byte	W12
	.byte		        Dn2 , v040
	.byte	W36
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
	.byte	W60
	.byte		        Ds2 , v044
	.byte	W36
@ 050   ----------------------------------------
	.byte		        Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 , v040
	.byte	W12
	.byte		        Gn2 , v044
	.byte		N12   , Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 , v040
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 , v048
	.byte		N12   , Gn3 , v044
	.byte	W12
@ 051   ----------------------------------------
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N12   , Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Dn2 , v044
	.byte		N12   , Dn3 , v040
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 , v048
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Gn2 , v048
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 , v040
	.byte	W12
	.byte		        Gn2 , v048
	.byte		N12   
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 , v040
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N12   , Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W12
@ 053   ----------------------------------------
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 , v048
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Dn3 , v048
	.byte		N12   , Gn3 , v044
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Dn2 , v044
	.byte		N12   , Dn3 , v040
	.byte		N12   , Gn3 , v044
	.byte	W12
	.byte		        Gn2 , v048
	.byte		N12   , Dn3 , v040
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 054   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , Gn3 , v044
	.byte	W24
	.byte		        Cn3 , v040
	.byte		N12   , Gn3 , v048
	.byte	W36
	.byte		        Cn3 , v044
	.byte		N12   , Gn3 , v048
	.byte	W24
	.byte		        Cn3 , v040
	.byte		N12   , Gn3 , v044
	.byte	W12
@ 055   ----------------------------------------
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Gn3 , v048
	.byte	W24
	.byte		        Cn3 , v044
	.byte		N12   , Gn3 , v048
	.byte	W24
	.byte		        Cn3 , v040
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Ds3 , v048
	.byte		N12   , Gn3 
	.byte	W24
@ 056   ----------------------------------------
	.byte		        An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 , v044
	.byte	W24
	.byte		        Dn2 , v040
	.byte		N12   , An2 , v048
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        Dn2 , v040
	.byte	W12
	.byte		        An2 , v044
	.byte		N12   , Dn3 , v048
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Dn2 , v044
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn3 , v048
	.byte		N12   , Fs3 
	.byte	W12
@ 057   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn3 , v044
	.byte		N12   , Fs3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W72
@ 058   ----------------------------------------
	.byte	W12
	.byte		        Dn2 , v032
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        Dn2 , v032
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Gn3 , v040
	.byte	W12
@ 059   ----------------------------------------
	.byte	W12
	.byte		        Dn2 , v028
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        Dn2 , v028
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 , v044
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Gn3 , v036
	.byte	W12
@ 060   ----------------------------------------
	.byte	W12
	.byte		        Dn2 , v032
	.byte	W12
	.byte		        Gn2 , v040
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        Dn2 , v032
	.byte	W12
@ 061   ----------------------------------------
	.byte	W12
	.byte		        Dn2 , v028
	.byte	W12
	.byte		        Gn2 , v040
	.byte		N12   
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        Dn2 , v032
	.byte	W12
	.byte		        Gn2 , v036
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As2 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Cn3 , v044
	.byte	W12
@ 062   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		N12   
	.byte		N12   , Gn3 , v032
	.byte	W24
	.byte		        Gn2 , v040
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 , v044
	.byte	W12
	.byte		        Gn2 , v040
	.byte		N12   , As2 , v044
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Cn3 , v044
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Dn3 , v040
	.byte	W24
	.byte		N12   
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		        Dn2 , v032
	.byte		N12   , Dn3 , v040
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        Dn2 , v032
	.byte		N12   , Fs2 , v048
	.byte		N12   , As2 , v040
	.byte	W12
	.byte		        Fs2 , v044
	.byte		N12   , Cn3 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Fs2 , v040
	.byte		N12   , As2 
	.byte	W12
	.byte		        Fs2 , v044
	.byte		N12   , Cn3 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		        Dn2 , v040
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		N18   , Cn3 , v036
	.byte	W18
	.byte		        As2 
	.byte	W06
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_2_032
@ 067   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn2 
@ 068   ----------------------------------------
	.byte		N12   , Gn3 , v048
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
@ 069   ----------------------------------------
mus_bad_guy_billie_eilish_2_069:
	.byte		N12   , Gn3 , v044
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As2 , v048
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 , v040
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
	.byte	PEND
@ 070   ----------------------------------------
	.byte		        Gn3 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As2 , v048
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Gn3 , v040
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N12   , Gn3 , v044
	.byte	W12
	.byte		        As2 , v048
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
@ 072   ----------------------------------------
	.byte	W12
	.byte		        Gn2 , v036
	.byte	W12
	.byte		        Cn3 , v044
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 , v036
	.byte	W12
	.byte		        Cn3 , v044
	.byte	W12
@ 073   ----------------------------------------
	.byte	W12
	.byte		        Gn2 , v036
	.byte	W12
	.byte		        Cn3 , v048
	.byte	W12
	.byte		        Gn2 , v036
	.byte	W12
	.byte		        Ds3 , v048
	.byte	W12
	.byte		        Cn3 , v044
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Cn3 , v036
	.byte	W12
@ 074   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 , v040
	.byte	W12
	.byte		        An2 , v032
	.byte	W12
	.byte		        Fs3 , v040
	.byte	W12
	.byte		        Dn3 , v036
	.byte	W12
	.byte		        An2 , v040
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 075   ----------------------------------------
	.byte		        Dn2 
	.byte	W24
	.byte		N12   
	.byte	W72
@ 076   ----------------------------------------
	.byte		        Gn3 , v048
	.byte	W12
	.byte		        Dn2 , v040
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N12   , Gn3 , v044
	.byte	W12
	.byte		        As2 , v040
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 , v048
	.byte		N12   , Gn3 , v044
	.byte	W12
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_2_069
@ 078   ----------------------------------------
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As2 , v048
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
@ 079   ----------------------------------------
	.byte		        Gn3 , v040
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N12   , Gn3 , v044
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 , v048
	.byte		N12   , Gn3 
	.byte	W12
@ 080   ----------------------------------------
	.byte	W12
	.byte		        Gn2 , v036
	.byte	W12
	.byte		        Cn3 , v044
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 , v036
	.byte	W12
	.byte		        Cn3 , v048
	.byte	W12
@ 081   ----------------------------------------
	.byte	W12
	.byte		        Gn2 , v036
	.byte	W12
	.byte		        Cn3 , v048
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Ds3 , v048
	.byte	W12
	.byte		        Cn3 , v044
	.byte	W12
	.byte		        Gn2 , v036
	.byte	W12
	.byte		        Cn3 , v040
	.byte	W12
@ 082   ----------------------------------------
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 , v040
	.byte	W12
	.byte		        An2 , v032
	.byte	W12
	.byte		        Fs3 , v048
	.byte	W12
	.byte		        Dn3 , v036
	.byte	W12
	.byte		        An2 , v040
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
mus_bad_guy_billie_eilish_2_084:
	.byte		N12   , Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W36
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 085   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 , v048
	.byte	W24
@ 086   ----------------------------------------
	.byte		N12   
	.byte		N12   , Gn3 , v044
	.byte	W24
	.byte		        Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W36
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W12
@ 087   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 , v048
	.byte	W12
	.byte		        Dn3 , v044
	.byte	W24
@ 088   ----------------------------------------
	.byte		        Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W12
@ 089   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 , v044
	.byte	W12
	.byte		        Dn3 
	.byte	W24
@ 090   ----------------------------------------
	.byte		        Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W12
@ 091   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		N18   , As2 
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W24
@ 092   ----------------------------------------
	.byte		N12   
	.byte		N12   , Gn3 
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn3 
	.byte	W12
@ 093   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 094   ----------------------------------------
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N36   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N24   , As2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N06   
	.byte	W06
@ 095   ----------------------------------------
	.byte		N24   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N06   , Fs2 
	.byte		N06   , As2 , v044
	.byte	W06
	.byte		        An2 , v048
	.byte	W06
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 , v044
	.byte	W24
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_2_084
@ 097   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn3 , v044
	.byte	W12
	.byte		        Gn3 , v048
	.byte	W24
	.byte		N24   
	.byte	W24
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_2_084
@ 099   ----------------------------------------
mus_bad_guy_billie_eilish_2_099:
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_2_084
@ 101   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn3 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn3 , v044
	.byte	W12
	.byte		        Gn3 , v048
	.byte	W24
	.byte		N24   , Gn3 , v044
	.byte	W24
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_2_084
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_2_099
@ 104   ----------------------------------------
	.byte		N12   , Gn3 , v048
	.byte	W12
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_bad_guy_billie_eilish_3:
	.byte		VOL   , 127*mus_bad_guy_billie_eilish_mvl/mxv
	.byte	KEYSH , mus_bad_guy_billie_eilish_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
	.byte		N12   , As3 , v032
	.byte	W24
	.byte		        As3 , v036
	.byte	W36
	.byte		        As3 , v032
	.byte	W24
	.byte		N12   
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		        As3 , v036
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        As3 , v032
	.byte	W12
	.byte		        An3 , v040
	.byte		N12   , Cn4 , v044
	.byte	W24
@ 018   ----------------------------------------
	.byte		        As3 , v036
	.byte	W24
	.byte		        As3 , v032
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An3 , v040
	.byte		N12   , Cn4 
	.byte	W24
@ 020   ----------------------------------------
	.byte		        As3 , v036
	.byte	W24
	.byte		        As3 , v040
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        As3 , v032
	.byte	W12
	.byte		        Dn4 , v040
	.byte	W24
@ 022   ----------------------------------------
	.byte		        An3 
	.byte	W24
	.byte		N12   
	.byte	W36
	.byte		        An3 , v036
	.byte	W24
	.byte		N12   
	.byte	W12
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
	.byte		        As3 , v048
	.byte	W96
@ 029   ----------------------------------------
	.byte		        As3 , v040
	.byte	W96
@ 030   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 031   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W36
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 , v040
	.byte	W12
	.byte		        Cs4 , v052
	.byte	W12
	.byte		        As3 , v048
	.byte	W12
@ 035   ----------------------------------------
	.byte	W12
	.byte		        Dn4 
	.byte	W36
	.byte		        Cs4 , v040
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As3 , v040
	.byte	W12
@ 036   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W36
	.byte		        Cs4 , v044
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W12
	.byte		        Cs4 , v052
	.byte	W12
	.byte		        As3 , v040
	.byte	W12
@ 037   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v052
	.byte	W36
	.byte		        Cs4 , v048
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 , v044
	.byte	W12
	.byte		        As3 , v040
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Cn4 , v048
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 , v044
	.byte	W12
	.byte		        Fs4 , v052
	.byte	W12
	.byte		        Ds4 , v048
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Cn4 , v044
	.byte	W12
	.byte		        Gn4 , v048
	.byte	W24
	.byte		        Cn4 , v040
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 , v048
	.byte	W12
	.byte		        Fs4 , v052
	.byte	W12
	.byte		        Ds4 , v040
	.byte	W12
@ 040   ----------------------------------------
	.byte		        Dn4 , v048
	.byte	W12
	.byte		        An4 
	.byte	W24
	.byte		        Dn4 , v044
	.byte	W12
	.byte		        Fs4 , v052
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W24
	.byte		        Cn4 
	.byte	W12
@ 041   ----------------------------------------
	.byte		N24   , Cn4 , v052
	.byte	W96
@ 042   ----------------------------------------
	.byte		N12   , Dn4 , v044
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v040
	.byte	W24
	.byte		        Dn4 , v044
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v040
	.byte	W36
	.byte		        Dn4 , v044
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v040
	.byte	W24
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v036
	.byte	W12
@ 043   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v044
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v036
	.byte	W24
	.byte		        Dn4 , v044
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v040
	.byte	W24
	.byte		        Dn4 , v036
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v032
	.byte	W12
	.byte		        Dn4 , v040
	.byte		N12   , An4 , v044
	.byte		N12   , Cn5 , v048
	.byte	W24
@ 044   ----------------------------------------
	.byte		        Dn4 , v040
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W24
	.byte		        Dn4 
	.byte		N12   , Gn4 , v048
	.byte		N12   , As4 , v036
	.byte	W36
	.byte		        Dn4 , v040
	.byte		N12   , Gn4 , v044
	.byte		N12   , As4 , v032
	.byte	W24
	.byte		        Dn4 , v044
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v036
	.byte	W12
@ 045   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v040
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v032
	.byte	W24
	.byte		        Dn4 , v044
	.byte		N12   , Gn4 , v040
	.byte		N12   , As4 , v036
	.byte	W24
	.byte		        Dn4 
	.byte		N12   , Gn4 , v040
	.byte		N12   , As4 , v036
	.byte	W12
	.byte		        Dn4 , v040
	.byte		N12   , An4 , v044
	.byte		N12   , Cn5 , v040
	.byte	W24
@ 046   ----------------------------------------
	.byte		        Cn4 , v036
	.byte		N12   , Gn4 , v040
	.byte		N12   , As4 
	.byte	W24
	.byte		        Cn4 , v036
	.byte		N12   , Gn4 , v044
	.byte		N12   , As4 
	.byte	W36
	.byte		        Cn4 , v040
	.byte		N12   , Gn4 , v044
	.byte		N12   , As4 , v040
	.byte	W24
	.byte		        Cn4 , v036
	.byte		N12   , Gn4 , v040
	.byte		N12   , As4 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Gn4 , v044
	.byte		N12   , As4 
	.byte	W24
	.byte		        Cn4 , v040
	.byte		N12   , Gn4 , v044
	.byte		N12   , As4 
	.byte	W24
	.byte		        Cn4 , v032
	.byte		N12   , Gn4 , v036
	.byte		N12   , As4 , v040
	.byte	W12
	.byte		        Ds4 , v044
	.byte		N12   , Gn4 
	.byte		N12   , Dn5 , v040
	.byte	W24
@ 048   ----------------------------------------
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W24
	.byte		        An3 , v044
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W36
	.byte		        An3 , v040
	.byte		N12   , Dn4 , v044
	.byte		N12   , Fs4 , v040
	.byte		N12   , An4 
	.byte	W24
	.byte		        An3 
	.byte		N12   , Dn4 , v048
	.byte		N12   , Fs4 , v040
	.byte		N12   , An4 
	.byte	W12
@ 049   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 , v044
	.byte		N12   , Dn4 , v048
	.byte		N12   , Fs4 , v044
	.byte	W72
@ 050   ----------------------------------------
	.byte		        As3 
	.byte	W24
	.byte		        As3 , v048
	.byte	W36
	.byte		        As3 , v044
	.byte	W24
	.byte		N12   
	.byte	W12
@ 051   ----------------------------------------
	.byte	W12
	.byte		        As3 , v048
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        As3 , v032
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Cn4 
	.byte	W24
@ 052   ----------------------------------------
	.byte		        As3 , v044
	.byte	W24
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
@ 053   ----------------------------------------
	.byte	W12
	.byte		        As3 , v040
	.byte	W24
	.byte		        As3 , v044
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Cn4 , v048
	.byte	W24
@ 054   ----------------------------------------
	.byte		        As3 
	.byte	W24
	.byte		        As3 , v052
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		        As3 , v048
	.byte	W12
@ 055   ----------------------------------------
	.byte	W12
	.byte		        As3 , v052
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        As3 , v048
	.byte	W12
	.byte		        Dn4 , v052
	.byte	W24
@ 056   ----------------------------------------
	.byte		        An3 
	.byte	W24
	.byte		N12   
	.byte	W36
	.byte		        An3 , v048
	.byte	W24
	.byte		N12   
	.byte	W12
@ 057   ----------------------------------------
	.byte	W60
	.byte		        As3 , v040
	.byte	W12
	.byte		        As3 , v036
	.byte	W12
	.byte		        Cn4 , v044
	.byte	W12
@ 058   ----------------------------------------
	.byte		        As3 , v040
	.byte	W48
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 , v044
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 , v040
	.byte	W12
@ 059   ----------------------------------------
	.byte		N12   
	.byte		N12   , Dn4 , v044
	.byte	W48
	.byte		        Cn4 , v040
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As3 , v036
	.byte	W12
@ 060   ----------------------------------------
	.byte		        As3 , v040
	.byte		N12   , Dn4 , v044
	.byte	W48
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn4 , v040
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As3 , v036
	.byte	W12
@ 061   ----------------------------------------
	.byte		        As3 , v044
	.byte		N12   , Dn4 , v040
	.byte	W24
	.byte		        As3 , v036
	.byte	W72
@ 062   ----------------------------------------
	.byte		        As3 , v044
	.byte	W96
@ 063   ----------------------------------------
	.byte		        As3 , v040
	.byte	W96
@ 064   ----------------------------------------
	.byte		        As3 , v044
	.byte	W96
@ 065   ----------------------------------------
	.byte		        As3 , v040
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W36
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 , v044
	.byte	W12
	.byte		        Cs4 , v052
	.byte	W12
	.byte		        As3 , v044
	.byte	W12
@ 069   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v052
	.byte	W36
	.byte		        Cs4 , v040
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W12
	.byte		        Cs4 , v052
	.byte	W12
	.byte		        As3 , v040
	.byte	W12
@ 070   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W36
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 , v052
	.byte	W12
	.byte		        As3 , v044
	.byte	W12
@ 071   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W36
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 , v044
	.byte	W12
	.byte		        As3 , v040
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Cn4 , v048
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		        Cn4 , v044
	.byte	W12
	.byte		        Fs4 , v048
	.byte	W12
	.byte		        Gn4 , v044
	.byte	W12
	.byte		        Fs4 , v052
	.byte	W12
	.byte		        Ds4 , v044
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn4 , v052
	.byte	W24
	.byte		        Cn4 , v044
	.byte	W12
	.byte		        Fs4 , v040
	.byte	W12
	.byte		        Gn4 , v048
	.byte	W12
	.byte		        Fs4 , v052
	.byte	W12
	.byte		        Ds4 , v044
	.byte	W12
@ 074   ----------------------------------------
	.byte		        Dn4 , v048
	.byte	W12
	.byte		        An4 
	.byte	W24
	.byte		        Dn4 
	.byte	W12
	.byte		        Fs4 , v052
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W24
	.byte		        Cn4 
	.byte	W12
@ 075   ----------------------------------------
	.byte		        Cn4 , v052
	.byte	W96
@ 076   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W36
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 , v040
	.byte		N12   , Dn4 , v044
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 , v048
	.byte	W12
@ 077   ----------------------------------------
	.byte	W12
	.byte		        Dn4 
	.byte	W36
	.byte		        An3 
	.byte		N12   , Cs4 , v040
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 , v048
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 , v040
	.byte	W12
@ 078   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W36
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 , v044
	.byte		N12   , Dn4 , v048
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Cs4 , v048
	.byte	W12
	.byte		        As3 , v044
	.byte	W12
@ 079   ----------------------------------------
	.byte	W12
	.byte		        As3 , v040
	.byte		N12   , Dn4 , v052
	.byte	W36
	.byte		        An3 , v048
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 , v044
	.byte		N12   , Dn4 , v048
	.byte	W12
	.byte		        An3 , v036
	.byte		N12   , Cs4 , v048
	.byte	W12
	.byte		        As3 , v040
	.byte	W12
@ 080   ----------------------------------------
	.byte		        Cn4 , v048
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		        Cn4 , v044
	.byte	W12
	.byte		        An3 , v048
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 , v040
	.byte		N12   , Gn4 , v044
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Ds4 , v044
	.byte	W12
@ 081   ----------------------------------------
	.byte		        Cn4 , v048
	.byte	W12
	.byte		        Gn4 , v052
	.byte	W24
	.byte		        Cn4 , v040
	.byte	W12
	.byte		        An3 , v048
	.byte		N12   , Fs4 , v040
	.byte	W12
	.byte		        As3 
	.byte		N12   , Gn4 , v048
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Ds4 , v040
	.byte	W12
@ 082   ----------------------------------------
	.byte		        An3 , v044
	.byte		N12   , Dn4 , v048
	.byte	W12
	.byte		        An4 
	.byte	W24
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 , v044
	.byte		N12   , Fs4 , v052
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 , v044
	.byte	W24
	.byte		        Cn4 , v048
	.byte	W12
@ 083   ----------------------------------------
	.byte		        Cn4 , v052
	.byte	W96
@ 084   ----------------------------------------
mus_bad_guy_billie_eilish_3_084:
	.byte		N12   , As3 , v048
	.byte	W24
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		        As3 , v044
	.byte	W12
	.byte	PEND
@ 085   ----------------------------------------
mus_bad_guy_billie_eilish_3_085:
	.byte	W12
	.byte		N12   , As3 , v048
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        As3 , v040
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Cn4 
	.byte	W24
	.byte	PEND
@ 086   ----------------------------------------
	.byte		        As3 , v048
	.byte	W24
	.byte		        As3 , v044
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		        As3 , v048
	.byte	W12
@ 087   ----------------------------------------
	.byte	W12
	.byte		        As3 , v044
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Cn4 
	.byte	W24
@ 088   ----------------------------------------
	.byte		        As3 , v044
	.byte	W84
	.byte		N12   
	.byte	W12
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_3_085
@ 090   ----------------------------------------
mus_bad_guy_billie_eilish_3_090:
	.byte		N12   , As3 , v048
	.byte	W84
	.byte		        As3 , v044
	.byte	W12
	.byte	PEND
@ 091   ----------------------------------------
mus_bad_guy_billie_eilish_3_091:
	.byte	W60
	.byte		N12   , As3 , v044
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Cn4 
	.byte	W24
	.byte	PEND
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_3_090
@ 093   ----------------------------------------
	.byte	W12
	.byte		N12   , As3 , v048
	.byte	W48
	.byte		        As3 , v044
	.byte	W36
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_3_091
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_3_084
@ 097   ----------------------------------------
	.byte	W12
	.byte		N12   , As3 , v048
	.byte	W12
	.byte		        Gn4 , v052
	.byte	W12
	.byte		        Dn4 , v044
	.byte	W12
	.byte		        Gn4 , v052
	.byte	W24
	.byte		N24   
	.byte	W24
@ 098   ----------------------------------------
	.byte		N12   , As3 , v048
	.byte	W24
	.byte		N12   
	.byte	W36
	.byte		        As3 , v044
	.byte	W24
	.byte		N12   
	.byte	W12
@ 099   ----------------------------------------
	.byte	W12
	.byte		        As3 , v048
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        As3 , v044
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Cn4 
	.byte	W24
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_3_084
@ 101   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 102   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Dn4 
	.byte	W24
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W36
	.byte		        As3 
	.byte		N12   , Dn4 , v044
	.byte	W24
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
@ 103   ----------------------------------------
	.byte	W12
	.byte		        As3 , v048
	.byte		N12   , Dn4 
	.byte	W24
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W24
	.byte		        As3 , v044
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An3 , v052
	.byte		N12   , Cn4 
	.byte		N12   , Dn4 , v048
	.byte	W24
@ 104   ----------------------------------------
	.byte		        As3 , v044
	.byte		N12   , Dn4 , v048
	.byte		N12   , Gn4 , v052
	.byte	W12
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_bad_guy_billie_eilish_4:
	.byte		VOL   , 127*mus_bad_guy_billie_eilish_mvl/mxv
	.byte	KEYSH , mus_bad_guy_billie_eilish_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte		N03   , Cn1 , v048
	.byte		N03   , Fs1 , v024
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N03   , En1 , v052
	.byte		N03   , Fs1 , v024
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N03   , Fs1 , v024
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N03   , En1 , v052
	.byte		N03   , Fs1 , v024
	.byte	W12
	.byte		N03   
	.byte	W12
@ 001   ----------------------------------------
mus_bad_guy_billie_eilish_4_001:
	.byte		N03   , Cn1 , v048
	.byte		N03   , Fs1 , v024
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N03   , En1 , v052
	.byte		N03   , Fs1 , v024
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N03   , Fs1 , v024
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N03   , En1 , v052
	.byte		N03   , Fs1 , v024
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_4_001
@ 104   ----------------------------------------
	.byte		N03   , Cn1 , v048
	.byte		N03   , Fs1 , v024
	.byte	W12
	.byte		N01   
	.byte	FINE

@******************************************************@
	.align	2

mus_bad_guy_billie_eilish:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_bad_guy_billie_eilish_pri	@ Priority
	.byte	mus_bad_guy_billie_eilish_rev	@ Reverb.

	.word	mus_bad_guy_billie_eilish_grp

	.word	mus_bad_guy_billie_eilish_1
	.word	mus_bad_guy_billie_eilish_2
	.word	mus_bad_guy_billie_eilish_3
	.word	mus_bad_guy_billie_eilish_4

	.end
