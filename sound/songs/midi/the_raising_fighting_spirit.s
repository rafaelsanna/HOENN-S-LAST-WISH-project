	.include "MPlayDef.s"

	.equ	the_raising_fighting_spirit_grp, voicegroup_littleroot_test
	.equ	the_raising_fighting_spirit_pri, 0
	.equ	the_raising_fighting_spirit_rev, reverb_set+50
	.equ	the_raising_fighting_spirit_mvl, 96
	.equ	the_raising_fighting_spirit_key, 0
	.equ	the_raising_fighting_spirit_tbs, 1
	.equ	the_raising_fighting_spirit_exg, 1
	.equ	the_raising_fighting_spirit_cmp, 1

	.section .rodata
	.global	the_raising_fighting_spirit
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

the_raising_fighting_spirit_1:
	.byte	KEYSH , the_raising_fighting_spirit_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 210*the_raising_fighting_spirit_tbs/2
	.byte		VOICE , 80
	.byte		VOL   , 88*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N02   , An1 
	.byte	W03
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N11   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 002   ----------------------------------------
the_raising_fighting_spirit_1_002:
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   , Dn2 
	.byte		N36   , An2 
	.byte	W36
	.byte		N32   , An1 
	.byte		N32   , En2 
	.byte	W36
	.byte	PEND
@ 003   ----------------------------------------
the_raising_fighting_spirit_1_003:
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N02   , An1 
	.byte	W03
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N11   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
the_raising_fighting_spirit_1_004:
	.byte	W12
	.byte		N20   , Cn2 , v080
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N36   , Cn2 
	.byte		N36   , Gn2 
	.byte	W48
	.byte		N20   , Bn1 
	.byte		N20   , Fs2 
	.byte	W24
	.byte		N36   , Bn1 
	.byte		N36   , Fs2 
	.byte	W36
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_004
@ 009   ----------------------------------------
the_raising_fighting_spirit_1_009:
	.byte		N36   , En1 , v076
	.byte		N36   , Bn1 
	.byte	W48
	.byte		N04   , En1 , v056
	.byte		N04   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N04   , Bn1 
	.byte	W12
	.byte		N36   , En1 , v076
	.byte		N36   , Bn1 
	.byte	W48
	.byte		N04   , En1 , v056
	.byte		N04   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N04   , Bn1 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
the_raising_fighting_spirit_1_010:
	.byte		N36   , Dn1 , v076
	.byte		N36   , An1 
	.byte	W48
	.byte		N04   , Dn1 , v056
	.byte		N04   , An1 
	.byte	W12
	.byte		        Dn1 
	.byte		N04   , An1 
	.byte	W12
	.byte		N36   , Dn1 , v076
	.byte		N36   , An1 
	.byte	W48
	.byte		N04   , Dn1 , v056
	.byte		N04   , An1 
	.byte	W12
	.byte		        Dn1 
	.byte		N04   , An1 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_010
@ 013   ----------------------------------------
the_raising_fighting_spirit_1_013:
	.byte		N36   , Cn2 , v076
	.byte		N36   , Gn2 
	.byte	W48
	.byte		N04   , Cn2 , v056
	.byte		N04   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N04   , Gn2 
	.byte	W12
	.byte		N36   , Cn2 , v076
	.byte		N36   , Gn2 
	.byte	W48
	.byte		N04   , Cn2 , v056
	.byte		N04   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N04   , Gn2 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
the_raising_fighting_spirit_1_014:
	.byte		N36   , Dn2 , v076
	.byte		N36   , An2 
	.byte	W48
	.byte		N04   , Dn2 , v056
	.byte		N04   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N04   , An2 
	.byte	W12
	.byte		N36   , Dn2 , v076
	.byte		N36   , An2 
	.byte	W36
	.byte		N12   , Dn2 , v056
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_010
@ 021   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_014
@ 023   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_003
@ 024   ----------------------------------------
	.byte	W12
	.byte		N20   , Cn2 , v080
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N36   , Cn2 
	.byte		N36   , Gn2 
	.byte	W48
	.byte		N20   , Dn2 
	.byte		N20   , An2 
	.byte	W24
	.byte		N36   , Dn2 
	.byte		N36   , An2 
	.byte	W36
@ 025   ----------------------------------------
the_raising_fighting_spirit_1_025:
	.byte		N11   , Cn2 , v080
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
	.byte		N24   
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_025
@ 027   ----------------------------------------
	.byte		N24   , Bn1 , v080
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N24   
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 028   ----------------------------------------
	.byte		N36   , En1 , v092
	.byte		N36   , Bn1 
	.byte	W36
	.byte		        Fs1 
	.byte		N36   , Cs2 
	.byte	W36
	.byte		        Gn1 
	.byte		N36   , Dn2 
	.byte	W36
	.byte		        Gs1 
	.byte		N36   , Ds2 
	.byte	W36
@ 029   ----------------------------------------
	.byte		        An1 , v080
	.byte		N36   , En2 
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte		N36   , En2 
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 030   ----------------------------------------
	.byte		N36   , Bn1 
	.byte		N36   , Fs2 
	.byte	W36
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte		N36   , Fs2 
	.byte	W36
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 031   ----------------------------------------
	.byte		N36   , Cn2 
	.byte		N36   , Gn2 
	.byte	W36
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte		N36   , Gn2 
	.byte	W36
	.byte		        Cn2 
	.byte		N36   , Gn2 
	.byte	W36
