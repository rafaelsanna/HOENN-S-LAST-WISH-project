	.include "MPlayDef.s"

	.equ	mus_meet_me_halfway_grp, voicegroup_littleroot_test
	.equ	mus_meet_me_halfway_pri, 0
	.equ	mus_meet_me_halfway_rev, reverb_set+50
	.equ	mus_meet_me_halfway_mvl, 100
	.equ	mus_meet_me_halfway_key, 0
	.equ	mus_meet_me_halfway_tbs, 1
	.equ	mus_meet_me_halfway_exg, 1
	.equ	mus_meet_me_halfway_cmp, 1

	.section .rodata
	.global	mus_meet_me_halfway
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_meet_me_halfway_1:
	.byte		VOL   , 127*mus_meet_me_halfway_mvl/mxv
	.byte	KEYSH , mus_meet_me_halfway_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 130*mus_meet_me_halfway_tbs/2
	.byte		VOICE , 80
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
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W01
	.byte		N12   , Gn0 , v076
	.byte		N12   , Gn1 , v072
	.byte	W32
	.byte	W03
	.byte		        Gn0 
	.byte		N06   , Gn1 , v076
	.byte	W24
	.byte		N12   , Gn0 , v080
	.byte		N06   , Gn1 , v072
	.byte	W22
	.byte		N12   , Gn0 
	.byte	W02
	.byte		        Gn1 , v080
	.byte	W12
@ 026   ----------------------------------------
	.byte		        An1 , v076
	.byte	W01
	.byte		        An0 , v072
	.byte	W36
	.byte		N12   
	.byte		N06   , An1 , v076
	.byte	W23
	.byte		N12   , An0 , v072
	.byte		N06   , An1 , v076
	.byte	W24
	.byte		N12   , An1 , v072
	.byte	W01
	.byte		        An0 
	.byte	W11
@ 027   ----------------------------------------
	.byte	W01
	.byte		        Fs0 , v064
	.byte		N12   , Fs1 , v068
	.byte	W36
	.byte		        Fs0 
	.byte	W01
	.byte		N06   , Fs1 , v076
	.byte	W23
	.byte		N12   , Fs0 , v068
	.byte		N06   , Fs1 , v076
	.byte	W23
	.byte		N12   , Fs0 , v072
	.byte		N12   , Fs1 , v080
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Gn0 , v072
	.byte		N12   , Gn1 , v068
	.byte	W36
	.byte	W02
	.byte		        Gn0 , v076
	.byte		N06   , Gn1 , v072
	.byte	W23
	.byte		N06   
	.byte	W01
	.byte		        Gn0 
	.byte	W22
	.byte		N12   
	.byte		N12   , Gn1 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Bn1 
	.byte	W01
	.byte		        Bn0 
	.byte	W32
	.byte	W03
	.byte		        Bn0 , v068
	.byte	W01
	.byte		N06   , Bn1 , v076
	.byte	W23
	.byte		N12   , Bn0 , v072
	.byte		N12   , Bn1 , v076
	.byte	W24
	.byte		        Bn0 , v068
	.byte	W01
	.byte		N11   , Bn1 , v072
	.byte	W11
@ 030   ----------------------------------------
	.byte		N12   , Cs1 
	.byte		N12   , Cs2 
	.byte	W36
	.byte	W01
	.byte		N06   , Cs1 
	.byte		N12   , Cs2 
	.byte	W11
	.byte		N01   , Bn0 , v064
	.byte		N12   , Bn1 , v072
	.byte	W12
	.byte		N01   , Cs1 , v068
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Dn2 , v072
	.byte	W01
	.byte		N10   , Dn1 , v068
	.byte	W11
	.byte		N12   , En2 , v064
	.byte	W01
	.byte		N10   , En1 , v068
	.byte	W10
	.byte		N12   , Fs2 , v072
	.byte	W01
@ 031   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W36
	.byte	W01
	.byte		N06   , Fs2 , v072
	.byte	W01
	.byte		        Fs1 
	.byte	W23
	.byte		        Fs2 
	.byte	W01
	.byte		        Fs1 , v068
	.byte	W23
	.byte		N11   
	.byte		N12   , Fs2 , v064
	.byte	W11
@ 032   ----------------------------------------
	.byte		N01   , Gn2 , v072
	.byte	W01
	.byte		N12   , Gn1 , v076
	.byte	W36
	.byte	W02
	.byte		N06   
	.byte		N06   , Gn2 , v072
	.byte	W22
	.byte		        Gn1 , v076
	.byte		N06   , Gn2 
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte		N12   , Dn2 
	.byte	W11
@ 033   ----------------------------------------
	.byte	W01
	.byte		        Gn1 , v068
	.byte		N12   , Gn2 , v072
	.byte	W32
	.byte	W03
	.byte		        Bn0 , v068
	.byte		N06   , Bn1 , v072
	.byte	W24
	.byte		N12   , Bn0 , v064
	.byte		N06   , Bn1 , v076
	.byte	W24
	.byte		N12   , Bn0 , v064
	.byte		N12   , Bn1 , v076
	.byte	W12
@ 034   ----------------------------------------
mus_meet_me_halfway_1_034:
	.byte		N12   , Cs1 , v068
	.byte		N12   , Cs2 , v064
	.byte	W36
	.byte		        Cs1 , v072
	.byte		N12   , Cs2 , v068
	.byte	W24
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte	W24
	.byte		        Cs1 , v064
	.byte		N12   , Cs2 , v068
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_meet_me_halfway_1_035:
	.byte		N12   , Fs0 , v060
	.byte		N06   , Fs1 , v072
	.byte	W36
	.byte		        Fs0 , v064
	.byte		N06   , Fs1 , v076
	.byte	W24
	.byte		N12   , Fs0 , v072
	.byte		N06   , Fs1 
	.byte	W24
	.byte		N12   , Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_meet_me_halfway_1_036:
	.byte		N12   , Gn0 , v068
	.byte		N12   , Gn1 , v076
	.byte	W36
	.byte		        Gn0 , v068
	.byte		N12   , Gn1 , v072
	.byte	W24
	.byte		        Gn0 , v068
	.byte		N06   , Gn1 , v076
	.byte	W24
	.byte		N12   , Gn0 , v072
	.byte		N12   , Gn1 , v076
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_meet_me_halfway_1_037:
	.byte		N12   , Bn0 , v072
	.byte		N12   , Bn1 , v076
	.byte	W36
	.byte		        Bn0 , v068
	.byte		N12   , Bn1 , v080
	.byte	W24
	.byte		        Bn0 , v068
	.byte		N12   , Bn1 , v080
	.byte	W24
	.byte		        Bn0 , v064
	.byte		N12   , Bn1 , v080
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_meet_me_halfway_1_038:
	.byte		N12   , Cs1 , v072
	.byte		N12   , Cs2 , v076
	.byte	W36
	.byte		        Cs1 , v072
	.byte		N12   , Cs2 , v076
	.byte	W24
	.byte		        Cs1 , v072
	.byte		N12   , Cs2 
	.byte	W24
	.byte		        Cs1 
	.byte		N12   , Cs2 , v068
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
mus_meet_me_halfway_1_039:
	.byte		N12   , Fs0 , v064
	.byte		N12   , Fs1 , v072
	.byte	W36
	.byte		        Fs0 , v068
	.byte		N12   , Fs1 , v076
	.byte	W24
	.byte		        Fs0 , v072
	.byte		N12   , Fs1 , v076
	.byte	W24
	.byte		        Fs0 , v072
	.byte		N12   , Fs1 , v076
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_meet_me_halfway_1_040:
	.byte		N12   , Gn0 , v072
	.byte		N12   , Gn1 
	.byte	W36
	.byte		        Gn0 , v076
	.byte		N06   , Gn1 
	.byte	W24
	.byte		N12   , Gn0 
	.byte		N06   , Gn1 
	.byte	W24
	.byte		        Gn0 
	.byte		N06   , Gn1 
	.byte	W12
	.byte	PEND
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
mus_meet_me_halfway_1_057:
	.byte		N12   , Gn0 , v076
	.byte	W12
	.byte		N06   , Gn1 , v080
	.byte	W24
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 , v076
	.byte	W12
	.byte		        Gn0 , v072
	.byte	W12
	.byte		        Gn1 , v076
	.byte	W12
	.byte		        Gn0 , v072
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
mus_meet_me_halfway_1_058:
	.byte		N12   , An0 , v072
	.byte	W12
	.byte		N06   , An1 
	.byte	W24
	.byte		N12   , An0 
	.byte	W12
	.byte		N06   , An1 , v076
	.byte	W12
	.byte		        An0 , v068
	.byte	W12
	.byte		        An1 , v076
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
mus_meet_me_halfway_1_059:
	.byte		N12   , Fs0 , v072
	.byte	W12
	.byte		N06   , Fs1 , v076
	.byte	W24
	.byte		N12   , Fs0 , v072
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N12   , Fs0 , v076
	.byte	W12
	.byte		N06   , Fs1 , v072
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
mus_meet_me_halfway_1_060:
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 , v076
	.byte	W24
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v076
	.byte	W12
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
mus_meet_me_halfway_1_061:
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W24
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 , v072
	.byte	W12
	.byte		N12   , Gn0 , v076
	.byte	W12
	.byte		        Gn1 , v072
	.byte	W12
	.byte		        Gn0 , v076
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_meet_me_halfway_1_062:
	.byte		N12   , An0 , v076
	.byte	W12
	.byte		N06   , An1 , v068
	.byte	W24
	.byte		N12   , An0 , v072
	.byte	W12
	.byte		N06   , An1 , v076
	.byte	W12
	.byte		        An0 , v072
	.byte	W12
	.byte		        An1 , v068
	.byte	W12
	.byte		        An0 , v072
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_meet_me_halfway_1_063:
	.byte		N12   , Fs0 , v072
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W24
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N12   , Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N06   , Fs0 , v076
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v076
	.byte	W24
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v076
	.byte	W12
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N06   , Gn0 
	.byte		N12   , Dn2 , v064
	.byte	W12
@ 065   ----------------------------------------
mus_meet_me_halfway_1_065:
	.byte		N12   , Gn1 , v068
	.byte		N12   , Gn2 , v072
	.byte	W36
	.byte		        Bn0 , v068
	.byte		N06   , Bn1 , v072
	.byte	W24
	.byte		N12   , Bn0 , v064
	.byte		N06   , Bn1 , v076
	.byte	W24
	.byte		N12   , Bn0 , v064
	.byte		N12   , Bn1 , v076
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_034
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_036
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_037
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_038
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_039
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_040
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_065
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_034
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_035
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_037
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_038
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_040
@ 081   ----------------------------------------
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v080
	.byte	W12
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   , Gn0 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   , Gn0 , v064
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
@ 082   ----------------------------------------
	.byte		N12   , An0 , v068
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N12   , An0 
	.byte	W12
	.byte		N06   , An1 , v064
	.byte	W12
	.byte		N12   , An0 , v068
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N18   , An0 , v064
	.byte	W12
	.byte		N06   , An1 , v068
	.byte	W12
@ 083   ----------------------------------------
	.byte		N12   , Fs0 , v064
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W12
	.byte		N12   , Fs0 , v068
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N12   , Fs0 , v072
	.byte	W12
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N18   , Fs0 , v072
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W12
@ 084   ----------------------------------------
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 , v072
	.byte	W12
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   , Gn0 , v064
	.byte	W12
	.byte		N06   , Gn1 , v072
	.byte	W01
	.byte		N23   , Fs2 , v060
	.byte	W11
	.byte		N01   , Gn0 , v064
	.byte	W01
	.byte		N10   , Fs2 , v072
	.byte	W11
	.byte		N06   , Gn1 , v068
	.byte		N01   , Dn2 , v060
	.byte	W06
	.byte		N18   , En2 , v064
	.byte	W06
@ 085   ----------------------------------------
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 , v072
	.byte	W01
	.byte		TIE   , Fs2 , v064
	.byte	W11
	.byte		N12   , Gn0 
	.byte	W12
	.byte		N06   , Gn1 , v068
	.byte	W12
	.byte		N12   , Gn0 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   , Gn0 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
@ 086   ----------------------------------------
	.byte		N12   , An0 , v072
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N12   , An0 
	.byte	W12
	.byte		N06   , An1 , v068
	.byte	W12
	.byte		N12   , An0 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N12   , Gn0 
	.byte	W12
	.byte		N06   , Gn1 , v076
	.byte	W12
@ 087   ----------------------------------------
	.byte		N12   , Fs0 , v072
	.byte	W12
	.byte		N06   , Fs1 , v064
	.byte	W12
	.byte		N12   , Fs0 , v068
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N12   , Fs0 , v064
	.byte	W12
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N18   , Fs0 
	.byte	W12
	.byte		EOT   , Fs2 
	.byte		N06   , Fs1 
	.byte	W12
@ 088   ----------------------------------------
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v068
	.byte	W12
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v068
	.byte	W12
	.byte		N12   , Gn0 
	.byte	W12
	.byte		N06   , Gn1 , v072
	.byte		N12   , Fs2 , v052
	.byte	W12
	.byte		        Gn0 , v068
	.byte		N12   , Fs2 , v072
	.byte	W12
	.byte		N06   , Gn1 , v068
	.byte		N06   , Dn2 , v056
	.byte	W06
	.byte		N18   , En2 
	.byte	W06
