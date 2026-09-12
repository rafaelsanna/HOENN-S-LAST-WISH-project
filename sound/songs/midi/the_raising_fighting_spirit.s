	.include "MPlayDef.s"

	.equ	the_raising_fighting_spirit_grp, voicegroup_hlw_rock_metal
	.equ	the_raising_fighting_spirit_pri, 0
	.equ	the_raising_fighting_spirit_rev, reverb_set+12
	.equ	the_raising_fighting_spirit_mvl, 90
	.equ	the_raising_fighting_spirit_key, 0
	.equ	the_raising_fighting_spirit_tbs, 1
	.equ	the_raising_fighting_spirit_exg, 0
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
	.byte		VOICE , 31
	.byte		VOL   , 92*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N11   , En1 , v068
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
	.byte		N11   , En1 , v068
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
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W36
	.byte		        An1 
	.byte		N24   , En2 
	.byte	W36
	.byte	PEND
@ 003   ----------------------------------------
the_raising_fighting_spirit_1_003:
	.byte		N11   , En1 , v068
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
	.byte		N20   , Cn2 , v068
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N24   , Cn2 
	.byte		N24   , Gn2 
	.byte	W48
	.byte		N20   , Bn1 
	.byte		N20   , Fs2 
	.byte	W24
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
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
	.byte		N24   , En1 , v064
	.byte		N24   , En2 , v048
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N11   , En1 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N04   
	.byte		N11   , En2 , v048
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N04   , En1 , v044
	.byte		N11   , En2 , v048
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N24   , En1 , v064
	.byte		N24   , En2 , v048
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N11   , En1 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N04   
	.byte		N11   , En2 , v048
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N04   , En1 , v044
	.byte		N11   , En2 , v048
	.byte		N11   , Bn2 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
the_raising_fighting_spirit_1_010:
	.byte		N24   , An1 , v064
	.byte		N24   , Dn2 
	.byte		N24   , An2 , v048
	.byte	W24
	.byte		N11   , Dn2 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N04   , An1 
	.byte		N11   , Dn2 , v048
	.byte		N11   , An2 
	.byte	W12
	.byte		N04   , An1 , v044
	.byte		N11   , Dn2 , v048
	.byte		N11   , An2 
	.byte	W12
	.byte		N24   , An1 , v064
	.byte		N24   , Dn2 
	.byte		N24   , An2 , v048
	.byte	W24
	.byte		N11   , Dn2 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N04   , An1 
	.byte		N11   , Dn2 , v048
	.byte		N11   , An2 
	.byte	W12
	.byte		N04   , An1 , v044
	.byte		N11   , Dn2 , v048
	.byte		N11   , An2 
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
	.byte		N24   , Cn2 , v064
	.byte		N24   , Gn2 
	.byte	W36
	.byte		N11   , Cn2 , v044
	.byte	W12
	.byte		        Cn2 , v048
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N24   , Cn2 , v064
	.byte		N24   , Gn2 
	.byte	W36
	.byte		N11   , Cn2 , v044
	.byte	W12
	.byte		        Cn2 , v048
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N11   , Gn2 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
the_raising_fighting_spirit_1_014:
	.byte		N24   , Dn2 , v064
	.byte		N24   , An2 
	.byte	W36
	.byte		N11   , Dn2 , v044
	.byte	W12
	.byte		        Dn2 , v048
	.byte		N11   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N11   , An2 
	.byte	W12
	.byte		N24   , Dn2 , v064
	.byte		N24   , An2 
	.byte	W36
	.byte		N12   , Dn2 , v048
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
the_raising_fighting_spirit_1_015:
	.byte		N11   , En1 , v064
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
@ 016   ----------------------------------------
the_raising_fighting_spirit_1_016:
	.byte	W12
	.byte		N20   , Cn2 , v064
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N24   , Cn2 
	.byte		N24   , Gn2 
	.byte	W48
	.byte		N20   , Bn1 
	.byte		N20   , Fs2 
	.byte	W24
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W36
	.byte	PEND
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
	 .word	the_raising_fighting_spirit_1_015
@ 024   ----------------------------------------
	.byte	W12
	.byte		N20   , Cn2 , v064
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N24   , Cn2 
	.byte		N24   , Gn2 
	.byte	W48
	.byte		N20   , Dn2 
	.byte		N20   , An2 
	.byte	W24
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W36
@ 025   ----------------------------------------
the_raising_fighting_spirit_1_025:
	.byte		N11   , Cn2 , v064
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
	.byte		N24   , Bn1 , v064
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
	.byte		N24   , En1 , v076
	.byte		N24   , Bn1 
	.byte		N24   , En2 , v064
	.byte	W36
	.byte		        Fs1 , v076
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 , v064
	.byte	W36
	.byte		        Gn1 , v076
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 , v064
	.byte	W36
	.byte		        Gs1 , v076
	.byte		N24   , Ds2 
	.byte		N24   , Gs2 , v064
	.byte	W36