@ 032   ----------------------------------------
	.byte		N24   , Dn1 
	.byte		N24   , An1 
	.byte	W24
	.byte		        Dn1 
	.byte		N24   , An1 
	.byte	W24
	.byte		        Dn1 
	.byte		N24   , An1 
	.byte	W24
	.byte		N36   , Dn1 
	.byte		N36   , An1 
	.byte	W72
@ 033   ----------------------------------------
the_raising_fighting_spirit_1_033:
	.byte		N72   , En1 , v092
	.byte		N72   , Bn1 
	.byte	W72
	.byte		        Fs1 
	.byte		N72   , Dn2 
	.byte	W72
	.byte	PEND
@ 034   ----------------------------------------
the_raising_fighting_spirit_1_034:
	.byte		TIE   , Gn1 , v092
	.byte		TIE   , Dn2 
	.byte	W96
	.byte	W48
	.byte	PEND
	.byte		EOT   , Gn1 
	.byte		        Dn2 
@ 035   ----------------------------------------
	.byte		N72   , Cn2 
	.byte		N72   , Gn2 
	.byte	W72
	.byte		        Gn1 
	.byte		N72   , Dn2 
	.byte	W72
@ 036   ----------------------------------------
	.byte		N72   
	.byte		N72   , An2 
	.byte	W72
	.byte		N66   , Bn1 
	.byte		N66   , Fs2 
	.byte	W72
@ 037   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_034
	.byte		EOT   , Gn1 
	.byte		        Dn2 
@ 039   ----------------------------------------
	.byte		N72   , Cn2 , v092
	.byte		N72   , Gn2 
	.byte	W72
	.byte		        Dn2 
	.byte		N72   , An2 
	.byte	W72
@ 040   ----------------------------------------
	.byte		N20   , En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		N32   , En2 
	.byte		N32   , Bn2 
	.byte	W72
@ 041   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_003
@ 042   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_003
@ 046   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_004
@ 049   ----------------------------------------
	.byte		N20   , En2 , v080
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N32   , En2 
	.byte		N32   , Bn2 
	.byte	W32
	.byte	W03
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

the_raising_fighting_spirit_2:
	.byte	KEYSH , the_raising_fighting_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 84*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N11   , En1 , v084
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N02   , An1 
	.byte	W03
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N11   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 001   ----------------------------------------
the_raising_fighting_spirit_2_001:
	.byte		N11   , En1 , v084
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   , Dn2 
	.byte		N36   , An2 
	.byte	W36
	.byte		N32   , An1 
	.byte		N32   , En2 
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
the_raising_fighting_spirit_2_002:
	.byte		N11   , En1 , v084
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N02   , An1 
	.byte	W03
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N11   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
the_raising_fighting_spirit_2_003:
	.byte	W12
	.byte		N20   , Cn2 , v084
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N36   , Cn2 
	.byte		N36   , Gn2 
	.byte	W48
	.byte		N20   , Bn1 
	.byte		N20   , Fs2 
	.byte	W24
	.byte		N36   , Bn1 
	.byte		N36   , Fs2 
	.byte	W36
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_003
@ 008   ----------------------------------------
the_raising_fighting_spirit_2_008:
	.byte		N36   , En2 , v056
	.byte		N36   , Bn2 
	.byte	W48
	.byte		N11   , En2 
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N36   , En2 
	.byte		N36   , Bn2 
	.byte	W48
	.byte		N11   , En2 
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N11   , Bn2 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
the_raising_fighting_spirit_2_009:
	.byte		N36   , Dn2 , v056
	.byte		N36   , An2 
	.byte	W48
	.byte		N11   , Dn2 
	.byte		N11   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N11   , An2 
	.byte	W12
	.byte		N36   , Dn2 
	.byte		N36   , An2 
	.byte	W48
	.byte		N11   , Dn2 
	.byte		N11   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N11   , An2 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_009
@ 012   ----------------------------------------
the_raising_fighting_spirit_2_012:
	.byte		N32   , Cn2 , v056
	.byte		N32   , Gn2 
	.byte	W48
	.byte		N11   , Cn2 
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N32   , Cn2 
	.byte		N32   , Gn2 
	.byte	W48
	.byte		N11   , Cn2 
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N11   , Gn2 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
the_raising_fighting_spirit_2_013:
	.byte		N32   , Dn2 , v056
	.byte		N32   , An2 
	.byte	W48
	.byte		N11   , Dn2 
	.byte		N11   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N11   , An2 
	.byte	W12
	.byte		N32   , Dn2 
	.byte		N32   , An2 
	.byte	W36
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
the_raising_fighting_spirit_2_014:
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N02   , An1 
	.byte	W03
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N11   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
the_raising_fighting_spirit_2_015:
	.byte	W12
	.byte		N20   , Cn2 , v080
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N36   , Cn2 
	.byte		N36   , Gn2 
	.byte	W48
	.byte		N20   , Bn1 
	.byte		N20   , Fs2 
	.byte	W24
	.byte		N36   , Bn1 
	.byte		N36   , Fs2 
	.byte	W36
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_014
@ 023   ----------------------------------------
	.byte	W12
	.byte		N20   , Cn2 , v080
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N36   , Cn2 
	.byte		N36   , Gn2 
	.byte	W48
	.byte		N20   , Dn2 
	.byte		N20   , An2 
	.byte	W24
	.byte		N36   , Dn2 
	.byte		N36   , An2 
	.byte	W36