@ 089   ----------------------------------------
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N72   , Fs2 , v060
	.byte	W12
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   , Gn0 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N18   , Gn0 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
@ 090   ----------------------------------------
	.byte		N12   , An0 , v076
	.byte	W12
	.byte		N06   , An1 , v068
	.byte	W12
	.byte		N12   , An0 , v072
	.byte	W12
	.byte		N06   , An1 , v068
	.byte	W12
	.byte		N12   , An0 , v072
	.byte	W12
	.byte		N06   , An1 , v068
	.byte	W12
	.byte		N18   , An0 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
@ 091   ----------------------------------------
	.byte		N12   , Fs0 , v064
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W12
	.byte		N12   , Fs0 , v064
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N12   , Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 092   ----------------------------------------
	.byte		        Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v068
	.byte	W12
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v068
	.byte	W12
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v068
	.byte		N12   , Fs2 , v056
	.byte	W12
	.byte		        Gn0 , v072
	.byte		N12   , Fs2 , v064
	.byte	W12
	.byte		N06   , Gn1 , v068
	.byte		N06   , Dn2 , v060
	.byte	W06
	.byte		N18   , En2 
	.byte	W06
@ 093   ----------------------------------------
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v068
	.byte		N48   , Fs2 , v060
	.byte	W12
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v064
	.byte		N12   , Fs2 , v056
	.byte	W12
	.byte		        Gn0 , v072
	.byte		N12   , Fs2 , v056
	.byte	W12
	.byte		N06   , Gn1 , v068
	.byte		N06   , Dn2 , v060
	.byte	W06
	.byte		N18   , En2 
	.byte	W06
@ 094   ----------------------------------------
	.byte		N12   , An0 , v072
	.byte	W12
	.byte		N06   , An1 , v068
	.byte		N12   , Fs2 , v052
	.byte	W12
	.byte		        An0 , v068
	.byte		N12   , En2 , v064
	.byte	W12
	.byte		N06   , An1 , v068
	.byte		N06   , Dn2 , v056
	.byte	W12
	.byte		N12   , An0 , v072
	.byte	W12
	.byte		        An1 , v068
	.byte		N12   , En2 , v048
	.byte	W12
	.byte		        An0 , v072
	.byte		N12   , Fs2 , v060
	.byte	W12
	.byte		N06   , An1 , v068
	.byte		N06   , Dn2 , v056
	.byte	W06
	.byte		N18   , En2 , v060
	.byte	W06
@ 095   ----------------------------------------
	.byte		N12   , Fs0 , v064
	.byte	W12
	.byte		        Fs1 
	.byte		N48   , Fs2 , v060
	.byte	W12
	.byte		N12   , Fs0 , v064
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Fs0 , v064
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs2 , v060
	.byte	W12
	.byte		        Fs0 , v064
	.byte		N12   , Fs2 , v056
	.byte	W12
	.byte		N06   , Fs1 , v064
	.byte		N06   , Dn2 , v052
	.byte	W06
	.byte		N18   , En2 , v060
	.byte	W06
@ 096   ----------------------------------------
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N12   , Fs2 , v052
	.byte	W12
	.byte		        Gn0 , v064
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Gn1 , v068
	.byte		N06   , Dn2 , v060
	.byte	W12
	.byte		N12   , Gn0 , v064
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 , v068
	.byte	W12
	.byte		N06   , Gn1 , v064
	.byte	W12
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_057
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_058
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_059
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_060
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_061
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_062
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_063
@ 112   ----------------------------------------
	.byte		N12   , Gn0 , v072
	.byte	W12
	.byte		N06   , Gn1 , v076
	.byte	W24
	.byte		N12   , Gn0 , v072
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gn1 , v076
	.byte	W12
	.byte		N12   , Gn0 , v072
	.byte		N06   , Gn2 , v076
	.byte	W12
	.byte		N12   , Gn1 , v072
	.byte	W12
	.byte		N06   , Gn0 
	.byte		N12   , Dn2 , v064
	.byte	W12
@ 113   ----------------------------------------
mus_meet_me_halfway_1_113:
	.byte		N36   , Gn1 , v068
	.byte		N12   , Gn2 , v072
	.byte	W36
	.byte		        Bn0 , v068
	.byte		N06   , Bn1 , v072
	.byte	W24
	.byte		N12   , Bn0 , v064
	.byte		N06   , Bn1 , v076
	.byte	W24
	.byte		N12   , Bn0 , v064
	.byte		N12   , Bn1 , v076
	.byte	W12
	.byte	PEND
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_034
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_035
@ 116   ----------------------------------------
mus_meet_me_halfway_1_116:
	.byte		N12   , Gn0 , v068
	.byte		N36   , Gn1 , v076
	.byte	W36
	.byte		N12   , Gn0 , v068
	.byte		N24   , Gn1 , v072
	.byte	W24
	.byte		N12   , Gn0 , v068
	.byte		N24   , Gn1 , v076
	.byte	W24
	.byte		N12   , Gn0 , v072
	.byte		N12   , Gn1 , v076
	.byte	W12
	.byte	PEND
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_037
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_038
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_039
@ 120   ----------------------------------------
mus_meet_me_halfway_1_120:
	.byte		N12   , Gn0 , v072
	.byte		N36   , Gn1 
	.byte	W36
	.byte		N12   , Gn0 , v076
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12   , Gn0 
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N06   , Gn0 
	.byte		N12   , Gn1 
	.byte	W12
	.byte	PEND
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_113
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_034
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_035
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_116
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_037
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_038
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_039
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_120
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_113
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_034
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_035
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_116
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_037
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_038
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_1_039
@ 136   ----------------------------------------
	.byte		N12   , Gn0 , v072
	.byte		N36   , Gn1 
	.byte	W36
	.byte		N12   , Gn0 , v076
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12   , Gn0 
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N06   , Gn0 
	.byte		TIE   , Gn1 
	.byte	W12
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W12
	.byte		N06   , Dn2 , v048
	.byte	W12
	.byte		        Dn2 , v044
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn2 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		EOT   , Gn1 
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_meet_me_halfway_2:
	.byte		VOL   , 127*mus_meet_me_halfway_mvl/mxv
	.byte	KEYSH , mus_meet_me_halfway_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
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
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
mus_meet_me_halfway_2_024:
	.byte		N24   , Gn1 , v127
	.byte	W36
	.byte		N06   , Gn1 , v124
	.byte	W24
	.byte		N12   , Gn1 , v120
	.byte	W24
	.byte		        Gn1 , v116
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_meet_me_halfway_2_025:
	.byte		N24   , An1 , v120
	.byte	W36
	.byte		N12   , An1 , v124
	.byte	W24
	.byte		        An1 , v116
	.byte	W24
	.byte		        An1 , v112
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_meet_me_halfway_2_026:
	.byte		N18   , Fs1 , v104
	.byte	W36
	.byte		N12   , Fs1 , v116
	.byte	W24
	.byte		        Fs1 , v120
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_meet_me_halfway_2_027:
	.byte		N18   , Gn1 , v120
	.byte	W36
	.byte		N06   , Gn1 , v124
	.byte	W24
	.byte		N12   , Gn1 , v112
	.byte	W24
	.byte		        Dn1 , v120
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_meet_me_halfway_2_028:
	.byte		N12   , Gn1 , v124
	.byte	W36
	.byte		        Gn1 , v112
	.byte	W24
	.byte		        Gn1 , v124
	.byte	W24
	.byte		        Gn1 , v112
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_meet_me_halfway_2_029:
	.byte		N12   , An1 , v120
	.byte	W36
	.byte		N06   , An1 , v116
	.byte	W24
	.byte		N12   , An1 , v112
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_meet_me_halfway_2_030:
	.byte		N12   , Fs1 , v112
	.byte	W36
	.byte		        Fs1 , v116
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N06   , Fs1 , v120
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_meet_me_halfway_2_031:
	.byte		N18   , Gn1 , v108
	.byte	W36
	.byte		N06   , Gn1 , v124
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N12   , Dn1 , v100
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_meet_me_halfway_2_032:
	.byte		N18   , Gn1 , v120
	.byte	W36
	.byte		N06   , Gn1 , v112
	.byte	W24
	.byte		N12   , Gn1 , v108
	.byte	W24
	.byte		        Gn1 , v104
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_meet_me_halfway_2_033:
	.byte		N12   , An1 , v116
	.byte	W36
	.byte		N06   
	.byte	W24
	.byte		N12   , An1 , v120
	.byte	W24
	.byte		        An1 , v112
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_meet_me_halfway_2_034:
	.byte		N12   , Fs1 , v104
	.byte	W36
	.byte		        Fs1 , v120
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N06   , Fs1 , v124
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_meet_me_halfway_2_035:
	.byte		N12   , Gn1 , v127
	.byte	W36
	.byte		        Gn1 , v124
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_meet_me_halfway_2_036:
	.byte		N12   , Gn1 , v127
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Dn1 , v092
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_meet_me_halfway_2_037:
	.byte		N12   , An1 , v127
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		        An1 , v124
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_meet_me_halfway_2_038:
	.byte		N12   , Fs1 , v116
	.byte	W36
	.byte		N06   , Fs1 , v120
	.byte	W24
	.byte		        Fs1 , v124
	.byte	W24
	.byte		        Fs1 , v112
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
mus_meet_me_halfway_2_039:
	.byte		N18   , Gn1 , v124
	.byte	W36
	.byte		N12   , Gn1 , v127
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
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
	.byte		N96   , Gn1 , v124
	.byte	W96
@ 049   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 050   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 051   ----------------------------------------
	.byte		N72   , Gn1 
	.byte	W72
	.byte		N24   , Dn1 , v116
	.byte	W24
@ 052   ----------------------------------------
	.byte		N96   , Gn1 , v127
	.byte	W96
@ 053   ----------------------------------------
	.byte		N72   , An1 , v116
	.byte	W72
	.byte		N24   , An1 , v124
	.byte	W24
@ 054   ----------------------------------------
	.byte		N90   , Fs1 , v108
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_030
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_031
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_032
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_033
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_034
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_036
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_037
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_038
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_039
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_032
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_033
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_034
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_035
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_037
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_038
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_039
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
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte		N96   , En1 , v127
	.byte	W96
@ 097   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 098   ----------------------------------------
	.byte		        Bn1 , v120
	.byte	W96
@ 099   ----------------------------------------
	.byte		N90   , Cs2 , v127
	.byte	W96
@ 100   ----------------------------------------
	.byte		N96   , En1 , v112
	.byte	W96
@ 101   ----------------------------------------
	.byte		        Fs1 , v124
	.byte	W96
@ 102   ----------------------------------------
	.byte		        Gn1 , v127
	.byte	W96
@ 103   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_024
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_025
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_026
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_027
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_028
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_029
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_030
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_031
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_032
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_033
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_034
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_035
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_036
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_037
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_038
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_039
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_032
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_033
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_034
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_035
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_036
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_037
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_038
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_039
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_032
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_033
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_034
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_035
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_036
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_037
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_038
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_2_039
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W90
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_meet_me_halfway_3:
	.byte		VOL   , 127*mus_meet_me_halfway_mvl/mxv
	.byte	KEYSH , mus_meet_me_halfway_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		N01   , Bn1 , v032
	.byte		N84   , Dn2 
	.byte		N01   , Gn2 
	.byte		N01   , Dn3 
	.byte	W01
	.byte		N52   , Gn1 
	.byte	W52
	.byte		N42   , Fs4 
	.byte	W42
	.byte		N01   , An2 
	.byte		N01   , Cs3 
	.byte	W01
@ 001   ----------------------------------------
	.byte		N03   , En2 , v008
	.byte	W01
	.byte		N13   , An1 , v016
	.byte	W02
	.byte		N12   , En4 , v008
	.byte	W11
	.byte		N80   , Fs4 , v016
	.byte	W78
	.byte		N01   , Cs3 , v008
	.byte	W01
	.byte		        Fs1 , v012
	.byte	W01
	.byte		N76   , Fs2 
	.byte		N09   , An2 
	.byte	W02
@ 002   ----------------------------------------
	.byte	W08
	.byte		N12   , An4 
	.byte	W16
	.byte		        Gn4 , v016
	.byte	W15
	.byte		N18   , Fs4 , v020
	.byte	W18
	.byte		        En4 
	.byte	W17
	.byte		        Dn4 
	.byte	W17
	.byte		N12   , En4 , v008
	.byte	W03
	.byte		N01   , Gn1 
	.byte		N01   , Gn2 
	.byte	W01
	.byte		N04   , Dn3 
	.byte	W01
@ 003   ----------------------------------------
	.byte	W04
	.byte		N60   , Fs4 , v020
	.byte	W56
	.byte	W03
	.byte		N30   , En4 , v016
	.byte	W32
	.byte	W01
@ 004   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs4 , v020
	.byte	W48
@ 005   ----------------------------------------
	.byte	W01
	.byte		N24   , En4 , v016
	.byte	W32
	.byte	W01
	.byte		N12   , En4 , v012
	.byte	W15
	.byte		        An4 , v020
	.byte	W17
	.byte		        Gn4 
	.byte	W15
	.byte		        Fs4 
	.byte	W15