@ 029   ----------------------------------------
	.byte		        An1 
	.byte		N24   , En2 
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N24   
	.byte		N24   , En2 
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 030   ----------------------------------------
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W36
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N24   
	.byte		N24   , Fs2 
	.byte	W36
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 031   ----------------------------------------
	.byte		N24   , Cn2 
	.byte		N24   , Gn2 
	.byte	W36
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N24   
	.byte		N24   , Gn2 
	.byte	W36
	.byte		        Cn2 
	.byte		N24   , Gn2 
	.byte	W36
@ 032   ----------------------------------------
	.byte		        An1 
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W72
@ 033   ----------------------------------------
the_raising_fighting_spirit_1_033:
	.byte		N24   , En1 , v076
	.byte		N24   , Bn1 
	.byte	W72
	.byte		        Fs1 
	.byte		N24   , Dn2 
	.byte	W72
	.byte	PEND
@ 034   ----------------------------------------
the_raising_fighting_spirit_1_034:
	.byte		N24   , Gn1 , v076
	.byte		N24   , Dn2 
	.byte	W72
	.byte		        Gn1 , v064
	.byte		N24   , Dn2 
	.byte	W72
	.byte	PEND
@ 035   ----------------------------------------
	.byte		        Cn2 , v076
	.byte		N24   , Gn2 
	.byte	W72
	.byte		        Gn1 
	.byte		N24   , Dn2 
	.byte	W72
@ 036   ----------------------------------------
	.byte		N24   
	.byte		N24   , An2 
	.byte	W72
	.byte		        Bn1 
	.byte		N24   , Fs2 
	.byte	W72
@ 037   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_034
@ 039   ----------------------------------------
	.byte		N24   , Cn2 , v076
	.byte		N24   , Gn2 
	.byte	W72
	.byte		        Dn2 
	.byte		N24   , An2 
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
	.byte		N24   , En2 
	.byte		N24   , Bn2 
	.byte	W72
@ 041   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_015
@ 042   ----------------------------------------
the_raising_fighting_spirit_1_042:
	.byte		N11   , En1 , v064
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
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W36
	.byte		        An1 
	.byte		N24   , En2 
	.byte	W36
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_015
@ 044   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_015
@ 046   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_1_016
@ 049   ----------------------------------------
	.byte		N20   , En2 , v064
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
	.byte		N24   , En2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

the_raising_fighting_spirit_2:
	.byte	KEYSH , the_raising_fighting_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 90*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , En1 , v068
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
	.byte		        Bn0 
	.byte	W12
	.byte		        An1 
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
	.byte		N11   , En1 , v068
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
	.byte		N24   , Dn1 
	.byte	W36
	.byte		        An1 
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
the_raising_fighting_spirit_2_002:
	.byte		N11   , En1 , v068
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
	.byte		        Bn0 
	.byte	W12
	.byte		        An1 
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
	.byte		N04   , En1 , v068
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N04   , Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N20   , Bn0 
	.byte	W24
	.byte		N24   
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
	.byte		N24   , En1 , v068
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
the_raising_fighting_spirit_2_009:
	.byte		N24   , Dn1 , v068
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
	 .word	the_raising_fighting_spirit_2_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_009
@ 012   ----------------------------------------
the_raising_fighting_spirit_2_012:
	.byte		N24   , Cn1 , v068
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
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_003
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
	 .word	the_raising_fighting_spirit_2_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_002
@ 023   ----------------------------------------
	.byte		N04   , En1 , v068
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N04   , Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N20   , Dn1 
	.byte	W24
	.byte		N24   
	.byte	W36
@ 024   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_012
@ 025   ----------------------------------------
	.byte		N12   , Cn1 , v068
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
the_raising_fighting_spirit_2_026:
	.byte		N24   , Bn0 , v068
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
	.byte		N24   , En1 
	.byte	W36
	.byte		        Fs1 
	.byte	W36
	.byte		        Gn1 
	.byte	W36
	.byte		        Gs1 
	.byte	W36
@ 028   ----------------------------------------
	.byte		        An1 
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
	 .word	the_raising_fighting_spirit_2_026
@ 030   ----------------------------------------
	.byte		N11   , Cn1 , v068
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
	.byte		N24   
	.byte	W72
@ 032   ----------------------------------------
the_raising_fighting_spirit_2_032:
	.byte		N12   , En1 , v068
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
	.byte		        Fs1 
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
the_raising_fighting_spirit_2_033:
	.byte		N12   , Gn1 , v068
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
	.byte		        Gn1 
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
	 .word	the_raising_fighting_spirit_2_032
@ 037   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_033
@ 038   ----------------------------------------
	.byte		N12   , Cn1 , v068
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
	.byte		N24   
	.byte	W72
@ 040   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_2_002
@ 047   ----------------------------------------
	.byte		N04   , En1 , v068
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N24   
	.byte	W36
	.byte		N04   , En1 
	.byte	W12
	.byte		N20   , Bn0 
	.byte	W24
	.byte		N24   
	.byte	W36
@ 048   ----------------------------------------
	.byte		N20   , En1 
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
	.byte		N24   
	.byte	W24
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