@ 024   ----------------------------------------
the_raising_fighting_spirit_2_024:
	.byte		N11   , Cn2 , v080
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
	.byte		N24   
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_024
@ 026   ----------------------------------------
	.byte		N24   , Bn1 , v080
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N24   
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 027   ----------------------------------------
	.byte		N36   , En1 
	.byte		N36   , En2 
	.byte	W36
	.byte		        Fs1 
	.byte		N36   , Fs2 
	.byte	W36
	.byte		        Gn1 
	.byte		N36   , Gn2 
	.byte	W36
	.byte		        Gs1 
	.byte		N36   , Gs2 
	.byte	W36
@ 028   ----------------------------------------
	.byte		        An1 
	.byte		N36   , En2 
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte		N36   , En2 
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 029   ----------------------------------------
	.byte		N36   , Bn1 
	.byte		N36   , Fs2 
	.byte	W36
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte		N36   , Fs2 
	.byte	W36
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 030   ----------------------------------------
	.byte		N36   , Cn2 
	.byte		N36   , Gn2 
	.byte	W36
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte		N36   , Gn2 
	.byte	W36
	.byte		        Cn2 
	.byte		N36   , Gn2 
	.byte	W36
@ 031   ----------------------------------------
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N36   , Dn2 
	.byte		N36   , An2 
	.byte	W72
@ 032   ----------------------------------------
the_raising_fighting_spirit_2_032:
	.byte		N72   , En1 , v096
	.byte		N72   , Bn1 
	.byte	W72
	.byte		        Fs1 
	.byte		N72   , Dn2 
	.byte	W72
	.byte	PEND
@ 033   ----------------------------------------
the_raising_fighting_spirit_2_033:
	.byte		N72   , Gn1 , v096
	.byte		N72   , Dn2 
	.byte	W72
	.byte		N66   , Gn1 , v080
	.byte		N66   , Dn2 
	.byte	W72
	.byte	PEND
@ 034   ----------------------------------------
	.byte		N72   , Cn2 , v096
	.byte		N72   , Gn2 
	.byte	W72
	.byte		        Gn1 
	.byte		N72   , Dn2 
	.byte	W72
@ 035   ----------------------------------------
	.byte		N72   
	.byte		N72   , An2 
	.byte	W72
	.byte		N66   , Bn1 
	.byte		N66   , Fs2 
	.byte	W72
@ 036   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_032
@ 037   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_033
@ 038   ----------------------------------------
	.byte		N72   , Cn2 , v096
	.byte		N72   , Gn2 
	.byte	W72
	.byte		        Dn2 
	.byte		N72   , An2 
	.byte	W72
@ 039   ----------------------------------------
	.byte		N20   , En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		N32   , En2 
	.byte		N32   , Bn2 
	.byte	W72
@ 040   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_014
@ 041   ----------------------------------------
the_raising_fighting_spirit_2_041:
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   , Dn2 
	.byte		N36   , An2 
	.byte	W36
	.byte		N32   , An1 
	.byte		N32   , En2 
	.byte	W36
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_014
@ 043   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_015
@ 044   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_014
@ 045   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_015
@ 048   ----------------------------------------
	.byte		N20   , En2 , v080
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N20   , Bn2 
	.byte	W24
@ 049   ----------------------------------------
	.byte		N32   , En2 
	.byte		N32   , Bn2 
	.byte	W32
	.byte	W03
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

the_raising_fighting_spirit_3:
	.byte	KEYSH , the_raising_fighting_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 74*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , En1 , v072
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N02   , An1 
	.byte	W03
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N11   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 001   ----------------------------------------
the_raising_fighting_spirit_3_001:
	.byte		N11   , En1 , v072
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W84
	.byte	PEND
@ 002   ----------------------------------------
the_raising_fighting_spirit_3_002:
	.byte		N11   , En1 , v072
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N02   , An1 
	.byte	W03
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N11   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W96
	.byte	W48
@ 004   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_002
@ 007   ----------------------------------------
	.byte	W96
	.byte	W48
@ 008   ----------------------------------------
the_raising_fighting_spirit_3_008:
	.byte		N20   , En1 , v056
	.byte	W24
	.byte		N11   , En1 , v040
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N20   , En1 , v056
	.byte	W24
	.byte		N11   , En1 , v040
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
the_raising_fighting_spirit_3_009:
	.byte		N20   , Dn1 , v056
	.byte	W24
	.byte		N11   , Dn1 , v040
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N20   , Dn1 , v056
	.byte	W24
	.byte		N11   , Dn1 , v040
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
	 .word	the_raising_fighting_spirit_3_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_009