@ 006   ----------------------------------------
	.byte	W01
	.byte		N18   , Fs4 , v016
	.byte	W18
	.byte		N42   , En4 , v020
	.byte	W56
	.byte	W01
	.byte		N06   
	.byte	W14
	.byte		        Dn4 
	.byte	W06
@ 007   ----------------------------------------
	.byte	W12
	.byte		N12   , En4 
	.byte	W14
	.byte		N06   , Fs4 
	.byte	W14
	.byte		N18   
	.byte	W56
@ 008   ----------------------------------------
	.byte	W01
	.byte		N01   , Bn2 , v012
	.byte		N12   , Bn3 , v020
	.byte	W01
	.byte		N01   , Gn1 , v012
	.byte		N01   , Gn2 , v008
	.byte	W02
	.byte		N72   , Dn2 , v004
	.byte	W32
	.byte		N06   , Dn4 , v020
	.byte	W11
	.byte		        En4 , v028
	.byte	W12
	.byte		N12   , Fs4 , v024
	.byte	W13
	.byte		N06   , En4 
	.byte	W11
	.byte		        Dn4 , v020
	.byte	W12
	.byte		N01   , Cs2 , v008
	.byte		N01   , An2 , v012
	.byte		N01   , En4 , v024
	.byte	W01
@ 009   ----------------------------------------
	.byte		N11   , An1 , v008
	.byte	W01
	.byte		N92   , En2 , v004
	.byte	W10
	.byte		N06   , Dn4 , v020
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W13
	.byte		        En4 
	.byte	W11
	.byte		        Fs4 , v016
	.byte	W15
	.byte		N12   , Dn4 , v024
	.byte	W19
	.byte		N03   , Fs2 , v008
	.byte		N84   , Cs3 , v004
	.byte	W03
@ 010   ----------------------------------------
	.byte	W01
	.byte		N12   , Cs4 , v020
	.byte	W32
	.byte	W02
	.byte		N06   , En4 , v024
	.byte	W12
	.byte		        En4 , v020
	.byte	W12
	.byte		        Fs4 
	.byte	W13
	.byte		        En4 
	.byte	W11
	.byte		        Dn4 , v028
	.byte	W07
	.byte		        Dn3 , v008
	.byte	W06
@ 011   ----------------------------------------
	.byte		        En4 , v024
	.byte	W01
	.byte		N03   , Dn2 , v004
	.byte	W03
	.byte		N54   , Bn2 
	.byte	W07
	.byte		N06   , Fs4 , v020
	.byte	W13
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W11
	.byte		        Fs4 , v024
	.byte	W13
	.byte		N12   , Dn4 , v028
	.byte	W24
@ 012   ----------------------------------------
	.byte		N01   , Gn2 , v016
	.byte		N01   , Bn2 , v012
	.byte		N12   , Bn3 , v028
	.byte	W01
	.byte		N48   , Dn3 , v008
	.byte	W36
	.byte		N06   , Dn4 , v020
	.byte	W12
	.byte		        En4 
	.byte	W11
	.byte		        Fs4 
	.byte	W13
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W11
@ 013   ----------------------------------------
	.byte	W01
	.byte		N60   , En2 , v008
	.byte		N01   , An2 
	.byte		N06   , En4 , v020
	.byte	W11
	.byte		        Fs4 , v016
	.byte	W13
	.byte		        En4 , v024
	.byte	W12
	.byte		        Dn4 , v020
	.byte	W12
	.byte		        En4 , v024
	.byte	W10
	.byte		        Fs4 , v020
	.byte	W13
	.byte		        Dn4 , v028
	.byte	W11
	.byte		        Cs4 , v020
	.byte	W11
	.byte		N01   , Cs3 , v008
	.byte	W01
	.byte		        Fs2 , v004
	.byte		N06   , Cs4 , v020
	.byte	W01
@ 014   ----------------------------------------
	.byte		N48   , An2 , v008
	.byte	W32
	.byte	W03
	.byte		N06   , Dn4 , v016
	.byte	W13
	.byte		        En4 , v020
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 , v024
	.byte	W12
	.byte		        Dn4 , v020
	.byte	W12
@ 015   ----------------------------------------
	.byte	W01
	.byte		N01   , En4 
	.byte	W01
	.byte		N10   , Fs2 , v004
	.byte		N01   , Bn2 , v012
	.byte	W01
	.byte		N32   , Dn3 , v008
	.byte	W09
	.byte		N06   , Fs4 , v020
	.byte	W13
	.byte		N12   , En4 , v024
	.byte	W11
	.byte		N06   , Dn4 , v016
	.byte	W11
	.byte		        En4 , v024
	.byte	W11
	.byte		        Dn4 , v020
	.byte	W14
	.byte		        En4 , v024
	.byte	W11
	.byte		        Dn4 
	.byte	W13
@ 016   ----------------------------------------
	.byte	W01
	.byte		N01   , Bn2 , v008
	.byte		N01   , Dn3 
	.byte		N06   , Bn3 , v016
	.byte	W01
	.byte		N36   , Gn2 , v008
	.byte	W32
	.byte	W02
	.byte		N06   , Bn3 , v024
	.byte	W11
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W11
	.byte		        Bn3 , v020
	.byte	W12
	.byte		N06   
	.byte	W11
	.byte		        Bn3 , v028
	.byte	W03
@ 017   ----------------------------------------
	.byte		N01   , Cs3 , v008
	.byte	W01
	.byte		N48   , En2 
	.byte		N01   , An2 , v012
	.byte	W09
	.byte		N06   , An3 , v028
	.byte	W13
	.byte		        An3 , v024
	.byte	W13
	.byte		N06   
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v024
	.byte	W11
	.byte		        An3 , v028
	.byte	W11
	.byte		        An3 , v024
	.byte	W13
	.byte		N01   , Cs3 , v004
	.byte	W01
@ 018   ----------------------------------------
	.byte		        Fs2 
	.byte		N42   , An2 , v016
	.byte		N12   , Cs4 , v028
	.byte	W36
	.byte	W02
	.byte		N06   , Cs4 , v012
	.byte	W10
	.byte		        Cs4 , v020
	.byte	W12
	.byte		        Dn4 , v024
	.byte	W12
	.byte		        Cs4 , v020
	.byte	W12
	.byte		        Dn4 , v024
	.byte	W12
@ 019   ----------------------------------------
	.byte		N01   , Fs2 , v012
	.byte		N01   , Bn2 , v016
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N48   , Dn3 , v008
	.byte	W11
	.byte		N06   , Dn4 , v028
	.byte	W12
	.byte		        Cs4 , v012
	.byte	W12
	.byte		        Dn4 , v028
	.byte	W12
	.byte		        En4 , v024
	.byte	W11
	.byte		        Fs4 
	.byte	W13
	.byte		        En4 , v016
	.byte	W24
@ 020   ----------------------------------------
	.byte		N01   , Bn2 
	.byte		N06   , Dn4 , v020
	.byte	W01
	.byte		N01   , Gn2 , v008
	.byte		N48   , Dn3 
	.byte	W36
	.byte		N06   , Bn3 , v024
	.byte	W12
	.byte		        An3 , v020
	.byte	W11
	.byte		        Bn3 , v028
	.byte	W11
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W01
@ 021   ----------------------------------------
	.byte		N01   , En2 , v008
	.byte		N01   , Cs3 
	.byte	W01
	.byte		N36   , An2 , v016
	.byte	W10
	.byte		N06   , Bn3 , v028
	.byte	W11
	.byte		        An3 , v024
	.byte	W15
	.byte		        Bn3 , v028
	.byte	W11
	.byte		        Cs4 , v024
	.byte	W13
	.byte		        Dn4 , v020
	.byte	W11
	.byte		        Cs4 , v024
	.byte	W23
	.byte		N01   , Fs2 , v008
	.byte		N01   , Cs3 
	.byte		N06   , Cs4 , v036
	.byte	W01
@ 022   ----------------------------------------
	.byte		N30   , An2 , v020
	.byte	W36
	.byte	W01
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W11
	.byte		        Dn4 , v028
	.byte	W12
	.byte		        Cs4 , v020
	.byte	W12
	.byte		        Dn4 , v024
	.byte	W12
@ 023   ----------------------------------------
	.byte		N01   , Cs4 
	.byte	W01
	.byte		N90   , Fs2 , v008
	.byte		N11   , Bn2 , v016
	.byte		N01   , Dn3 , v008
	.byte	W11
	.byte		N06   , Bn3 , v028
	.byte	W36
	.byte	W01
	.byte		        Fs4 , v032
	.byte	W12
	.byte		        Fs4 , v028
	.byte	W11
	.byte		        En4 
	.byte	W23
	.byte		N01   , Dn2 , v016
	.byte		N01   , Gn2 , v012
	.byte		N01   , Dn3 , v016
	.byte	W01
@ 024   ----------------------------------------
	.byte		N92   , Bn2 , v012, gtp3
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		N06   , Bn3 , v024
	.byte	W36
	.byte		N12   , En4 , v028
	.byte	W12
	.byte		        Fs4 , v024
	.byte	W12
	.byte		N06   , En4 , v028
	.byte	W13
	.byte		N10   , Bn3 , v024
	.byte	W10
	.byte		N01   , An2 
	.byte	W01
@ 025   ----------------------------------------
	.byte		N23   , En2 , v004
	.byte		N01   , Cs3 , v012
	.byte		N01   , En3 , v004
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		        Bn3 , v024
	.byte	W11
	.byte		        Dn4 , v032
	.byte	W24
	.byte	W01
	.byte		        En4 , v028
	.byte	W11
	.byte		        Fs4 
	.byte	W13
	.byte		N23   , En4 , v024
	.byte	W24
@ 026   ----------------------------------------
	.byte		N11   , Fs2 , v016
	.byte		N12   , Dn4 , v028
	.byte	W11
	.byte		        Bn3 
	.byte	W60
	.byte	W01
	.byte		        Fs4 
	.byte	W12
	.byte		N11   , En4 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N01   , Gn2 , v012
	.byte		N48   , Fs3 , v024, gtp1
	.byte	W01
	.byte		N01   , Bn2 , v016
	.byte		N01   , Dn3 , v020
	.byte	W01
	.byte		N56   , Dn2 , v016, gtp2
	.byte	W44
	.byte	W03
	.byte		N12   , En4 , v020
	.byte	W11
	.byte		        Fs4 , v024
	.byte	W12
	.byte		N24   , En4 , v020
	.byte	W24
@ 028   ----------------------------------------
	.byte		N12   , Dn4 , v032
	.byte	W01
	.byte		N01   , Gn2 , v028
	.byte		N05   , Bn2 , v020
	.byte		N01   , Dn3 , v008
	.byte	W06
	.byte		N84   , Dn2 , v012
	.byte	W07
	.byte		N12   , Bn3 , v028
	.byte	W60
	.byte		N06   , An4 
	.byte	W21
	.byte		N02   , An2 , v016
	.byte	W01
@ 029   ----------------------------------------
	.byte		N01   , Cs3 , v012
	.byte		N01   , En3 
	.byte	W01
	.byte		N11   , En2 , v008
	.byte		N12   , An4 , v028
	.byte	W12
	.byte		        En4 , v020
	.byte	W10
	.byte		        Fs4 , v028
	.byte	W60
	.byte	W02
	.byte		N12   
	.byte	W10
	.byte		N01   , Fs2 , v024
	.byte	W01
@ 030   ----------------------------------------
	.byte		N12   , En4 , v028
	.byte	W24
	.byte		        En4 , v024
	.byte	W12
	.byte		N06   , Dn4 , v028
	.byte	W12
	.byte		N12   , En4 , v024
	.byte	W12
	.byte		N06   , Dn4 , v028
	.byte	W24
	.byte		N12   
	.byte	W09
	.byte		N02   , Fs3 , v004
	.byte	W03
@ 031   ----------------------------------------
	.byte		N96   , Dn3 , v016
	.byte		N06   , En4 , v024
	.byte	W13
	.byte		        Fs4 , v032
	.byte	W13
	.byte		N12   , En4 , v024
	.byte	W23
	.byte		        En4 , v020
	.byte	W12
	.byte		N06   , Dn4 , v024
	.byte	W12
	.byte		N12   , Dn4 , v032
	.byte	W23
@ 032   ----------------------------------------
	.byte	W01
	.byte		        Gn1 , v012
	.byte		N12   , Bn2 , v016
	.byte	W12
	.byte		N11   , Cs4 , v036
	.byte		N11   
	.byte	W11
	.byte		N12   , Dn4 , v032
	.byte	W01
	.byte		N11   , Dn4 , v036
	.byte	W12
	.byte		N32   , Bn4 , v040, gtp2
	.byte		N32   , Bn4 , v040, gtp2
	.byte	W32
	.byte	W02
	.byte		N18   , An4 , v028
	.byte	W02
	.byte		N16   , An4 , v036
	.byte	W23