the_raising_fighting_spirit_3:
	.byte	KEYSH , the_raising_fighting_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 94*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v+16
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
the_raising_fighting_spirit_3_007:
	.byte	W96
	.byte	W12
	.byte		N36   , Bn3 , v060
	.byte	W36
	.byte	PEND
@ 008   ----------------------------------------
the_raising_fighting_spirit_3_008:
	.byte		N66   , En4 , v060
	.byte	W72
	.byte		N24   
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
the_raising_fighting_spirit_3_009:
	.byte		N72   , Fs4 , v060
	.byte	W72
	.byte		N66   , Dn4 
	.byte	W72
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_008
@ 011   ----------------------------------------
the_raising_fighting_spirit_3_011:
	.byte		TIE   , An4 , v060
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
	.byte		        Dn4 
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
the_raising_fighting_spirit_3_014:
	.byte		TIE   , Bn4 , v060
	.byte	W96
	.byte	W08
	.byte	PEND
	.byte		EOT   
	.byte	W40
@ 015   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_007
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
	 .word	the_raising_fighting_spirit_3_011
	.byte		EOT   , An4 
	.byte	W40
@ 020   ----------------------------------------
	.byte		N66   , Cn5 , v060
	.byte	W72
	.byte		N24   
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N36   , An4 
	.byte	W36
	.byte		        Dn4 
	.byte	W36
@ 022   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_3_014
	.byte		EOT   , Bn4 
	.byte	W40
@ 023   ----------------------------------------
	.byte	W96
	.byte	W48
@ 024   ----------------------------------------
	.byte		N11   , En2 , v072
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
	.byte	W72
@ 032   ----------------------------------------
	.byte		N44   , Gn4 , v060
	.byte	W48
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N32   , An4 
	.byte	W36
	.byte		        Dn4 
	.byte	W36
@ 033   ----------------------------------------
	.byte		N44   , Cn5 
	.byte	W48
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N66   , Bn4 
	.byte	W72
@ 034   ----------------------------------------
	.byte		N44   , En4 
	.byte	W48
	.byte		N12   , Dn4 
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
	.byte		        Dn4 
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
	.byte		N24   , En4 
	.byte	W24
	.byte		        Dn4 
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
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

the_raising_fighting_spirit_4:
	.byte	KEYSH , the_raising_fighting_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 94*the_raising_fighting_spirit_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
@ 001   ----------------------------------------
the_raising_fighting_spirit_4_001:
	.byte		N11   , Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
the_raising_fighting_spirit_4_002:
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N05   , En1 , v080
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N12   , En1 , v032
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
@ 005   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_002
@ 007   ----------------------------------------
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N05   , En1 , v080
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N05   , En1 , v080
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 008   ----------------------------------------
the_raising_fighting_spirit_4_008:
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
the_raising_fighting_spirit_4_009:
	.byte		N11   , Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_009
@ 011   ----------------------------------------
	.byte		N11   , Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_009
@ 014   ----------------------------------------
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N05   , En1 , v080
	.byte		N05   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_009
@ 019   ----------------------------------------
	.byte		N11   , Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 020   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_008
@ 021   ----------------------------------------
	.byte		N11   , Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 022   ----------------------------------------
the_raising_fighting_spirit_4_022:
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N05   , En1 , v080
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N05   , En1 , v080
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 024   ----------------------------------------
the_raising_fighting_spirit_4_024:
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_024
@ 026   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_024
@ 028   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_024
@ 030   ----------------------------------------
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 031   ----------------------------------------
	.byte		N12   , Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W36
	.byte		N11   , Cn1 , v060
	.byte		N05   , En1 , v080
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
@ 033   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_024
@ 034   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_024
@ 035   ----------------------------------------
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N05   , En1 , v080
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 036   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_024
@ 037   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_024
@ 038   ----------------------------------------
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
@ 039   ----------------------------------------
	.byte		N12   , Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W36
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W36
@ 040   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_002
@ 043   ----------------------------------------
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 044   ----------------------------------------
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N12   , En1 , v032
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
@ 045   ----------------------------------------
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v032
	.byte	W12
@ 046   ----------------------------------------
	.byte	PATT
	 .word	the_raising_fighting_spirit_4_022
@ 047   ----------------------------------------
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N12   , En1 , v032
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N12   , En1 , v080
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N12   , En1 , v032
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte	W12
	.byte		N11   
	.byte		N05   , En1 , v080
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N11   , En1 , v080
	.byte	W12
@ 048   ----------------------------------------
	.byte		N12   , Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v080
	.byte	W24
@ 049   ----------------------------------------
	.byte		N12   
	.byte		N12   , Fs1 
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

the_raising_fighting_spirit:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	the_raising_fighting_spirit_pri	@ Priority
	.byte	the_raising_fighting_spirit_rev	@ Reverb.

	.word	the_raising_fighting_spirit_grp

	.word	the_raising_fighting_spirit_1
	.word	the_raising_fighting_spirit_2
	.word	the_raising_fighting_spirit_3
	.word	the_raising_fighting_spirit_4

	.end