@ 012   ----------------------------------------
the_raising_fighting_spirit_3_012:
	.byte		N32   , Cn2 , v056
	.byte	W36
	.byte		N11   , Cn2 , v040
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N32   , Cn2 , v056
	.byte	W36
	.byte		N11   , Cn2 , v040
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
the_raising_fighting_spirit_3_013:
	.byte		N32   , Dn2 , v056
	.byte	W36
	.byte		N11   , Dn2 , v040
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N32   , Dn2 , v056
	.byte	W36
	.byte		N11   , Dn2 , v040
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
the_raising_fighting_spirit_3_014:
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N02   , An1 
	.byte	W03
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N11   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W96
	.byte	W48
@ 016   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_002
@ 023   ----------------------------------------
	.byte	W96
	.byte	W48
@ 024   ----------------------------------------
the_raising_fighting_spirit_3_024:
	.byte		N11   , Cn2 , v060
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
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_024
@ 026   ----------------------------------------
	.byte		N24   , Bn1 , v060
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 027   ----------------------------------------
	.byte	W96
	.byte	W48
@ 028   ----------------------------------------
	.byte		N36   , An1 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 029   ----------------------------------------
	.byte		N36   , Bn1 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 030   ----------------------------------------
	.byte		N36   , Cn2 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N36   
	.byte	W36
@ 031   ----------------------------------------
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N36   
	.byte	W72
@ 032   ----------------------------------------
	.byte	W96
	.byte	W48
@ 033   ----------------------------------------
	.byte	W96
	.byte	W48
@ 034   ----------------------------------------
	.byte	W96
	.byte	W48
@ 035   ----------------------------------------
	.byte	W96
	.byte	W48
@ 036   ----------------------------------------
	.byte	W96
	.byte	W48
@ 037   ----------------------------------------
	.byte	W96
	.byte	W48
@ 038   ----------------------------------------
	.byte	W96
	.byte	W48
@ 039   ----------------------------------------
	.byte	W96
	.byte	W48
@ 040   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_014
@ 041   ----------------------------------------
the_raising_fighting_spirit_3_041:
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W84
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_014
@ 043   ----------------------------------------
	.byte	W96
	.byte	W48
@ 044   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_014
@ 045   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_014
@ 047   ----------------------------------------
	.byte	W02
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

the_raising_fighting_spirit_4:
	.byte	KEYSH , the_raising_fighting_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 96*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , En0 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
@ 001   ----------------------------------------
the_raising_fighting_spirit_4_001:
	.byte		N11   , En0 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N32   , Dn1 
	.byte	W36
	.byte		        An0 
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
the_raising_fighting_spirit_4_002:
	.byte		N11   , En0 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
the_raising_fighting_spirit_4_003:
	.byte		N04   , En0 , v092
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N04   , Dn0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N20   , Bn0 
	.byte	W24
	.byte		N36   
	.byte	W36
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_003
@ 008   ----------------------------------------
the_raising_fighting_spirit_4_008:
	.byte		N24   , En0 , v092
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
the_raising_fighting_spirit_4_009:
	.byte		N24   , Dn0 , v092
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_009
@ 012   ----------------------------------------
the_raising_fighting_spirit_4_012:
	.byte		N24   , Cn1 , v092
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
the_raising_fighting_spirit_4_013:
	.byte		N24   , Dn1 , v092
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_002
@ 023   ----------------------------------------
	.byte		N04   , En0 , v092
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N04   , Dn0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N20   , Dn1 
	.byte	W24
	.byte		N36   
	.byte	W36
@ 024   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_012
@ 025   ----------------------------------------
	.byte		N12   , Cn1 , v092
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
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 026   ----------------------------------------
the_raising_fighting_spirit_4_026:
	.byte		N24   , Bn0 , v092
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte		N36   , En0 
	.byte	W36
	.byte		        Fs0 
	.byte	W36
	.byte		        Gn0 
	.byte	W36
	.byte		        Gs0 
	.byte	W36
@ 028   ----------------------------------------
	.byte		N24   , An0 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 029   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_026
@ 030   ----------------------------------------
	.byte		N11   , Cn1 , v092
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
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 031   ----------------------------------------
	.byte		N20   , Dn1 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N32   
	.byte	W72
@ 032   ----------------------------------------
the_raising_fighting_spirit_4_032:
	.byte		N12   , En0 , v092
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
	.byte		        Fs0 
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
@ 033   ----------------------------------------
the_raising_fighting_spirit_4_033:
	.byte		N12   , Gn0 , v092
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
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
	.byte		        Cn1 
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
	.byte		        Gn0 
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
@ 035   ----------------------------------------
	.byte		        Dn1 
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
	.byte		        Bn0 
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
@ 036   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_032
@ 037   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_033
@ 038   ----------------------------------------
	.byte		N12   , Cn1 , v092
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
	.byte		        Dn1 
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
@ 039   ----------------------------------------
	.byte		N20   , En1 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N36   
	.byte	W72
@ 040   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_002
@ 047   ----------------------------------------
	.byte		N04   , En0 , v092
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N36   
	.byte	W36
	.byte		N04   , En0 
	.byte	W12
	.byte		N20   , Bn0 
	.byte	W24
	.byte		N36   
	.byte	W36