@ 033   ----------------------------------------
	.byte	W01
	.byte		N12   , An1 , v020
	.byte		N11   , Cs3 , v016
	.byte	W11
	.byte		N12   , Cs4 , v028
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte		N12   , Dn4 , v032
	.byte	W01
	.byte		N11   , Dn4 , v028
	.byte	W12
	.byte		N32   , An4 , v028, gtp3
	.byte		N32   , An4 , v032, gtp3
	.byte	W32
	.byte	W03
	.byte		N11   , Gn4 , v028
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte		N06   , Fs4 
	.byte	W01
	.byte		N06   
	.byte	W11
@ 034   ----------------------------------------
	.byte		N01   , An4 
	.byte	W01
	.byte		N12   , Fs2 , v016
	.byte		N17   , Fs3 , v012
	.byte	W12
	.byte		N12   , Cs4 , v028
	.byte	W05
	.byte		N06   , Gn4 , v036
	.byte	W07
	.byte		N12   , Dn4 , v028
	.byte	W11
	.byte		        Fs4 , v036
	.byte	W01
	.byte		N36   , An4 , v028
	.byte	W24
	.byte		N12   , En4 , v032
	.byte	W12
	.byte		        Gn4 , v028
	.byte	W02
	.byte		N06   , Dn4 , v036
	.byte	W10
	.byte		        Fs4 , v028
	.byte	W11
@ 035   ----------------------------------------
	.byte	W01
	.byte		N01   , Gn2 , v024
	.byte		N12   , En4 , v028
	.byte		N11   
	.byte	W12
	.byte		        Fs4 , v032
	.byte	W05
	.byte		N06   , Fs4 , v028
	.byte	W07
	.byte		N12   , En4 , v032
	.byte	W06
	.byte		N60   , Dn4 , v028
	.byte	W08
	.byte		N12   , Fs4 
	.byte	W22
	.byte		N18   
	.byte	W32
	.byte	W03
@ 036   ----------------------------------------
	.byte	W01
	.byte		N12   , Bn3 , v024
	.byte	W12
	.byte		        Cs4 , v036
	.byte		N11   , Cs4 , v028
	.byte	W12
	.byte		N01   , Dn4 , v032
	.byte		N12   
	.byte	W12
	.byte		N36   , Bn4 , v028
	.byte		N32   , Bn4 , v028, gtp3
	.byte	W36
	.byte		N01   , An4 , v032
	.byte		N17   , An4 , v028
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N06   , Cs3 , v008
	.byte	W05
@ 037   ----------------------------------------
	.byte	W01
	.byte		N12   , An2 , v020
	.byte		N12   , An3 
	.byte	W12
	.byte		N01   , Cs3 , v036
	.byte		N12   , Cs4 , v032
	.byte		N11   
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N01   , Dn4 , v028
	.byte		N11   
	.byte	W12
	.byte		N01   , An3 , v032
	.byte		N32   , An4 , v028, gtp3
	.byte	W01
	.byte		        An4 , v028, gtp2
	.byte	W32
	.byte	W02
	.byte		N01   , Gn4 
	.byte	W01
	.byte		N10   , Gn3 , v036
	.byte		N12   , Gn4 , v028
	.byte	W11
	.byte		N01   , Fs4 
	.byte	W01
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v024
	.byte	W11
@ 038   ----------------------------------------
	.byte	W01
	.byte		        Fs2 , v016
	.byte		N06   , An4 , v032
	.byte	W12
	.byte		        Cs3 , v028
	.byte		N12   , Cs4 , v024
	.byte	W06
	.byte		N05   , Gn4 , v028
	.byte	W06
	.byte		N06   , Dn3 , v024
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		N01   , Gn3 , v020
	.byte		N36   , An4 , v028
	.byte	W01
	.byte		N12   , Fs4 
	.byte	W24
	.byte	W01
	.byte		N09   , En4 , v032
	.byte	W10
	.byte		N10   , Gn3 
	.byte		N12   , Gn4 , v028
	.byte	W10
	.byte		N01   , Dn4 
	.byte	W02
	.byte		N06   , Fs3 , v032
	.byte		N06   , Fs4 , v028
	.byte	W11
@ 039   ----------------------------------------
	.byte	W01
	.byte		N01   , Dn3 , v020
	.byte		N12   , En4 , v028
	.byte	W01
	.byte		N11   , En4 , v024
	.byte	W11
	.byte		N06   , Fs3 , v028
	.byte		N04   , Fs4 
	.byte	W05
	.byte		N07   
	.byte	W07
	.byte		N12   , En3 , v024
	.byte		N12   , En4 , v028
	.byte	W12
	.byte		N60   , Dn3 , v012
	.byte		N01   , Dn4 , v016
	.byte		N42   , Fs4 , v028
	.byte	W56
	.byte	W03
@ 040   ----------------------------------------
	.byte	W01
	.byte		N12   , Bn3 , v020
	.byte	W01
	.byte		N01   , Gn2 , v008
	.byte		N01   , Bn2 , v012
	.byte	W01
	.byte		        Gn1 
	.byte	W02
	.byte		N72   , Dn2 , v004
	.byte	W30
	.byte	W01
	.byte		N06   , Dn4 , v020
	.byte	W11
	.byte		        En4 , v028
	.byte	W12
	.byte		N12   , Fs4 , v024
	.byte	W13
	.byte		N06   , En4 
	.byte	W12
	.byte		        Dn4 , v020
	.byte	W11
	.byte		N01   , En4 , v024
	.byte	W01
@ 041   ----------------------------------------
	.byte		        Cs2 , v008
	.byte		N01   , An2 , v012
	.byte	W01
	.byte		N10   , An1 , v008
	.byte		N92   , En2 , v004
	.byte	W10
	.byte		N06   , Dn4 , v020
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W13
	.byte		        En4 
	.byte	W11
	.byte		        Fs4 , v016
	.byte	W15
	.byte		N12   , Dn4 , v024
	.byte	W20
	.byte		N03   , Fs2 , v008
	.byte		N84   , Cs3 , v004
	.byte	W02
@ 042   ----------------------------------------
	.byte	W01
	.byte		N12   , Cs4 , v020
	.byte	W32
	.byte	W02
	.byte		N06   , En4 , v024
	.byte	W12
	.byte		        En4 , v020
	.byte	W12
	.byte		        Fs4 
	.byte	W13
	.byte		        En4 
	.byte	W11
	.byte		        Dn4 , v028
	.byte	W08
	.byte		        Dn3 , v008
	.byte	W05
@ 043   ----------------------------------------
	.byte		        En4 , v024
	.byte	W02
	.byte		N03   , Dn2 , v004
	.byte	W03
	.byte		N90   , Bn2 , v004, gtp1
	.byte	W06
	.byte		N06   , Fs4 , v020
	.byte	W13
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W11
	.byte		        Fs4 , v024
	.byte	W13
	.byte		N12   , Dn4 , v028
	.byte	W24
@ 044   ----------------------------------------
	.byte		N01   , Bn2 , v012
	.byte	W01
	.byte		        Gn2 , v016
	.byte		N48   , Dn3 , v008
	.byte		N12   , Bn3 , v028
	.byte	W36
	.byte		N06   , Dn4 , v020
	.byte	W12
	.byte		        En4 
	.byte	W11
	.byte		        Fs4 
	.byte	W13
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W11
@ 045   ----------------------------------------
	.byte	W01
	.byte		N01   , An2 , v008
	.byte		N01   , En4 , v020
	.byte	W01
	.byte		N10   , En2 , v008
	.byte		N54   , Cs3 
	.byte	W10
	.byte		N06   , Fs4 , v016
	.byte	W13
	.byte		        En4 , v024
	.byte	W12
	.byte		        Dn4 , v020
	.byte	W12
	.byte		        En4 , v024
	.byte	W10
	.byte		        Fs4 , v020
	.byte	W13
	.byte		        Dn4 , v028
	.byte	W11
	.byte		        Cs4 , v020
	.byte	W12
	.byte		N01   , Fs2 , v004
	.byte		N01   , Cs3 , v008
	.byte		N06   , Cs4 , v020
	.byte	W01
@ 046   ----------------------------------------
	.byte		N48   , An2 , v008
	.byte	W32
	.byte	W03
	.byte		N06   , Dn4 , v016
	.byte	W14
	.byte		        En4 , v020
	.byte	W12
	.byte		        Fs4 
	.byte	W11
	.byte		        En4 , v024
	.byte	W12
	.byte		        Dn4 , v020
	.byte	W12
@ 047   ----------------------------------------
	.byte	W01
	.byte		N01   , En4 
	.byte	W01
	.byte		        Fs2 , v004
	.byte		N32   , Bn2 , v012, gtp1
	.byte	W02
	.byte		N08   , Dn3 , v008
	.byte	W09
	.byte		N06   , Fs4 , v020
	.byte	W12
	.byte		N12   , En4 , v024
	.byte	W11
	.byte		N06   , Dn4 , v016
	.byte	W11
	.byte		        En4 , v024
	.byte	W11
	.byte		        Dn4 , v020
	.byte	W14
	.byte		        En4 , v024
	.byte	W11
	.byte		        Dn4 
	.byte	W13
@ 048   ----------------------------------------
	.byte	W01
	.byte		N01   , Bn2 , v008
	.byte		N06   , Bn3 , v016
	.byte	W01
	.byte		N02   , Gn2 , v008
	.byte		N01   , Dn3 
	.byte	W03
	.byte		N06   , En4 , v028
	.byte	W32
	.byte	W01
	.byte		        Dn4 
	.byte	W10
	.byte		        En4 
	.byte	W13
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W11
	.byte		        Dn4 , v024
	.byte	W12
@ 049   ----------------------------------------
	.byte	W01
	.byte		N01   , An2 , v012
	.byte		N01   , Cs3 , v008
	.byte		N06   , En4 , v028
	.byte	W01
	.byte		N48   , En2 , v008
	.byte	W10
	.byte		N06   , En4 , v028
	.byte	W13
	.byte		N06   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 , v024
	.byte	W11
	.byte		        Fs4 , v028
	.byte	W12
	.byte		N12   , Dn4 , v032
	.byte	W24
@ 050   ----------------------------------------
	.byte		N01   , Cs3 , v004
	.byte	W01
	.byte		        Fs2 
	.byte		N42   , An2 , v016
	.byte		N12   , Cs4 , v028
	.byte	W32
	.byte	W03
	.byte		N06   , Dn4 
	.byte	W13
	.byte		        En4 , v024
	.byte	W12
	.byte		        Fs4 , v020
	.byte	W12
	.byte		        En4 , v028
	.byte	W13
	.byte		        Dn4 
	.byte	W10
@ 051   ----------------------------------------
	.byte	W01
	.byte		N01   , Fs2 , v012
	.byte		N01   , Bn2 , v016
	.byte		N06   , En4 , v028
	.byte	W01
	.byte		N48   , Dn3 , v008
	.byte	W11
	.byte		N06   , Fs4 , v024
	.byte	W11
	.byte		        En4 , v028
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W13
	.byte		N12   , Dn4 , v032
	.byte	W23
@ 052   ----------------------------------------
	.byte	W01
	.byte		N01   , Gn2 , v008
	.byte		N01   , Bn2 , v016
	.byte	W01
	.byte		N48   , Dn3 , v008
	.byte		N12   , Dn4 , v036
	.byte	W32
	.byte	W03
	.byte		N06   , Dn4 , v028
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W13
	.byte		        En4 
	.byte	W10
	.byte		        Dn4 , v024
	.byte	W12
@ 053   ----------------------------------------
	.byte	W01
	.byte		N01   , En2 , v008
	.byte		N36   , An2 , v016
	.byte		N06   , En4 , v028
	.byte	W32
	.byte	W03
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W13
	.byte		        Fs4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W22
	.byte		N30   , Cs3 , v008
	.byte	W01
@ 054   ----------------------------------------
	.byte		N01   , Fs2 
	.byte	W01
	.byte		        An2 , v020
	.byte		N12   , Cs4 , v028
	.byte	W36
	.byte	W02
	.byte		N06   , Dn4 , v024
	.byte	W10
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W11
	.byte		        En4 
	.byte	W13
	.byte		        En4 , v028
	.byte	W11
@ 055   ----------------------------------------
	.byte	W13
	.byte		        En4 , v032
	.byte	W36
	.byte		        Fs4 
	.byte	W12
	.byte		        Fs4 , v028
	.byte	W11
	.byte		        En4 
	.byte	W24
@ 056   ----------------------------------------
	.byte		N01   , Dn4 
	.byte	W01
	.byte		N90   , Dn2 , v016
	.byte		N11   , Dn3 
	.byte	W11
	.byte		N06   , Bn3 , v024
	.byte	W36
	.byte		N12   , En4 , v028
	.byte	W12
	.byte		        Fs4 , v024
	.byte	W12
	.byte		N06   , En4 , v028
	.byte	W13
	.byte		N12   , Bn3 , v024
	.byte	W11
@ 057   ----------------------------------------
	.byte	W01
	.byte		N22   , En2 , v004
	.byte		N11   , En3 
	.byte		N01   , Dn4 , v028
	.byte	W12
	.byte		N12   , Bn3 , v024
	.byte	W11
	.byte		        Dn4 , v032
	.byte	W24
	.byte		        En4 , v028
	.byte	W11
	.byte		        Fs4 
	.byte	W14
	.byte		N24   , En4 , v024
	.byte	W23