@ 048   ----------------------------------------
	.byte		N20   , En0 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
@ 049   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte	W03
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

the_raising_fighting_spirit_5:
	.byte	KEYSH , the_raising_fighting_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 64*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W48
@ 001   ----------------------------------------
the_raising_fighting_spirit_5_001:
	.byte	W72
	.byte		N32   , Fs4 , v056
	.byte		N32   , Dn5 
	.byte	W36
	.byte		        Cs4 
	.byte		N32   , An4 
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W96
	.byte	W48
@ 003   ----------------------------------------
the_raising_fighting_spirit_5_003:
	.byte	W12
	.byte		N20   , En4 , v056
	.byte		N20   , Cn5 
	.byte	W24
	.byte		N32   , En4 
	.byte		N32   , Cn5 
	.byte	W48
	.byte		N20   , Ds4 
	.byte		N20   , Bn4 
	.byte	W24
	.byte		N32   , Ds4 
	.byte		N32   , Bn4 
	.byte	W36
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W96
	.byte	W48
@ 005   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_001
@ 006   ----------------------------------------
	.byte	W96
	.byte	W48
@ 007   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_003
@ 008   ----------------------------------------
the_raising_fighting_spirit_5_008:
	.byte		TIE   , Gn2 , v020
	.byte		TIE   , En3 
	.byte	W96
	.byte	W48
	.byte	PEND
	.byte		EOT   , Gn2 
	.byte		        En3 
@ 009   ----------------------------------------
the_raising_fighting_spirit_5_009:
	.byte		TIE   , Fs2 , v020
	.byte		TIE   , Dn3 
	.byte	W96
	.byte	W48
	.byte	PEND
	.byte		EOT   , Fs2 
	.byte		        Dn3 
@ 010   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_008
	.byte		EOT   , Gn2 
	.byte		        En3 
@ 011   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_009
	.byte		EOT   , Fs2 
	.byte		        Dn3 
@ 012   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_008
	.byte		EOT   , Gn2 
	.byte		        En3 
@ 013   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_009
	.byte		EOT   , Fs2 
	.byte		        Dn3 
@ 014   ----------------------------------------
	.byte	W96
	.byte	W48
@ 015   ----------------------------------------
the_raising_fighting_spirit_5_015:
	.byte	W12
	.byte		N20   , En4 , v052
	.byte		N20   , Cn5 
	.byte	W24
	.byte		N32   , En4 
	.byte		N32   , Cn5 
	.byte	W48
	.byte		N20   , Ds4 
	.byte		N20   , Bn4 
	.byte	W24
	.byte		N32   , Ds4 
	.byte		N32   , Bn4 
	.byte	W36
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_008
	.byte		EOT   , Gn2 
	.byte		        En3 
@ 017   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_009
	.byte		EOT   , Fs2 
	.byte		        Dn3 
@ 018   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_008
	.byte		EOT   , Gn2 
	.byte		        En3 
@ 019   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_009
	.byte		EOT   , Fs2 
	.byte		        Dn3 
@ 020   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_008
	.byte		EOT   , Gn2 
	.byte		        En3 
@ 021   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_009
	.byte		EOT   , Fs2 
	.byte		        Dn3 
@ 022   ----------------------------------------
	.byte	W96
	.byte	W48
@ 023   ----------------------------------------
	.byte	W12
	.byte		N20   , En4 , v052
	.byte		N20   , Cn5 
	.byte	W24
	.byte		N32   , En4 
	.byte		N32   , Cn5 
	.byte	W48
	.byte		N20   , Fs4 
	.byte		N20   , Dn5 
	.byte	W24
	.byte		N36   , Fs4 
	.byte		N36   , Dn5 
	.byte	W36
@ 024   ----------------------------------------
	.byte		TIE   , Gn3 , v036
	.byte		TIE   , En4 
	.byte	W96
	.byte	W48
@ 025   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		TIE   , Gn4 
	.byte	W66
	.byte		EOT   , Gn3 
	.byte	W06
@ 026   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte		TIE   , Dn4 
	.byte	W72
	.byte		EOT   , Gn4 
	.byte		TIE   , Fs4 
	.byte	W72
@ 027   ----------------------------------------
	.byte	W96
	.byte	W48
	.byte		EOT   , Fs3 
	.byte		        Dn4 
	.byte		        Fs4 
@ 028   ----------------------------------------
	.byte		TIE   , An3 
	.byte		TIE   , En4 
	.byte	W96
	.byte	W48
	.byte		EOT   , An3 
	.byte		        En4 
@ 029   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte		TIE   , Fs4 
	.byte	W96
	.byte	W48
	.byte		EOT   , Bn3 
	.byte		        Fs4 
@ 030   ----------------------------------------
	.byte		TIE   , Cn4 
	.byte		TIE   , Gn4 
	.byte	W96
	.byte	W48
	.byte		EOT   , Cn4 
	.byte		        Gn4 
@ 031   ----------------------------------------
	.byte		N20   , Dn4 , v052
	.byte		N20   , Dn5 
	.byte	W24
	.byte		        Dn4 
	.byte		N20   , Dn5 
	.byte	W24
	.byte		        Dn4 
	.byte		N20   , Dn5 
	.byte	W24
	.byte		N32   , Dn4 
	.byte		N32   , Dn5 
	.byte	W72
@ 032   ----------------------------------------
the_raising_fighting_spirit_5_032:
	.byte		N72   , Gn3 , v044
	.byte		N72   , En4 
	.byte	W72
	.byte		        An3 
	.byte		N72   , Fs4 
	.byte	W72
	.byte	PEND
@ 033   ----------------------------------------
the_raising_fighting_spirit_5_033:
	.byte		TIE   , Bn3 , v044
	.byte		TIE   , Gn4 
	.byte	W96
	.byte	W42
	.byte	PEND
	.byte		EOT   , Bn3 
	.byte		        Gn4 
	.byte	W06
@ 034   ----------------------------------------
	.byte		N72   , En4 
	.byte		N72   , Cn5 
	.byte	W72
	.byte		        Bn3 
	.byte		N72   , Gn4 
	.byte	W72
@ 035   ----------------------------------------
	.byte		        Fs4 
	.byte		N72   , Dn5 
	.byte	W72
	.byte		N66   , Ds4 
	.byte		N66   , Bn4 
	.byte	W72
@ 036   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_032
@ 037   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_033
	.byte		EOT   , Bn3 
	.byte		        Gn4 
	.byte	W06
@ 038   ----------------------------------------
	.byte		N72   , En4 , v044
	.byte		N72   , Cn5 
	.byte	W72
	.byte		        Fs4 
	.byte		N72   , Dn5 
	.byte	W72
@ 039   ----------------------------------------
	.byte		N20   , Gn4 , v052
	.byte		N20   , En5 
	.byte	W24
	.byte		        Gn4 
	.byte		N20   , En5 
	.byte	W24
	.byte		        Gn4 
	.byte		N20   , En5 
	.byte	W24
	.byte		N32   , Gn4 
	.byte		N32   , En5 
	.byte	W72
@ 040   ----------------------------------------
	.byte	W96
	.byte	W48
@ 041   ----------------------------------------
the_raising_fighting_spirit_5_041:
	.byte	W72
	.byte		N32   , Fs4 , v052
	.byte		N32   , Dn5 
	.byte	W36
	.byte		        Cs4 
	.byte		N32   , An4 
	.byte	W36
	.byte	PEND
@ 042   ----------------------------------------
	.byte	W96
	.byte	W48
@ 043   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_015
@ 044   ----------------------------------------
	.byte	W96
	.byte	W48
@ 045   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_041
@ 046   ----------------------------------------
	.byte	W96
	.byte	W48
@ 047   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_5_015
@ 048   ----------------------------------------
	.byte		N20   , Gn4 , v052
	.byte		N20   , En5 
	.byte	W24
	.byte		        Gn4 
	.byte		N20   , En5 
	.byte	W24
	.byte		        Gn4 
	.byte		N20   , En5 
	.byte	W24
	.byte		        Gn4 
	.byte		N20   , En5 
	.byte	W24
	.byte		        Gn4 
	.byte		N20   , En5 
	.byte	W24
	.byte		        Gn4 
	.byte		N20   , En5 
	.byte	W24
@ 049   ----------------------------------------
	.byte		N32   , Gn4 
	.byte		N32   , En5 
	.byte	W32
	.byte	W03
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

the_raising_fighting_spirit_6:
	.byte	KEYSH , the_raising_fighting_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 90*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v+8
	.byte	W96
	.byte	W48
@ 001   ----------------------------------------
	.byte	W96
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
	.byte	W48
@ 003   ----------------------------------------
	.byte	W96
	.byte	W48
@ 004   ----------------------------------------
	.byte	W96
	.byte	W48
@ 005   ----------------------------------------
	.byte	W96
	.byte	W48
@ 006   ----------------------------------------
	.byte	W96
	.byte	W48
@ 007   ----------------------------------------
the_raising_fighting_spirit_6_007:
	.byte	W96
	.byte	W12
	.byte		N36   , Bn3 , v084
	.byte	W36
	.byte	PEND
@ 008   ----------------------------------------
the_raising_fighting_spirit_6_008:
	.byte		N66   , En4 , v084
	.byte	W72
	.byte		N24   
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
the_raising_fighting_spirit_6_009:
	.byte		N72   , Fs4 , v084
	.byte	W72
	.byte		N66   , Dn4 
	.byte	W72
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_6_008
@ 011   ----------------------------------------
the_raising_fighting_spirit_6_011:
	.byte		TIE   , An4 , v084
	.byte	W96
	.byte	W08
	.byte	PEND
	.byte		EOT   
	.byte	W40
@ 012   ----------------------------------------
	.byte		N66   , Cn5 
	.byte	W72
	.byte		N24   
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 013   ----------------------------------------
	.byte		N48   , Bn4 
	.byte	W48
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
@ 014   ----------------------------------------
the_raising_fighting_spirit_6_014:
	.byte		TIE   , Bn4 , v084
	.byte	W96
	.byte	W08
	.byte	PEND
	.byte		EOT   
	.byte	W40