@ 058   ----------------------------------------
	.byte		N12   , Dn4 , v028
	.byte	W01
	.byte		N09   , Fs2 , v016
	.byte	W10
	.byte		N12   , Bn3 , v028
	.byte	W60
	.byte	W02
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W11
@ 059   ----------------------------------------
	.byte	W01
	.byte		N48   , Dn2 , v016
	.byte		N56   , Fs3 , v024, gtp3
	.byte	W48
	.byte		N12   , En4 , v020
	.byte	W12
	.byte		        Fs4 , v024
	.byte	W11
	.byte		N24   , En4 , v020
	.byte	W24
@ 060   ----------------------------------------
	.byte		N01   , Dn4 , v032
	.byte	W01
	.byte		N06   , Gn2 , v028
	.byte		N13   , Dn3 , v008
	.byte	W06
	.byte		N84   , Dn2 , v012
	.byte	W08
	.byte		N06   , Bn3 , v028
	.byte	W56
	.byte	W03
	.byte		        An4 
	.byte	W22
@ 061   ----------------------------------------
	.byte	W01
	.byte		N11   , En2 , v008
	.byte		N12   , An4 , v028
	.byte	W12
	.byte		        En4 , v020
	.byte	W10
	.byte		        Fs4 , v028
	.byte	W60
	.byte	W02
	.byte		N12   
	.byte	W11
@ 062   ----------------------------------------
	.byte		        En4 
	.byte	W01
	.byte		N90   , Fs2 , v024
	.byte	W23
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Dn4 , v028
	.byte	W12
	.byte		N12   , En4 , v024
	.byte	W13
	.byte		N06   , Dn4 , v028
	.byte	W23
	.byte		N12   
	.byte	W07
	.byte		N06   , Fs3 , v004
	.byte	W05
@ 063   ----------------------------------------
	.byte		        En4 , v024
	.byte	W01
	.byte		N96   , Dn3 , v016
	.byte	W12
	.byte		N06   , Fs4 , v032
	.byte	W13
	.byte		N12   , En4 , v024
	.byte	W23
	.byte		        En4 , v020
	.byte	W12
	.byte		N06   , Dn4 , v024
	.byte	W12
	.byte		N12   , Dn4 , v032
	.byte	W23
@ 064   ----------------------------------------
	.byte	W01
	.byte		        Gn1 , v012
	.byte		N12   , Bn2 , v016
	.byte	W12
	.byte		N11   , Cs4 , v036
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte		N12   , Dn4 , v032
	.byte		N11   , Dn4 , v036
	.byte	W12
	.byte		N36   , Bn4 , v040
	.byte	W32
	.byte	W02
	.byte		N18   , An4 , v028
	.byte	W03
	.byte		N15   , An4 , v036
	.byte	W22
@ 065   ----------------------------------------
	.byte	W02
	.byte		N12   , An1 , v020
	.byte		N11   , Cs3 , v016
	.byte	W11
	.byte		        Cs4 , v028
	.byte	W01
	.byte		N10   
	.byte	W10
	.byte		N12   , Dn4 , v032
	.byte	W02
	.byte		N10   , Dn4 , v028
	.byte	W11
	.byte		N32   , An4 , v032, gtp3
	.byte	W01
	.byte		        An4 , v028, gtp3
	.byte	W32
	.byte	W03
	.byte		N12   , Gn4 
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte		N07   , Fs4 
	.byte	W01
	.byte		N06   
	.byte	W10
@ 066   ----------------------------------------
	.byte		N01   , An4 
	.byte	W02
	.byte		N12   , Fs2 , v016
	.byte		N17   , Fs3 , v012
	.byte	W12
	.byte		N12   , Cs4 , v028
	.byte	W05
	.byte		N06   , Gn4 , v036
	.byte	W07
	.byte		N12   , Dn4 , v028
	.byte	W10
	.byte		        Fs4 , v036
	.byte	W02
	.byte		N36   , An4 , v028
	.byte	W23
	.byte		N12   , En4 , v032
	.byte	W13
	.byte		        Gn4 , v028
	.byte	W02
	.byte		N06   , Dn4 , v036
	.byte	W10
	.byte		        Fs4 , v028
	.byte	W10
@ 067   ----------------------------------------
	.byte	W02
	.byte		N17   , Gn2 , v024
	.byte		N12   , En4 , v028
	.byte	W12
	.byte		N11   , Fs4 , v032
	.byte	W05
	.byte		N06   , Fs4 , v028
	.byte	W07
	.byte		N12   , En4 , v032
	.byte	W06
	.byte		N60   , Dn4 , v028
	.byte	W07
	.byte		N12   , Fs4 
	.byte	W23
	.byte		N18   
	.byte	W32
	.byte	W02
@ 068   ----------------------------------------
	.byte	W02
	.byte		N24   , Bn3 , v024
	.byte	W12
	.byte		N01   , Cs4 , v036
	.byte		N12   , Cs4 , v028
	.byte	W12
	.byte		        Dn4 , v032
	.byte	W12
	.byte		N36   , Bn4 , v028
	.byte	W36
	.byte		N18   , An4 , v032
	.byte	W12
	.byte		N05   , An4 , v028
	.byte	W06
	.byte		N06   , Cs3 , v008
	.byte	W04
@ 069   ----------------------------------------
	.byte	W02
	.byte		N12   , An2 , v020
	.byte		N11   , An3 
	.byte	W11
	.byte		N01   , Cs4 , v032
	.byte	W01
	.byte		N12   , Cs3 , v036
	.byte		N12   , Cs4 , v032
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		N01   , An3 , v032
	.byte		N32   , An4 , v028, gtp3
	.byte		N32   , An4 , v028, gtp2
	.byte	W32
	.byte	W03
	.byte		N01   , Gn4 
	.byte	W01
	.byte		N10   , Gn3 , v036
	.byte		N12   , Gn4 , v028
	.byte	W10
	.byte		N02   , Fs4 
	.byte	W02
	.byte		N11   , Fs3 
	.byte		N12   , Fs4 , v024
	.byte	W10
@ 070   ----------------------------------------
	.byte	W01
	.byte		N01   , An4 , v032
	.byte	W01
	.byte		N12   , Fs2 , v016
	.byte		N12   , An3 
	.byte	W12
	.byte		N05   , Cs3 , v028
	.byte		N12   , Cs4 , v024
	.byte	W05
	.byte		N06   , Gn4 , v028
	.byte	W07
	.byte		        Dn3 , v024
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		N01   , Gn3 , v020
	.byte		N12   , Fs4 , v028
	.byte		N36   , An4 
	.byte	W24
	.byte	W01
	.byte		N10   , En4 , v032
	.byte	W11
	.byte		N09   , Gn3 
	.byte		N12   , Gn4 , v028
	.byte	W10
	.byte		N02   , Dn4 
	.byte	W02
	.byte		N06   , Fs3 , v032
	.byte		N06   , Fs4 , v028
	.byte	W10
@ 071   ----------------------------------------
	.byte	W02
	.byte		N12   , Dn3 , v020
	.byte		N12   , En4 , v028
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N04   , Fs4 
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N12   , En3 , v024
	.byte		N12   , En4 , v028
	.byte	W12
	.byte		N60   , Dn3 , v012
	.byte		N42   , Fs4 , v028
	.byte	W56
	.byte	W02
@ 072   ----------------------------------------
	.byte	W02
	.byte		N12   , Gn1 , v012
	.byte		N12   , Bn2 , v016
	.byte	W12
	.byte		        Cs4 , v036
	.byte		N11   , Cs4 , v032
	.byte	W12
	.byte		N12   , Dn4 , v036
	.byte	W01
	.byte		N11   , Dn4 , v032
	.byte	W11
	.byte		N01   , Bn4 , v040
	.byte		N36   , Bn4 , v036
	.byte	W32
	.byte	W03
	.byte		N01   , An4 , v032
	.byte	W01
	.byte		N18   , An4 , v036
	.byte	W12
	.byte		N06   , An4 , v032
	.byte	W10
@ 073   ----------------------------------------
	.byte	W02
	.byte		N12   , An1 , v020
	.byte		N11   , Cs3 , v016
	.byte	W11
	.byte		N12   , Cs4 , v028
	.byte	W01
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn4 
	.byte		N11   
	.byte	W12
	.byte		N36   , An4 , v032
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W11
	.byte		N06   , Fs4 , v028
	.byte	W01
	.byte		N05   
	.byte	W10
@ 074   ----------------------------------------
	.byte	W01
	.byte		N01   , An4 , v032
	.byte	W01
	.byte		N12   , Fs2 , v016
	.byte		N16   , Fs3 , v012
	.byte	W12
	.byte		N12   , Cs4 , v028
	.byte	W04
	.byte		N18   , Gn4 , v024
	.byte	W08
	.byte		N08   , Dn4 , v028
	.byte	W08
	.byte		N12   , Fs4 
	.byte	W04
	.byte		N30   , An4 
	.byte	W14
	.byte		N18   , Fs4 
	.byte	W16
	.byte		N15   , En4 
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W09
	.byte		N14   , Dn4 
	.byte	W03
	.byte		N06   , Fs4 
	.byte	W10
@ 075   ----------------------------------------
	.byte	W02
	.byte		N03   , Gn2 , v024
	.byte		N12   , En4 , v028
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte		N12   , Fs4 , v032
	.byte	W09
	.byte		N02   , Fs4 , v028
	.byte	W03
	.byte		N06   , En4 , v032
	.byte	W06
	.byte		N60   , Dn4 , v028
	.byte	W10
	.byte		        Fs4 
	.byte	W54
@ 076   ----------------------------------------
	.byte	W02
	.byte		N12   , Bn3 , v024
	.byte	W10
	.byte		        Cs4 , v032
	.byte	W02
	.byte		N10   , Cs4 , v036
	.byte	W12
	.byte		N12   , Dn4 , v028
	.byte		N11   , Dn4 , v032
	.byte	W12
	.byte		N32   , Bn4 , v028, gtp3
	.byte	W01
	.byte		        Bn4 , v036, gtp2
	.byte	W32
	.byte	W02
	.byte		N12   , An4 , v028
	.byte	W01
	.byte		N11   , An4 , v032
	.byte	W13
	.byte		N04   , An4 , v036
	.byte	W05
	.byte		N06   , Cs3 , v008
	.byte	W04
@ 077   ----------------------------------------
	.byte	W02
	.byte		N12   , An2 , v020
	.byte		N12   , An3 
	.byte	W12
	.byte		N01   , Cs3 , v036
	.byte		N07   , Cs4 , v032
	.byte	W02
	.byte		N06   , Cs4 , v024
	.byte	W10
	.byte		        Dn3 , v032
	.byte		N01   , Dn4 , v028
	.byte	W01
	.byte		N10   , Dn4 , v032
	.byte	W11
	.byte		N01   , An3 
	.byte		N36   , An4 , v028
	.byte	W01
	.byte		N32   , An4 , v028, gtp3
	.byte	W32
	.byte	W03
	.byte		N01   , Gn3 , v036
	.byte		N12   , Gn4 , v028
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte		        Fs3 
	.byte		N12   , Fs4 , v024
	.byte	W10
@ 078   ----------------------------------------
	.byte	W02
	.byte		        Fs2 , v016
	.byte		N12   , An3 
	.byte		N01   , An4 , v032
	.byte	W12
	.byte		N06   , Cs3 , v028
	.byte		N12   , Cs4 , v024
	.byte	W07
	.byte		N05   , Gn4 , v032
	.byte	W05
	.byte		N06   , Dn3 , v024
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		N24   , Gn3 , v020, gtp2
	.byte		N36   , An4 , v028
	.byte	W24
	.byte	W03
	.byte		N09   , En4 
	.byte	W09
	.byte		N12   , Gn3 , v032
	.byte		N12   , Gn4 , v028
	.byte	W12
	.byte		N06   , Fs3 , v032
	.byte		N06   , Fs4 , v028
	.byte	W10
@ 079   ----------------------------------------
	.byte	W02
	.byte		N12   , Gn2 , v020
	.byte		N12   , En4 , v028
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N01   , Fs4 
	.byte	W01
	.byte		N10   , En4 
	.byte	W11
	.byte		N12   , En3 , v024
	.byte		N07   , En4 , v028
	.byte	W07
	.byte		N04   , Fs4 
	.byte	W05
	.byte		N60   , Dn3 , v012
	.byte		N13   , Dn4 , v016
	.byte	W13
	.byte		N24   , Fs4 , v032
	.byte	W44
	.byte	W01
@ 080   ----------------------------------------
	.byte	W60
	.byte	W03
	.byte		N06   , Bn3 , v040
	.byte	W12
	.byte		N06   
	.byte	W19
	.byte		        Dn4 
	.byte	W02
@ 081   ----------------------------------------
	.byte	W04
	.byte		        Dn4 , v036
	.byte	W56
	.byte	W03
	.byte		        Bn3 , v040
	.byte	W12
	.byte		N06   
	.byte	W21
@ 082   ----------------------------------------
	.byte	W03
	.byte		        Cs4 , v036
	.byte	W60
	.byte	W01
	.byte		        Cs4 , v032
	.byte	W12
	.byte		N06   
	.byte	W11
	.byte		        Bn3 
	.byte	W07
	.byte		        Dn4 
	.byte	W02