@ 015   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_6_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_6_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_6_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_6_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_6_011
	.byte		EOT   , An4 
	.byte	W40
@ 020   ----------------------------------------
	.byte		N66   , Cn5 , v084
	.byte	W72
	.byte		N24   
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        En5 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N48   , Dn5 
	.byte	W48
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N36   , An4 
	.byte	W36
	.byte		        Dn5 
	.byte	W36
@ 022   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_6_014
	.byte		EOT   , Bn4 
	.byte	W40
@ 023   ----------------------------------------
	.byte	W96
	.byte	W48
@ 024   ----------------------------------------
	.byte	W96
	.byte	W48
@ 025   ----------------------------------------
	.byte	W96
	.byte	W48
@ 026   ----------------------------------------
	.byte	W96
	.byte	W48
@ 027   ----------------------------------------
	.byte	W96
	.byte	W48
@ 028   ----------------------------------------
	.byte	W96
	.byte	W48
@ 029   ----------------------------------------
	.byte	W96
	.byte	W48
@ 030   ----------------------------------------
	.byte	W96
	.byte	W48
@ 031   ----------------------------------------
	.byte	W96
	.byte	W48
@ 032   ----------------------------------------
	.byte		N44   , Gn4 , v084, gtp3
	.byte	W48
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N32   , An4 
	.byte	W36
	.byte		        Dn5 
	.byte	W36
@ 033   ----------------------------------------
	.byte		N44   , Cn5 , v084, gtp3
	.byte	W48
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N66   , Bn4 
	.byte	W72
@ 034   ----------------------------------------
	.byte		N44   , En5 , v084, gtp3
	.byte	W48
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N36   , Bn4 
	.byte	W36
	.byte		        Gn4 
	.byte	W36
@ 035   ----------------------------------------
	.byte		N48   , An4 
	.byte	W48
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N66   , Bn4 
	.byte	W72
@ 036   ----------------------------------------
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N36   , An4 
	.byte	W36
	.byte		        Dn5 
	.byte	W36
@ 037   ----------------------------------------
	.byte		N48   , Cn5 
	.byte	W48
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N66   , Bn4 
	.byte	W72
@ 038   ----------------------------------------
	.byte		N24   , En5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
@ 039   ----------------------------------------
	.byte		TIE   , En4 
	.byte	W96
	.byte	W08
	.byte		EOT   
	.byte	W03
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

the_raising_fighting_spirit_7:
	.byte	KEYSH , the_raising_fighting_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 88*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v-8
	.byte	W96
	.byte	W48
@ 001   ----------------------------------------
	.byte	W96
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
	.byte	W48
@ 003   ----------------------------------------
	.byte	W96
	.byte	W48
@ 004   ----------------------------------------
	.byte	W96
	.byte	W48
@ 005   ----------------------------------------
	.byte	W96
	.byte	W48
@ 006   ----------------------------------------
	.byte	W96
	.byte	W48
@ 007   ----------------------------------------
	.byte	W96
	.byte	W48
@ 008   ----------------------------------------
	.byte	W96
	.byte	W48
@ 009   ----------------------------------------
	.byte	W96
	.byte	W48
@ 010   ----------------------------------------
	.byte	W96
	.byte	W48
@ 011   ----------------------------------------
	.byte	W96
	.byte	W48
@ 012   ----------------------------------------
	.byte	W96
	.byte	W48
@ 013   ----------------------------------------
	.byte	W96
	.byte	W48
@ 014   ----------------------------------------
	.byte	W96
	.byte	W48
@ 015   ----------------------------------------
	.byte	W96
	.byte	W48
@ 016   ----------------------------------------
	.byte	W96
	.byte	W48
@ 017   ----------------------------------------
	.byte	W96
	.byte	W48
@ 018   ----------------------------------------
	.byte	W96
	.byte	W48
@ 019   ----------------------------------------
	.byte	W96
	.byte	W48
@ 020   ----------------------------------------
	.byte	W96
	.byte	W48
@ 021   ----------------------------------------
	.byte	W96
	.byte	W48
@ 022   ----------------------------------------
	.byte	W96
	.byte	W48
@ 023   ----------------------------------------
	.byte	W96
	.byte	W48
@ 024   ----------------------------------------
	.byte		N11   , En2 , v100
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N20   , Bn2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N20   , Bn2 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 025   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N20   , Bn2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N11   , En2 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N11   , En2 
	.byte	W12
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N11   , En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N20   , Dn3 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W36
	.byte		N11   
	.byte	W12
@ 028   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N20   , Dn3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		N20   , Gn3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		N20   , An3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N20   , Gn3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N20   
	.byte	W24
@ 030   ----------------------------------------
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N32   
	.byte	W32
	.byte	W03
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

the_raising_fighting_spirit_8:
	.byte	KEYSH , the_raising_fighting_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 96*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
@ 001   ----------------------------------------
the_raising_fighting_spirit_8_001:
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , Cs2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
the_raising_fighting_spirit_8_002:
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N20   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N20   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N20   , Cs2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N05   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N05   , Cs2 , v100
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Cn1 , v072
	.byte		N23   , Fn1 , v100
	.byte		N32   , An2 
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N08   , Fn1 , v036
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
@ 005   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_001
@ 006   ----------------------------------------
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N20   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N20   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N05   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W06
	.byte		N05   , En1 , v100
	.byte	W06
	.byte		N11   , Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N05   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W06
	.byte		N05   , An1 , v100
	.byte	W06
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
@ 008   ----------------------------------------
the_raising_fighting_spirit_8_008:
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
the_raising_fighting_spirit_8_009:
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_009
@ 011   ----------------------------------------
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N20   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Cs2 , v100
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_009
@ 014   ----------------------------------------
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N20   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , En2 
	.byte		N20   , An2 
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , En2 
	.byte		N20   , An2 
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , En2 
	.byte		N20   , An2 
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N05   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N05   , En2 , v100
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_009
@ 019   ----------------------------------------
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
@ 020   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_008
@ 021   ----------------------------------------
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N20   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N05   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W06
	.byte		N05   , En1 , v100
	.byte	W06
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , En2 
	.byte		N20   , An2 
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , En2 
	.byte		N20   , An2 
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , En2 
	.byte		N20   , An2 
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N05   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W06
	.byte		N05   , En1 , v100
	.byte	W06
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
@ 024   ----------------------------------------
the_raising_fighting_spirit_8_024:
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
the_raising_fighting_spirit_8_025:
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_025
@ 027   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_025
@ 030   ----------------------------------------
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N20   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
@ 031   ----------------------------------------
	.byte		N20   , Cn1 , v072
	.byte		N20   , Fn1 , v100
	.byte	W24
	.byte		        Cn1 , v072
	.byte		N20   , Fn1 , v100
	.byte	W24
	.byte		        Cn1 , v072
	.byte		N20   , Fn1 , v100
	.byte	W24
	.byte		N32   , Cn1 , v072
	.byte		N32   , Fn1 , v100
	.byte	W36
	.byte		N11   , Cn1 , v072
	.byte		N05   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W06
	.byte		N05   , En1 , v100
	.byte	W06
	.byte		N11   , Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , Cs2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
@ 033   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_025
@ 035   ----------------------------------------
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N05   , Bn1 , v100
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , An1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , An1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
@ 036   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_024
@ 037   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_025
@ 038   ----------------------------------------
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , Fn2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
@ 039   ----------------------------------------
	.byte		N20   , Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , Fn1 , v036
	.byte	W24
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , Fn1 , v036
	.byte	W24
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , Fn1 , v036
	.byte	W24
	.byte		N32   , Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N32   , Fn1 , v036
	.byte	W36
	.byte		        Cn1 , v072
	.byte		N32   , Fn1 , v100
	.byte		N32   , An1 
	.byte	W36
@ 040   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_8_002
@ 043   ----------------------------------------
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N20   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N20   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N20   , Cs2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N11   , Cs2 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
@ 044   ----------------------------------------
	.byte		        Cn1 , v072
	.byte		N23   , Fn1 , v100
	.byte		N32   , An2 
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N08   , Fn1 , v036
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
@ 045   ----------------------------------------
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , Cs2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
@ 046   ----------------------------------------
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , An2 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N32   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N32   , As1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N05   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte	W06
	.byte		N05   , An1 , v100
	.byte	W06
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , An2 
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N20   , Fn1 , v036
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , An2 
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N20   , Fn1 , v036
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N08   , Fn1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , Cs2 
	.byte	W12
	.byte		N11   , Cn1 , v072
	.byte	W12
	.byte		N11   
	.byte		N05   , En1 , v100
	.byte		N11   , Fn1 , v036
	.byte		N05   , Cs2 , v100
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , Cn1 , v072
	.byte		N11   , Fn1 , v036
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N11   , Fn1 , v100
	.byte		N11   , As1 
	.byte	W12
@ 048   ----------------------------------------
	.byte		N20   , Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , Fn1 
	.byte	W24
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , Fn1 
	.byte	W24
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , Fn1 
	.byte	W24
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , Fn1 
	.byte	W24
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , Fn1 
	.byte	W24
	.byte		        Cn1 , v072
	.byte		N20   , En1 , v100
	.byte		N20   , Fn1 
	.byte	W24
@ 049   ----------------------------------------
	.byte		TIE   , En1 
	.byte		TIE   , Fn1 
	.byte		TIE   , Cs2 
	.byte		TIE   , An2 
	.byte	W96
	.byte	W42
	.byte		EOT   , En1 
	.byte		        Fn1 
	.byte		        Cs2 
	.byte		        An2 
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

the_raising_fighting_spirit:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	the_raising_fighting_spirit_pri	@ Priority
	.byte	the_raising_fighting_spirit_rev	@ Reverb.

	.word	the_raising_fighting_spirit_grp

	.word	the_raising_fighting_spirit_1
	.word	the_raising_fighting_spirit_2
	.word	the_raising_fighting_spirit_3
	.word	the_raising_fighting_spirit_4
	.word	the_raising_fighting_spirit_5
	.word	the_raising_fighting_spirit_6
	.word	the_raising_fighting_spirit_7
	.word	the_raising_fighting_spirit_8

	.end