@ 083   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		        En4 , v028
	.byte	W12
	.byte		        En4 , v032
	.byte	W12
	.byte		        Dn4 , v028
	.byte	W07
	.byte		N18   , En4 
	.byte	W04
@ 084   ----------------------------------------
	.byte	W15
	.byte		N12   , Fs4 
	.byte	W56
	.byte	W03
	.byte		        Bn3 , v032
	.byte	W22
@ 085   ----------------------------------------
	.byte	W02
	.byte		        Cs4 , v036
	.byte	W72
	.byte		        Cs4 , v024
	.byte	W11
	.byte		N06   , Bn3 , v028
	.byte	W11
@ 086   ----------------------------------------
	.byte	W01
	.byte		N12   , Dn4 , v032
	.byte	W60
	.byte	W01
	.byte		        Bn3 , v028
	.byte	W12
	.byte		        Cs4 
	.byte	W11
	.byte		N06   , Bn3 
	.byte	W07
	.byte		        Dn4 , v036
	.byte	W04
@ 087   ----------------------------------------
	.byte	W60
	.byte	W03
	.byte		        En4 , v024
	.byte	W12
	.byte		        En4 , v028
	.byte	W12
	.byte		        Dn4 
	.byte	W05
	.byte		N18   , En4 
	.byte	W04
@ 088   ----------------------------------------
	.byte	W15
	.byte		N12   , Fs4 
	.byte	W56
	.byte	W02
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W11
@ 089   ----------------------------------------
	.byte	W02
	.byte		N06   , Cs4 
	.byte	W60
	.byte	W01
	.byte		        Cs4 , v020
	.byte	W11
	.byte		        Cs4 , v028
	.byte	W11
	.byte		        Bn3 
	.byte	W07
	.byte		N12   , Dn4 , v032
	.byte	W04
@ 090   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		N06   , Dn4 , v028
	.byte	W13
	.byte		        Bn3 , v024
	.byte	W05
	.byte		        Cs4 
	.byte	W05
@ 091   ----------------------------------------
	.byte		N12   , Dn4 , v028
	.byte	W60
	.byte	W03
	.byte		N06   , En4 
	.byte	W12
	.byte		        En4 , v036
	.byte	W12
	.byte		        Dn4 
	.byte	W06
	.byte		N18   , En4 , v028
	.byte	W03
@ 092   ----------------------------------------
	.byte	W15
	.byte		N12   , Fs4 , v024
	.byte	W10
	.byte		N06   , Dn4 , v028
	.byte	W13
	.byte		        Dn4 , v032
	.byte	W12
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		N18   
	.byte	W13
	.byte		N06   , Dn4 , v032
	.byte	W11
	.byte		        Cs4 , v036
	.byte	W06
	.byte		        En4 , v032
	.byte	W04
@ 093   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		        En4 , v016
	.byte	W12
	.byte		        En4 , v020
	.byte	W11
	.byte		        En4 , v024
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En4 , v020
	.byte	W13
	.byte		N02   , Dn4 , v028
	.byte	W02
	.byte		N76   , En4 , v008
	.byte	W04
	.byte		N06   , Cs4 , v036
	.byte	W04
@ 094   ----------------------------------------
	.byte	W60
	.byte	W03
	.byte		        En4 , v024
	.byte	W12
	.byte		        En4 , v028
	.byte	W11
	.byte		        Dn4 
	.byte	W07
	.byte		N18   , En4 , v032
	.byte	W03
@ 095   ----------------------------------------
	.byte	W15
	.byte		N06   , Fs4 
	.byte	W60
	.byte	W01
	.byte		        En4 , v024
	.byte	W11
	.byte		N11   , Dn4 , v028
	.byte	W09
@ 096   ----------------------------------------
	.byte	W02
	.byte		N40   , En2 , v016
	.byte		N28   , Gn3 , v012, gtp1
	.byte	W28
	.byte	W01
	.byte		N12   , Bn3 , v036
	.byte	W11
	.byte		N22   , Dn4 , v028
	.byte	W12
	.byte		N36   , En4 , v028, gtp1
	.byte	W10
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N15   , En4 
	.byte	W16
	.byte		N07   , Fs2 , v020
	.byte		N19   , Fs3 , v008
	.byte	W04
@ 097   ----------------------------------------
	.byte	W03
	.byte		N92   , Dn4 , v028, gtp3
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W80
	.byte	W01
@ 098   ----------------------------------------
	.byte	W02
	.byte		N48   , Bn1 , v020, gtp1
	.byte		N24   , Bn2 , v008
	.byte	W24
	.byte		N12   , Bn3 , v028
	.byte	W13
	.byte		N23   , Dn4 , v032
	.byte	W12
	.byte		        En4 , v028
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W11
	.byte		N23   , En4 
	.byte	W22
@ 099   ----------------------------------------
	.byte	W02
	.byte		N96   , Cs2 , v016
	.byte		N01   , En3 , v012
	.byte		N12   , Dn4 , v028
	.byte	W13
	.byte		        Bn3 , v020
	.byte	W80
	.byte	W01
@ 100   ----------------------------------------
	.byte	W02
	.byte		N24   , En2 , v024, gtp1
	.byte		N56   , Gn3 , v008, gtp3
	.byte	W24
	.byte	W01
	.byte		N06   , Bn3 , v028
	.byte	W11
	.byte		        Bn3 , v024
	.byte	W12
	.byte		N40   , En4 , v028, gtp1
	.byte	W12
	.byte		N06   , Fs4 , v024
	.byte	W13
	.byte		N17   , En4 
	.byte	W17
	.byte		N06   , Fs3 , v012
	.byte	W04
@ 101   ----------------------------------------
	.byte	W02
	.byte		N96   , Fs2 , v020
	.byte		N14   , Dn3 , v008
	.byte	W14
	.byte		N06   , Bn3 , v024
	.byte	W80
@ 102   ----------------------------------------
	.byte	W02
	.byte		N24   , Gn2 , v024, gtp1
	.byte		N48   , Gn3 , v016
	.byte	W24
	.byte	W01
	.byte		N06   , Bn3 , v028
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
	.byte		N30   , En4 
	.byte	W12
	.byte		N06   , Fs4 , v032
	.byte	W12
	.byte		        En4 
	.byte	W13
	.byte		        Bn3 
	.byte	W08
@ 103   ----------------------------------------
	.byte	W02
	.byte		N48   , An1 , v016, gtp1
	.byte		N01   , En3 
	.byte	W01
	.byte		N60   , Dn4 , v032
	.byte	W48
	.byte		N23   , En4 , v028
	.byte	W12
	.byte		N12   , Fs4 , v032
	.byte	W11
	.byte		N24   , En4 , v028
	.byte	W11
	.byte		N12   , Dn4 
	.byte	W11
@ 104   ----------------------------------------
	.byte	W02
	.byte		N01   , Dn2 , v016
	.byte		N60   , Dn3 
	.byte		N48   , Dn4 , v032
	.byte	W48
	.byte		N23   , En4 , v028
	.byte	W12
	.byte		N12   , Fs4 , v032
	.byte	W12
	.byte		N24   , En4 , v028
	.byte	W11
	.byte		N12   , Dn4 
	.byte	W11
@ 105   ----------------------------------------
	.byte	W02
	.byte		N01   , En2 , v004
	.byte		N12   , En3 
	.byte		N36   , Dn4 , v036, gtp1
	.byte	W13
	.byte		N06   , Bn3 
	.byte	W13
	.byte		N12   , Dn4 , v032
	.byte	W13
	.byte		N06   , Bn3 , v028
	.byte	W09
	.byte		N32   , En4 , v028, gtp3
	.byte	W12
	.byte		N06   , Fs4 , v036
	.byte	W13
	.byte		N10   , En4 , v032
	.byte	W10
	.byte		N24   , Dn4 , v028, gtp1
	.byte	W11
@ 106   ----------------------------------------
	.byte	W02
	.byte		N02   , Fs2 , v016
	.byte	W02
	.byte		N11   , Dn4 , v040
	.byte	W11
	.byte		N06   , Bn3 , v032
	.byte	W56
	.byte	W03
	.byte		N12   , Fs4 , v036
	.byte	W11
	.byte		        En4 , v028
	.byte	W11
@ 107   ----------------------------------------
	.byte	W02
	.byte		N44   , Gn2 , v012, gtp3
	.byte		N06   , Fs3 , v024
	.byte	W06
	.byte		N52   , Dn2 , v016, gtp1
	.byte	W42
	.byte		N36   , En4 , v032
	.byte	W11
	.byte		N06   , Fs4 , v024
	.byte	W13
	.byte		N12   , En4 , v032
	.byte	W22
@ 108   ----------------------------------------
	.byte	W02
	.byte		N06   , Gn2 , v028
	.byte		N84   , Dn4 , v028, gtp1
	.byte	W06
	.byte		N06   , Dn2 , v012
	.byte	W06
	.byte		        Bn3 , v028
	.byte	W60
	.byte	W02
	.byte		N12   , An4 
	.byte	W11
	.byte		N06   , Fs4 
	.byte	W09
@ 109   ----------------------------------------
	.byte	W02
	.byte		N13   , En2 , v008
	.byte		N02   , En3 , v012
	.byte	W02
	.byte		N12   , An4 , v028
	.byte	W12
	.byte		N68   , En4 , v028, gtp2
	.byte	W08
	.byte		N18   , Fs4 , v032
	.byte	W48
	.byte	W02
	.byte		N11   , En4 , v028
	.byte	W12
	.byte		N13   , Dn4 , v036
	.byte	W10
@ 110   ----------------------------------------
	.byte	W02
	.byte		N36   , Fs2 , v024
	.byte	W01
	.byte		N23   , En4 , v036
	.byte	W24
	.byte		N32   , En4 , v036, gtp2
	.byte	W11
	.byte		N12   , Dn4 , v032
	.byte	W12
	.byte		        En4 , v028
	.byte	W12
	.byte		N32   , Dn4 
	.byte	W24
	.byte	W02
	.byte		N06   
	.byte	W08
@ 111   ----------------------------------------
	.byte	W02
	.byte		N13   , Dn3 , v016
	.byte		N01   , Fs3 , v004
	.byte	W01
	.byte		N28   , En4 , v032, gtp1
	.byte	W12
	.byte		N06   , Fs4 , v040
	.byte	W12
	.byte		        En4 
	.byte	W13
	.byte		N24   , Dn4 , v036
	.byte	W24
	.byte		N32   , Dn4 , v036, gtp2
	.byte	W10
	.byte		N12   , Bn3 , v032
	.byte	W22
@ 112   ----------------------------------------
	.byte	W02
	.byte		N24   , Gn1 , v012, gtp1
	.byte		N12   , Bn2 , v016
	.byte	W12
	.byte		        Cs4 , v036
	.byte	W12
	.byte		        Dn4 
	.byte	W01
	.byte		N10   , Dn4 , v032
	.byte	W11
	.byte		N32   , Bn4 , v040, gtp2
	.byte	W01
	.byte		        Bn4 , v032
	.byte	W32
	.byte	W01
	.byte		N20   , An4 
	.byte	W02
	.byte		N18   , An4 , v036
	.byte	W22
@ 113   ----------------------------------------
	.byte	W02
	.byte		N12   , An1 , v020
	.byte		N11   , Cs3 , v016
	.byte	W12
	.byte		        Cs4 , v032
	.byte		N10   , Cs4 , v028
	.byte	W11
	.byte		N13   , Dn4 
	.byte	W01
	.byte		N12   
	.byte	W12
	.byte		N36   , An4 , v032
	.byte	W36
	.byte		N11   , Gn4 
	.byte		N11   , Gn4 , v028
	.byte	W11
	.byte		N07   , Fs4 , v032
	.byte	W01
	.byte		N06   , Fs4 , v028
	.byte	W10
@ 114   ----------------------------------------
	.byte	W02
	.byte		N01   , Fs2 , v016
	.byte		N18   , Fs3 , v012
	.byte		N06   , An4 , v040
	.byte	W12
	.byte		N12   , Cs4 , v028
	.byte	W06
	.byte		N06   , Gn4 , v036
	.byte	W06
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		N06   , Fs4 , v040
	.byte		N36   , An4 , v028
	.byte	W24
	.byte	W01
	.byte		N20   , En4 , v036
	.byte	W11
	.byte		N12   , Gn4 , v028
	.byte	W09
	.byte		N14   , Dn4 , v032
	.byte	W03
	.byte		N06   , Fs4 , v028
	.byte	W10
@ 115   ----------------------------------------
	.byte	W02
	.byte		N02   , Gn2 , v024
	.byte		N03   , En4 , v028
	.byte	W02
	.byte		N01   , En4 , v012
	.byte	W01
	.byte		N16   , Dn4 , v020
	.byte	W09
	.byte		N12   , Fs4 , v032
	.byte	W07
	.byte		N05   
	.byte	W05
	.byte		N84   , En4 , v032, gtp1
	.byte	W06
	.byte		N09   , Dn4 , v028
	.byte	W09
	.byte		N18   , Fs4 , v036
	.byte	W54
	.byte	W01
@ 116   ----------------------------------------
	.byte	W02
	.byte		N12   , Bn3 , v024
	.byte	W12
	.byte		        Cs4 , v036
	.byte	W01
	.byte		N10   
	.byte	W11
	.byte		N01   , Dn4 , v032
	.byte	W01
	.byte		N12   , Dn4 , v028
	.byte	W11
	.byte		N36   , Bn4 
	.byte	W01
	.byte		N32   , Bn4 , v032, gtp3
	.byte	W32
	.byte	W03
	.byte		N13   , An4 
	.byte	W01
	.byte		N12   , An4 , v036
	.byte	W17
	.byte		N06   , Cs3 , v008
	.byte	W04
@ 117   ----------------------------------------
	.byte	W02
	.byte		N12   , An2 , v020
	.byte		N12   , An3 
	.byte	W12
	.byte		N01   , Cs3 , v036
	.byte		N12   , Cs4 , v032
	.byte	W02
	.byte		N10   
	.byte	W10
	.byte		N06   , Dn3 
	.byte		N02   , Dn4 , v028
	.byte	W02
	.byte		N10   , Dn4 , v032
	.byte	W10
	.byte		N01   , An3 
	.byte		N36   , An4 , v028
	.byte		N32   , An4 , v028, gtp3
	.byte	W36
	.byte		N02   , Gn3 , v036
	.byte		N12   , Gn4 , v028
	.byte	W02
	.byte		N09   
	.byte	W10
	.byte		N01   , Fs3 
	.byte		N06   , Fs4 , v024
	.byte		N06   , Fs4 , v032
	.byte	W10
@ 118   ----------------------------------------
	.byte	W02
	.byte		N12   , Fs2 , v016
	.byte		N12   , An3 
	.byte		N01   , An4 , v028
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N12   , Cs4 , v024
	.byte	W07
	.byte		N05   , Gn4 , v036
	.byte	W05
	.byte		N06   , Dn3 , v024
	.byte		N12   , Dn4 , v028
	.byte	W11
	.byte		N01   , Fs4 , v036
	.byte	W01
	.byte		N24   , Gn3 , v020, gtp1
	.byte		N36   , An4 , v028
	.byte	W24
	.byte	W01
	.byte		N11   , En4 , v032
	.byte	W11
	.byte		N03   , Gn3 
	.byte		N12   , Gn4 , v028
	.byte	W03
	.byte		N08   , Dn4 , v036
	.byte	W09
	.byte		N06   , Fs3 , v032
	.byte		N06   , Fs4 , v028
	.byte	W10
@ 119   ----------------------------------------
	.byte	W01
	.byte		N01   , En4 , v036
	.byte	W01
	.byte		N12   , Dn3 , v020
	.byte		N12   , En4 , v028
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N04   , Fs4 
	.byte	W04
	.byte		N07   , Fs4 , v032
	.byte	W08
	.byte		N12   , En3 , v024
	.byte		N12   , En4 , v028
	.byte	W12
	.byte		N60   , Dn3 , v012
	.byte		N02   , Dn4 , v016
	.byte	W02
	.byte		N48   , Fs4 , v032
	.byte	W56
@ 120   ----------------------------------------
	.byte	W02
	.byte		N13   , Gn1 , v012
	.byte		N12   , Bn2 , v016
	.byte	W12
	.byte		        Cs4 , v036
	.byte	W01
	.byte		N10   , Cs4 , v044
	.byte	W11
	.byte		N12   , Dn4 , v036
	.byte	W01
	.byte		N10   
	.byte	W11
	.byte		N36   , Bn4 , v040
	.byte	W01
	.byte		N32   , Bn4 , v040, gtp2
	.byte	W32
	.byte	W03
	.byte		N18   , An4 , v036
	.byte	W22
@ 121   ----------------------------------------
	.byte	W02
	.byte		N22   , An1 , v020
	.byte		N12   , Cs3 , v016
	.byte	W12
	.byte		        Cs4 , v040
	.byte	W10
	.byte		N13   , Dn4 , v028
	.byte	W02
	.byte		N11   
	.byte	W12
	.byte		N36   , An4 , v032
	.byte		N32   , An4 , v028, gtp3
	.byte	W36
	.byte		N11   , Gn4 
	.byte	W01
	.byte		N10   , Gn4 , v032
	.byte	W10
	.byte		N06   , Fs4 , v036
	.byte	W01
	.byte		N05   , Fs4 , v028
	.byte	W10
@ 122   ----------------------------------------
	.byte	W01
	.byte		N01   , An4 
	.byte	W01
	.byte		N12   , Fs2 , v016
	.byte		N17   , Fs3 , v012
	.byte	W12
	.byte		N12   , Cs4 , v028
	.byte	W06
	.byte		        Gn4 , v036
	.byte	W06
	.byte		N13   , Dn4 , v028
	.byte	W12
	.byte		N36   , An4 
	.byte	W01
	.byte		N18   , Fs4 , v036
	.byte	W24
	.byte	W01
	.byte		N17   , En4 , v032
	.byte	W10
	.byte		N12   , Gn4 , v028
	.byte	W08
	.byte		N16   , Dn4 , v032
	.byte	W04
	.byte		N06   , Fs4 , v028
	.byte	W10
@ 123   ----------------------------------------
	.byte	W02
	.byte		N01   , Gn2 , v024
	.byte		N12   , En4 , v028
	.byte	W01
	.byte		N10   , En4 , v032
	.byte	W11
	.byte		N12   , Fs4 
	.byte	W08
	.byte		N04   , Fs4 , v036
	.byte	W04
	.byte		N48   , En4 , v032, gtp3
	.byte	W06
	.byte		N09   , Dn4 , v028
	.byte	W10
	.byte		N24   , Fs4 , v036
	.byte	W24
	.byte	W01
	.byte		N12   , Fs4 , v040
	.byte	W11
	.byte		N32   , En4 , v036
	.byte	W18
@ 124   ----------------------------------------
	.byte	W02
	.byte		N12   , Bn3 , v024
	.byte	W12
	.byte		N06   , Cs4 , v036
	.byte		N06   
	.byte	W12
	.byte		N12   , Dn4 , v028
	.byte		N12   , Dn4 , v032
	.byte	W12
	.byte		N36   , Bn4 , v028
	.byte	W01
	.byte		N32   , Bn4 , v036, gtp3
	.byte	W32
	.byte	W03
	.byte		N18   , An4 , v032
	.byte	W01
	.byte		N16   
	.byte	W17
	.byte		N06   , Cs3 , v008
	.byte	W04
@ 125   ----------------------------------------
	.byte	W02
	.byte		N12   , An2 , v020
	.byte		N12   , An3 
	.byte	W12
	.byte		N02   , Cs3 , v036
	.byte		N08   , Cs4 , v032
	.byte	W02
	.byte		N06   , Cs4 , v028
	.byte	W10
	.byte		        Dn3 , v032
	.byte		N01   , Dn4 , v028
	.byte	W01
	.byte		N10   
	.byte	W11
	.byte		N01   , An3 , v032
	.byte		N36   , An4 , v028
	.byte	W01
	.byte		N32   , An4 , v036, gtp3
	.byte	W32
	.byte	W03
	.byte		N01   , Gn3 
	.byte		N11   , Gn4 , v028
	.byte	W02
	.byte		N10   
	.byte	W10
	.byte		N11   , Fs3 
	.byte		N12   , Fs4 , v024
	.byte	W10
@ 126   ----------------------------------------
	.byte	W02
	.byte		        Fs2 , v016
	.byte		N12   , An3 
	.byte		N01   , An4 , v032
	.byte	W12
	.byte		N05   , Cs3 , v028
	.byte		N12   , Cs4 , v024
	.byte	W06
	.byte		N06   , Gn4 , v032
	.byte	W06
	.byte		        Dn3 , v024
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		N01   , Gn3 , v020
	.byte		N32   , An4 , v028, gtp3
	.byte	W01
	.byte		N24   , Fs4 
	.byte	W24
	.byte	W01
	.byte		N09   , En4 , v024
	.byte	W10
	.byte		N11   , Gn3 , v032
	.byte		N12   , Gn4 , v028
	.byte	W11
	.byte		N01   , Dn4 
	.byte	W01
	.byte		N06   , Fs3 , v032
	.byte		N06   , Fs4 , v028
	.byte	W10
@ 127   ----------------------------------------
	.byte	W02
	.byte		N12   , Dn3 , v020
	.byte		N01   , En4 , v028
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N04   , Fs4 
	.byte	W04
	.byte		N07   , Fs4 , v024
	.byte	W08
	.byte		N12   , En3 
	.byte		N12   , En4 , v028
	.byte	W12
	.byte		N60   , Dn3 , v012
	.byte		N01   , Dn4 , v016
	.byte	W01
	.byte		N12   , Fs4 , v028
	.byte	W14
	.byte		N44   , Fs4 , v032
	.byte	W42
	.byte	W01
@ 128   ----------------------------------------
	.byte	W02
	.byte		N78   , Gn1 , v012
	.byte		N12   , Bn2 , v016
	.byte	W12
	.byte		        Cs4 , v036
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N36   , Bn4 , v040
	.byte	W36
	.byte		N18   , An4 , v036
	.byte	W22
@ 129   ----------------------------------------
	.byte	W02
	.byte		N54   , An1 , v020
	.byte		N12   , Cs3 , v016
	.byte	W12
	.byte		        Cs4 , v028
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N36   , An4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W10
@ 130   ----------------------------------------
	.byte	W02
	.byte		N12   , Fs2 , v016
	.byte		N96   , Fs3 , v012
	.byte	W12
	.byte		N12   , Cs4 , v028
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N36   , An4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W10
@ 131   ----------------------------------------
	.byte	W02
	.byte		N12   , Gn2 , v024
	.byte		N30   , En4 , v028
	.byte	W12
	.byte		N12   , Fs4 , v032
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		TIE   , Dn4 , v028
	.byte	W64
@ 132   ----------------------------------------
	.byte	W02
	.byte		N12   , Bn3 , v024
	.byte	W12
	.byte		        Cs4 , v036
	.byte	W12
	.byte		        Dn4 , v032
	.byte	W12
	.byte		EOT   
	.byte		N36   , Bn4 , v028
	.byte	W36
	.byte		N18   , An4 , v032
	.byte	W18
	.byte		N06   , Cs3 , v008
	.byte	W04
@ 133   ----------------------------------------
	.byte	W02
	.byte		N12   , An2 , v020
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cs3 , v036
	.byte		N12   , Cs4 , v032
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		N36   , An3 , v032
	.byte		N36   , An4 , v028
	.byte	W36
	.byte		N12   , Gn3 , v036
	.byte		N12   , Gn4 , v028
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 , v024
	.byte	W10
@ 134   ----------------------------------------
	.byte	W02
	.byte		        Fs2 , v016
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cs3 , v028
	.byte		N12   , Cs4 , v024
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		N36   , Gn3 , v020
	.byte		N36   , An4 , v028
	.byte	W36
	.byte		N12   , Gn3 , v032
	.byte		N12   , Gn4 , v028
	.byte	W12
	.byte		N06   , Fs3 , v032
	.byte		N06   , Fs4 , v028
	.byte	W10
@ 135   ----------------------------------------
	.byte	W02
	.byte		N12   , Gn2 , v020
	.byte		N12   , En4 , v028
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 , v024
	.byte		N72   , En4 , v028
	.byte	W12
	.byte		N60   , Dn4 , v016
	.byte	W56
	.byte	W02
@ 136   ----------------------------------------
	.byte	W02
	.byte		N96   , Gn1 , v008
	.byte		N90   , Dn3 , v012
	.byte	W90
	.byte		N06   , En3 , v008
	.byte	W04
@ 137   ----------------------------------------
	.byte	W02
	.byte		N54   , An1 , v016
	.byte		N90   , An2 , v008
	.byte	W90
	.byte		N06   , Cs3 , v004
	.byte	W04
@ 138   ----------------------------------------
	.byte	W02
	.byte		N60   , Fs1 
	.byte		N90   , An2 , v008
	.byte	W92
	.byte	W02
@ 139   ----------------------------------------
	.byte	W02
	.byte		N66   , Dn2 , v004
	.byte		N06   , Bn2 , v008
	.byte	W06
	.byte		N66   , Gn1 , v004
	.byte	W88
@ 140   ----------------------------------------
	.byte	W02
	.byte		N60   , Gn1 , v008
	.byte		N96   , Dn3 
	.byte	W92
	.byte	W02
@ 141   ----------------------------------------
	.byte	W02
	.byte		N48   , An1 
	.byte		N48   , En3 , v004
	.byte	W92
	.byte	W02
@ 142   ----------------------------------------
	.byte	W02
	.byte		        Fs1 
	.byte		N48   , Cs3 
	.byte	W92
	.byte	W02
@ 143   ----------------------------------------
	.byte	W02
	.byte		N96   , Gn1 
	.byte		N96   , Dn3 
	.byte	W92
	.byte	W02
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W90
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_meet_me_halfway_4:
	.byte		VOL   , 127*mus_meet_me_halfway_mvl/mxv
	.byte	KEYSH , mus_meet_me_halfway_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		N01   , Gn2 , v024
	.byte	W01
	.byte		N92   , Gn1 , v024, gtp3
	.byte		N01   , Dn3 , v028
	.byte	W01
@ 004   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		        An2 , v020
	.byte	W01
	.byte		        En2 
	.byte		N01   , Cs3 
	.byte	W01
@ 005   ----------------------------------------
	.byte		N92   , An1 , v024, gtp2
	.byte	W92
	.byte	W02
	.byte		N01   , Fs2 
	.byte	W01
	.byte		N92   , Fs1 , v028, gtp2
	.byte	W01
@ 006   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		N01   , Dn3 
	.byte	W01
	.byte		N96   , Gn1 
	.byte	W02
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
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte	W96
@ 119   ----------------------------------------
	.byte	W96
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	W96
@ 124   ----------------------------------------
	.byte	W96
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
@ 128   ----------------------------------------
	.byte	W96
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W06
	.byte		N66   
	.byte	W90
@ 145   ----------------------------------------
	.byte		N54   , Cs3 , v024
	.byte	W96
@ 146   ----------------------------------------
	.byte		N66   , Fs2 , v028
	.byte	W96
@ 147   ----------------------------------------
	.byte		N60   , Gn1 
	.byte	W96
@ 148   ----------------------------------------
	.byte		        Bn2 , v032
	.byte	W96
@ 149   ----------------------------------------
	.byte		N48   , Cs3 , v028
	.byte	W90
	.byte		N06   , Fs2 , v024
	.byte	W06
@ 150   ----------------------------------------
	.byte		N54   , An2 
	.byte	W96
@ 151   ----------------------------------------
	.byte		N96   , Bn2 , v032
	.byte	W96
@ 152   ----------------------------------------
	.byte	W90
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_meet_me_halfway_5:
	.byte		VOL   , 127*mus_meet_me_halfway_mvl/mxv
	.byte	KEYSH , mus_meet_me_halfway_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 65
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
mus_meet_me_halfway_5_032:
	.byte	W12
	.byte		N12   , Cs4 , v040
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N36   , Bn4 , v044
	.byte	W36
	.byte		N18   , An4 , v040
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
mus_meet_me_halfway_5_033:
	.byte	W12
	.byte		N12   , Cs4 , v032
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N36   , An4 , v036
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fs4 , v032
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_meet_me_halfway_5_034:
	.byte	W12
	.byte		N12   , Cs4 , v032
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N36   , An4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_meet_me_halfway_5_035:
	.byte		N12   , En4 , v032
	.byte	W12
	.byte		        Fs4 , v036
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N60   , Dn4 , v032
	.byte	W60
	.byte	PEND
@ 036   ----------------------------------------
mus_meet_me_halfway_5_036:
	.byte	W12
	.byte		N12   , Cs4 , v040
	.byte	W12
	.byte		        Dn4 , v036
	.byte	W12
	.byte		N36   , Bn4 
	.byte	W36
	.byte		N18   , An4 
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
mus_meet_me_halfway_5_037:
	.byte	W12
	.byte		N12   , Cs3 , v040
	.byte	W12
	.byte		        Dn4 , v036
	.byte	W12
	.byte		N36   , An3 
	.byte	W36
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		N18   , Fs3 , v032
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_meet_me_halfway_5_038:
	.byte	W12
	.byte		N12   , Cs3 , v032
	.byte	W12
	.byte		        Dn4 , v028
	.byte	W12
	.byte		N36   , An4 , v032
	.byte	W36
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
mus_meet_me_halfway_5_039:
	.byte		N12   , En4 , v032
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N60   , Dn4 , v020
	.byte	W60
	.byte	PEND
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
	.byte	PATT
	 .word	mus_meet_me_halfway_5_032
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_033
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_034
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_036
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_037
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_038
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_039
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_032
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_033
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_034
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_035
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_037
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_038
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_039
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
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_032
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_033
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_034
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_035
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_036
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_037
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_038
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_039
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_032
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_033
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_034
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_035
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_036
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_037
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_038
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_039
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_032
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_033
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_034
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_035
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_036
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_037
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_038
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_5_039
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W90
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_meet_me_halfway_6:
	.byte		VOL   , 127*mus_meet_me_halfway_mvl/mxv
	.byte	KEYSH , mus_meet_me_halfway_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
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
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W12
	.byte		N06   , Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Dn2 , v016
	.byte	W12
	.byte		        Dn2 , v020
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v016
	.byte	W06
@ 025   ----------------------------------------
	.byte	W06
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 026   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
@ 027   ----------------------------------------
	.byte		N12   , Dn2 , v020
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 028   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v016
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 029   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 030   ----------------------------------------
mus_meet_me_halfway_6_030:
	.byte		N12   , Dn2 , v020
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_030
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_030
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_030
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_030
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_030
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_030
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_030
@ 039   ----------------------------------------
	.byte		N12   , Dn2 , v020
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		TIE   
	.byte	W06
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
	.byte	W12
	.byte		EOT   
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
@ 049   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 050   ----------------------------------------
mus_meet_me_halfway_6_050:
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte	PEND
@ 051   ----------------------------------------
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_050
@ 053   ----------------------------------------
	.byte	W06
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 054   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		TIE   
	.byte	W06
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W12
@ 057   ----------------------------------------
	.byte	W12
	.byte		N06   , Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W12
@ 058   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W12
@ 059   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W12
@ 060   ----------------------------------------
mus_meet_me_halfway_6_060:
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W12
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_060
@ 063   ----------------------------------------
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 064   ----------------------------------------
mus_meet_me_halfway_6_064:
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 065   ----------------------------------------
mus_meet_me_halfway_6_065:
	.byte		N06   , Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 066   ----------------------------------------
mus_meet_me_halfway_6_066:
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 067   ----------------------------------------
mus_meet_me_halfway_6_067:
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_064
@ 069   ----------------------------------------
mus_meet_me_halfway_6_069:
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_064
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_067
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_064
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_065
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_066
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_067
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_064
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_069
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_064
@ 079   ----------------------------------------
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		TIE   
	.byte	W24
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
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
@ 113   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		        Dn2 , v020
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Dn2 , v024
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
@ 114   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
@ 115   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v020
	.byte	W12
	.byte		N06   , Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
@ 116   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
@ 117   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v020
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
@ 118   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
@ 119   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
@ 120   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v016
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
@ 121   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 122   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 123   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
@ 124   ----------------------------------------
	.byte		N12   , Dn2 , v028
	.byte	W12
	.byte		        Dn2 , v024
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
@ 125   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
@ 126   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
@ 127   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		        Dn2 , v020
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 128   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 , v020
	.byte	W12
	.byte		N06   , Dn2 , v024
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
@ 129   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
@ 130   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
@ 131   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
@ 132   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 133   ----------------------------------------
mus_meet_me_halfway_6_133:
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_6_133
@ 135   ----------------------------------------
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		        Dn2 , v024
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 , v020
	.byte	W06
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N01   , Dn2 , v024
	.byte	W06
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W90
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_meet_me_halfway_7:
	.byte		VOL   , 127*mus_meet_me_halfway_mvl/mxv
	.byte	KEYSH , mus_meet_me_halfway_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		N06   , Cn1 , v068
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 005   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
@ 006   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 007   ----------------------------------------
	.byte	W72
	.byte		        Ds1 , v056
	.byte	W24
@ 008   ----------------------------------------
mus_meet_me_halfway_7_008:
	.byte		N18   , Cn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N12   , Dn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		N12   , Cn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v060
	.byte		N12   , Dn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_meet_me_halfway_7_009:
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N06   , Dn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_meet_me_halfway_7_010:
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v064
	.byte		N06   , Dn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		N12   , Cn1 , v060
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_meet_me_halfway_7_011:
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
mus_meet_me_halfway_7_012:
	.byte		N06   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_meet_me_halfway_7_013:
	.byte		N12   , Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_meet_me_halfway_7_014:
	.byte		N06   , Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
mus_meet_me_halfway_7_015:
	.byte		N06   , Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_meet_me_halfway_7_016:
	.byte		N18   , Cn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N12   , Dn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		N12   , Cn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v060
	.byte		N12   , Dn1 , v064
	.byte		N24   , Ds1 , v056
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_meet_me_halfway_7_017:
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N06   , Dn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 , v064
	.byte		N24   , Ds1 , v056
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v064
	.byte		N06   , Dn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		N12   , Cn1 , v060
	.byte		N06   , Fs1 , v032
	.byte	W23
	.byte		N01   , Ds1 , v056
	.byte	W01
	.byte		N06   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
@ 019   ----------------------------------------
mus_meet_me_halfway_7_019:
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N01   , Ds1 , v056
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
mus_meet_me_halfway_7_020:
	.byte		N06   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N01   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W01
	.byte		        Ds1 , v056
	.byte	W23
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N12   , Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N01   , Dn1 , v064
	.byte		N06   , Ds1 , v056
	.byte		N06   , Fs1 , v032
	.byte	W24
@ 022   ----------------------------------------
mus_meet_me_halfway_7_022:
	.byte		N06   , Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 , v056
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
	.byte		        Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		N01   , Cn1 , v064
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W01
	.byte		        Ds1 , v056
	.byte	W23
@ 024   ----------------------------------------
mus_meet_me_halfway_7_024:
	.byte		N18   , Cn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N12   , Dn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		N12   , Cn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v060
	.byte		N12   , Dn1 , v064
	.byte		N06   , Ds1 , v056
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
mus_meet_me_halfway_7_025:
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N06   , Dn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 , v064
	.byte		N06   , Ds1 , v056
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
mus_meet_me_halfway_7_026:
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v064
	.byte		N06   , Dn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		N12   , Cn1 , v060
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 , v056
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_meet_me_halfway_7_027:
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 , v056
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_meet_me_halfway_7_028:
	.byte		N06   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 , v056
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
mus_meet_me_halfway_7_029:
	.byte		N12   , Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 , v064
	.byte		N06   , Ds1 , v056
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_022
@ 031   ----------------------------------------
mus_meet_me_halfway_7_031:
	.byte		N06   , Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 , v056
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_031
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_010
@ 043   ----------------------------------------
	.byte		N11   , Cn1 , v068
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_017
@ 050   ----------------------------------------
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v064
	.byte		N06   , Dn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		N12   , Cn1 , v060
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N01   , Ds1 , v056
	.byte		N06   , Fs1 , v028
	.byte	W24
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_020
@ 053   ----------------------------------------
	.byte		N12   , Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N01   , Dn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W01
	.byte		        Ds1 , v056
	.byte	W23
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_022
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_022
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_031
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_024
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_025
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_028
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_029
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_022
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_031
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_024
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_025
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_026
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_028
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_029
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_022
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_031
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_008
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_011
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_012
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_013
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_014
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_015
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_008
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_011
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_012
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_013
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_014
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_015
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
mus_meet_me_halfway_7_104:
	.byte	W01
	.byte		N18   , Cn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N12   , Dn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		N12   , Cn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v060
	.byte		N12   , Dn1 , v064
	.byte		N06   , Ds1 , v056
	.byte	W23
	.byte	PEND
@ 105   ----------------------------------------
mus_meet_me_halfway_7_105:
	.byte	W01
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N06   , Dn1 , v064
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 , v064
	.byte		N06   , Ds1 , v056
	.byte	W23
	.byte	PEND
@ 106   ----------------------------------------
mus_meet_me_halfway_7_106:
	.byte	W01
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v064
	.byte		N06   , Dn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		N12   , Cn1 , v060
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 , v056
	.byte	W23
	.byte	PEND
@ 107   ----------------------------------------
mus_meet_me_halfway_7_107:
	.byte	W01
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 , v056
	.byte	W23
	.byte	PEND
@ 108   ----------------------------------------
mus_meet_me_halfway_7_108:
	.byte	W01
	.byte		N06   , Cn1 , v068
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v028
	.byte	W24
	.byte		N12   , Cn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 , v056
	.byte	W23
	.byte	PEND
@ 109   ----------------------------------------
mus_meet_me_halfway_7_109:
	.byte	W01
	.byte		N12   , Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v068
	.byte		N06   , Dn1 , v064
	.byte		N06   , Ds1 , v056
	.byte	W23
	.byte	PEND
@ 110   ----------------------------------------
mus_meet_me_halfway_7_110:
	.byte	W01
	.byte		N06   , Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 , v056
	.byte	W23
	.byte	PEND
@ 111   ----------------------------------------
mus_meet_me_halfway_7_111:
	.byte	W01
	.byte		N06   , Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Fs1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N06   , Dn1 
	.byte		N06   , Ds1 , v056
	.byte	W23
	.byte	PEND
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_104
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_105
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_106
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_107
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_108
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_109
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_110
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_111
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_104
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_105
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_106
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_107
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_108
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_109
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_110
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_111
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_104
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_105
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_106
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_107
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_108
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_109
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_110
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_meet_me_halfway_7_111
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W90
	.byte	FINE

@******************************************************@
	.align	2

mus_meet_me_halfway:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_meet_me_halfway_pri	@ Priority
	.byte	mus_meet_me_halfway_rev	@ Reverb.

	.word	mus_meet_me_halfway_grp

	.word	mus_meet_me_halfway_1
	.word	mus_meet_me_halfway_2
	.word	mus_meet_me_halfway_3
	.word	mus_meet_me_halfway_4
	.word	mus_meet_me_halfway_5
	.word	mus_meet_me_halfway_6
	.word	mus_meet_me_halfway_7

	.end
