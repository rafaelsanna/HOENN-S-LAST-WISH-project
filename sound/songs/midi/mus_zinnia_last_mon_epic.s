	.include "MPlayDef.s"

	.equ	mus_zinnia_last_mon_epic_grp, voicegroup_brothers
	.equ	mus_zinnia_last_mon_epic_pri, 0
	.equ	mus_zinnia_last_mon_epic_rev, reverb_set+18
	.equ	mus_zinnia_last_mon_epic_mvl, 90
	.equ	mus_zinnia_last_mon_epic_key, 0
	.equ	mus_zinnia_last_mon_epic_tbs, 1
	.equ	mus_zinnia_last_mon_epic_exg, 0
	.equ	mus_zinnia_last_mon_epic_cmp, 1

	.section .rodata
	.global	mus_zinnia_last_mon_epic
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_zinnia_last_mon_epic_1:
	.byte	KEYSH , mus_zinnia_last_mon_epic_key+0
mus_zinnia_last_mon_epic_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 175*mus_zinnia_last_mon_epic_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 92*mus_zinnia_last_mon_epic_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N96   , Cs1 , v072
	.byte	W96
@ 002   ----------------------------------------
	.byte		N48   , Dn1 
	.byte	W48
	.byte		        En1 
	.byte	W48
@ 003   ----------------------------------------
	.byte		TIE   , Fs1 
	.byte		N12   , Cs3 , v064
	.byte		N12   , Cs4 , v060
	.byte	W12
	.byte		        Cs3 , v064
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v060
	.byte	W12
	.byte		        Fs3 , v064
	.byte		N12   , An3 
	.byte		N12   , An4 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v060
	.byte	W12
	.byte		        Dn3 , v064
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v060
	.byte	W12
	.byte		        Dn3 , v064
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v060
	.byte	W12
	.byte		        Cs3 , v064
	.byte		N12   , En3 
	.byte		N12   , En4 , v060
	.byte	W12
@ 004   ----------------------------------------
	.byte		        An2 , v064
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 , v060
	.byte	W12
	.byte		        Cs3 , v064
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v060
	.byte	W12
	.byte		        Gs3 , v064
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 , v060
	.byte	W06
	.byte		        En3 , v064
	.byte		N06   , An3 
	.byte		N06   , An4 , v060
	.byte	W06
	.byte		N12   , En3 , v064
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v060
	.byte	W12
	.byte		        Dn3 , v064
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v060
	.byte	W12
	.byte		        Cs3 , v064
	.byte		N12   , En3 
	.byte		N12   , En4 , v060
	.byte	W12
@ 005   ----------------------------------------
	.byte		        An2 
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        An2 
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        En3 
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		N12   , En3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		EOT   , Fs1 
@ 007   ----------------------------------------
mus_zinnia_last_mon_epic_1_007:
	.byte		N12   , Fs1 , v072
	.byte		N12   , Cs3 , v060
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Fs3 , v060
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , An3 , v060
	.byte		N12   , An4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Gs3 , v060
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Fs3 , v060
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Gs3 , v060
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Fs3 , v060
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , En3 , v060
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte		        Fs1 , v072
	.byte		N12   , Cs3 , v060
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Fs3 , v060
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Gs3 , v060
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Gs3 , v060
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N06   , Bn3 , v060
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        En3 
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		N12   , Fs1 , v072
	.byte		N12   , Gs3 , v060
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Fs3 , v060
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , En3 , v060
	.byte		N12   , En4 
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_007
@ 010   ----------------------------------------
	.byte		N12   , Fs1 , v072
	.byte		N12   , An2 , v060
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Fs3 , v060
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Gs3 , v060
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Gs3 , v060
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N06   , Bn3 , v060
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        En3 
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		N12   , Fs1 , v072
	.byte		N12   , Gs3 , v060
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , Fs3 , v060
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N12   , En3 , v060
	.byte		N12   , En4 
	.byte	W12
@ 011   ----------------------------------------
mus_zinnia_last_mon_epic_1_011:
	.byte		N12   , Fs1 , v072
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
@ 012   ----------------------------------------
mus_zinnia_last_mon_epic_1_012:
	.byte		N12   , Fs1 , v072
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
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 018   ----------------------------------------
mus_zinnia_last_mon_epic_1_018:
	.byte		N12   , Fs1 , v072
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
	.byte	PEND
@ 019   ----------------------------------------
mus_zinnia_last_mon_epic_1_019:
	.byte		N12   , Gn1 , v072
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
@ 020   ----------------------------------------
mus_zinnia_last_mon_epic_1_020:
	.byte		N12   , Gn1 , v072
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
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 026   ----------------------------------------
mus_zinnia_last_mon_epic_1_026:
	.byte		N12   , Gn1 , v072
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
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_020
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_020
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_026
@ 035   ----------------------------------------
mus_zinnia_last_mon_epic_1_035:
	.byte		N12   , Ds1 , v072
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
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_035
@ 037   ----------------------------------------
mus_zinnia_last_mon_epic_1_037:
	.byte		N12   , Ds1 , v072
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
	.byte		        Fs1 
	.byte		N12   , Gn1 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_zinnia_last_mon_epic_1_038:
	.byte		N12   , Cn1 , v072
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
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_038
@ 040   ----------------------------------------
mus_zinnia_last_mon_epic_1_040:
	.byte		N12   , Dn1 , v072
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
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_040
@ 042   ----------------------------------------
mus_zinnia_last_mon_epic_1_042:
	.byte		N12   , Dn1 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 043   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 044   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 047   ----------------------------------------
mus_zinnia_last_mon_epic_1_047:
	.byte		N36   , Dn1 , v072
	.byte	W36
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 048   ----------------------------------------
mus_zinnia_last_mon_epic_1_048:
	.byte		N48   , Cs1 , v072
	.byte	W48
	.byte		N24   , An1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 049   ----------------------------------------
mus_zinnia_last_mon_epic_1_049:
	.byte		N48   , Bn1 , v072
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 050   ----------------------------------------
mus_zinnia_last_mon_epic_1_050:
	.byte		N24   , Cs1 , v072
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_040
@ 052   ----------------------------------------
mus_zinnia_last_mon_epic_1_052:
	.byte		N12   , En1 , v072
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
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_040
@ 056   ----------------------------------------
mus_zinnia_last_mon_epic_1_056:
	.byte		N12   , Cs1 , v072
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
@ 057   ----------------------------------------
mus_zinnia_last_mon_epic_1_057:
	.byte		N12   , Bn1 , v072
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
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_056
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_040
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_052
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_012
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_012
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_012
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_020
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_026
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_020
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_020
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_020
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_026
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_035
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_035
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_037
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_038
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_038
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_040
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_040
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_042
@ 103   ----------------------------------------
	.byte		N96   , Dn1 , v072
	.byte	W96
@ 104   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 106   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_047
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_048
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_049
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_040
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_019
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_040
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_056
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_057
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_056
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_040
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_052
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_1_011
@ 131   ----------------------------------------
	.byte	W06
	.byte	GOTO
	 .word	mus_zinnia_last_mon_epic_1_B1
mus_zinnia_last_mon_epic_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_zinnia_last_mon_epic_2:
	.byte	KEYSH , mus_zinnia_last_mon_epic_key+0
mus_zinnia_last_mon_epic_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 106*mus_zinnia_last_mon_epic_mvl/mxv
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
	.byte	W72
	.byte		N24   , Bn2 , v076
	.byte		N24   , Bn3 
	.byte	W24
@ 010   ----------------------------------------
mus_zinnia_last_mon_epic_2_010:
	.byte		TIE   , Fs3 , v076
	.byte		TIE   , Fs4 
	.byte	W06
	.byte		N96   , Fs4 , v072
	.byte	W90
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W06
	.byte		EOT   , Fs3 
	.byte		        Fs4 
	.byte	W06
	.byte		N36   , Gs3 , v076
	.byte		N36   , Gs4 
	.byte	W06
	.byte		N30   , Gs4 , v072
	.byte	W30
	.byte		N24   , An3 , v076
	.byte		N24   , An4 
	.byte	W06
	.byte		N18   , An4 , v072
	.byte	W18
	.byte		N24   , En4 , v076
	.byte		N24   , En5 
	.byte	W06
	.byte		N18   , En5 , v072
	.byte	W18
@ 012   ----------------------------------------
mus_zinnia_last_mon_epic_2_012:
	.byte		N96   , Cs4 , v076
	.byte		N96   , Cs5 
	.byte	W06
	.byte		N90   , Cs5 , v072
	.byte	W90
	.byte	PEND
@ 013   ----------------------------------------
mus_zinnia_last_mon_epic_2_013:
	.byte	W12
	.byte		N12   , Bn3 , v076
	.byte		N12   , Bn4 
	.byte	W06
	.byte		N06   , Bn4 , v072
	.byte	W06
	.byte		        Cs4 , v076
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cs5 , v072
	.byte	W06
	.byte		        Bn3 , v076
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Bn4 , v072
	.byte	W06
	.byte		N12   , An3 , v076
	.byte		N12   , An4 
	.byte	W06
	.byte		N06   , An4 , v072
	.byte	W06
	.byte		        Bn3 , v076
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Bn4 , v072
	.byte	W06
	.byte		        An3 , v076
	.byte		N06   , An4 
	.byte	W06
	.byte		        An4 , v072
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
mus_zinnia_last_mon_epic_2_014:
	.byte		N96   , Fs3 , v076
	.byte		N96   , Fs4 
	.byte	W06
	.byte		N90   
	.byte	W90
	.byte	PEND
@ 015   ----------------------------------------
mus_zinnia_last_mon_epic_2_015:
	.byte	W09
	.byte		N36   , Gs3 , v076
	.byte		N36   , Gs4 
	.byte	W06
	.byte		N32   
	.byte	W32
	.byte	W01
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte	PEND
@ 016   ----------------------------------------
mus_zinnia_last_mon_epic_2_016:
	.byte		TIE   , Cs3 , v076
	.byte		TIE   , Cs4 
	.byte	W06
	.byte		TIE   
	.byte	W90
	.byte	PEND
@ 017   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs3 
	.byte		        Cs4 
	.byte		EOT   
	.byte	W24
	.byte		N24   , Cn3 
	.byte		N24   , Cn4 
	.byte	W06
	.byte		N18   
	.byte	W18
@ 018   ----------------------------------------
mus_zinnia_last_mon_epic_2_018:
	.byte		TIE   , Gn3 , v076
	.byte		TIE   , Gn4 
	.byte	W06
	.byte		N96   
	.byte	W90
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W06
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte	W06
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W06
	.byte		N30   
	.byte	W30
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N24   , Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W18
@ 020   ----------------------------------------
mus_zinnia_last_mon_epic_2_020:
	.byte		N96   , Dn4 , v076
	.byte		N96   , Dn5 
	.byte	W06
	.byte		N90   
	.byte	W90
	.byte	PEND
@ 021   ----------------------------------------
mus_zinnia_last_mon_epic_2_021:
	.byte	W12
	.byte		N12   , Cn4 , v076
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W06
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Cn4 , v076
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        As3 , v076
	.byte		N06   , As4 
	.byte	W06
	.byte		        As4 , v080
	.byte	W06
	.byte		        An3 , v076
	.byte		N06   , An4 
	.byte	W06
	.byte		        An4 , v080
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_zinnia_last_mon_epic_2_022:
	.byte		N96   , Gn3 , v076
	.byte		N96   , Gn4 
	.byte	W06
	.byte		N90   , Gn4 , v080
	.byte	W90
	.byte	PEND
@ 023   ----------------------------------------
mus_zinnia_last_mon_epic_2_023:
	.byte	W09
	.byte		N36   , An3 , v076
	.byte		N36   , An4 
	.byte	W06
	.byte		N32   , An4 , v080
	.byte	W32
	.byte	W01
	.byte		N24   , Gn3 , v076
	.byte		N24   , Gn4 
	.byte	W06
	.byte		N18   , Gn4 , v080
	.byte	W18
	.byte		N24   , Fn3 , v076
	.byte		N24   , Fn4 
	.byte	W06
	.byte		N18   , Fn4 , v080
	.byte	W18
	.byte	PEND
@ 024   ----------------------------------------
mus_zinnia_last_mon_epic_2_024:
	.byte		TIE   , Dn3 , v076
	.byte		TIE   , Dn4 
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W90
	.byte	PEND
@ 025   ----------------------------------------
	.byte	W48
	.byte		EOT   , Dn3 
	.byte		        Dn4 
	.byte		EOT   
	.byte	W48
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
	.byte		N96   , Dn3 , v076
	.byte	W96
@ 043   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 046   ----------------------------------------
mus_zinnia_last_mon_epic_2_046:
	.byte		N36   , Fs3 , v076
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
mus_zinnia_last_mon_epic_2_047:
	.byte		N36   , En3 , v076
	.byte	W36
	.byte		N60   , Cs3 
	.byte	W60
	.byte	PEND
@ 048   ----------------------------------------
mus_zinnia_last_mon_epic_2_048:
	.byte		N36   , Dn3 , v076
	.byte	W36
	.byte		        En3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 049   ----------------------------------------
mus_zinnia_last_mon_epic_2_049:
	.byte		N36   , An3 , v076
	.byte	W36
	.byte		N48   , Gs3 
	.byte	W48
	.byte		N06   , En4 , v084
	.byte		N06   , En5 , v076
	.byte	W06
	.byte		        Fn3 , v084
	.byte		N06   , Fn4 
	.byte	W06
	.byte	PEND
@ 050   ----------------------------------------
mus_zinnia_last_mon_epic_2_050:
	.byte		N72   , Fs3 , v084
	.byte		N72   , Fs4 
	.byte	W06
	.byte		        Fs5 , v076
	.byte	W66
	.byte		N24   , An3 , v084
	.byte		N24   , An4 
	.byte	W06
	.byte		        An5 , v076
	.byte	W18
	.byte	PEND
@ 051   ----------------------------------------
mus_zinnia_last_mon_epic_2_051:
	.byte		N36   , Gs3 , v084
	.byte		N36   , Gs4 
	.byte	W06
	.byte		        Gs5 , v076
	.byte	W30
	.byte		        En4 , v084
	.byte		N36   , En5 , v076
	.byte	W06
	.byte		N30   
	.byte	W30
	.byte		N24   , Fs3 , v084
	.byte		N24   , Fs4 
	.byte	W06
	.byte		        Fs5 , v076
	.byte	W18
	.byte	PEND
@ 052   ----------------------------------------
mus_zinnia_last_mon_epic_2_052:
	.byte		N72   , Cs4 , v084
	.byte		N72   , Cs5 , v076
	.byte	W06
	.byte		N66   
	.byte	W66
	.byte		N24   , Bn3 , v084
	.byte		N24   , Bn4 , v076
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte	PEND
@ 053   ----------------------------------------
mus_zinnia_last_mon_epic_2_053:
	.byte		N48   , Cs4 , v084
	.byte		N48   , Cs5 , v076
	.byte	W06
	.byte		N42   
	.byte	W42
	.byte		N36   , Bn3 , v084
	.byte		N36   , Bn4 , v076
	.byte	W06
	.byte		N30   
	.byte	W30
	.byte		N06   , Cs4 , v084
	.byte		N06   , Cs5 , v076
	.byte	W06
	.byte		        Bn4 , v072
	.byte		N06   , Cs5 , v076
	.byte	W06
	.byte	PEND
@ 054   ----------------------------------------
mus_zinnia_last_mon_epic_2_054:
	.byte		N72   , Fs4 , v076
	.byte		N06   , Bn4 
	.byte	W06
	.byte		N66   , Fs4 
	.byte	W66
	.byte		N24   , Cs4 , v084
	.byte		N24   , Cs5 , v072
	.byte	W06
	.byte		N18   , Cs5 , v076
	.byte	W18
	.byte	PEND
@ 055   ----------------------------------------
mus_zinnia_last_mon_epic_2_055:
	.byte		N36   , Bn3 , v084
	.byte		N36   , Bn4 , v072
	.byte	W06
	.byte		N30   , Bn4 , v076
	.byte	W30
	.byte		N36   , An3 , v084
	.byte		N36   , An4 , v072
	.byte	W06
	.byte		N30   , An4 , v076
	.byte	W30
	.byte		N24   , Gs3 , v084
	.byte		N24   , Gs4 , v072
	.byte	W06
	.byte		N18   , Gs4 , v076
	.byte	W18
	.byte	PEND
@ 056   ----------------------------------------
mus_zinnia_last_mon_epic_2_056:
	.byte		N72   , Fs3 , v084
	.byte		N72   , Fs4 , v072
	.byte	W06
	.byte		N66   , Fs4 , v076
	.byte	W66
	.byte		N24   , Cs4 , v084
	.byte		N24   , Cs5 , v072
	.byte	W06
	.byte		N18   , Cs5 , v076
	.byte	W18
	.byte	PEND
@ 057   ----------------------------------------
mus_zinnia_last_mon_epic_2_057:
	.byte		N24   , Bn3 , v084
	.byte		N24   , Bn4 , v072
	.byte	W06
	.byte		N18   , Bn4 , v076
	.byte	W18
	.byte		N24   , Cs4 , v084
	.byte		N24   , Cs5 , v072
	.byte	W06
	.byte		N18   , Cs5 , v076
	.byte	W18
	.byte		N24   , Dn4 , v084
	.byte		N24   , Dn5 , v072
	.byte	W06
	.byte		N18   , Dn5 , v076
	.byte	W18
	.byte		N24   , En4 , v084
	.byte		N24   , En5 , v072
	.byte	W06
	.byte		N18   , En5 , v076
	.byte	W18
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_050
@ 059   ----------------------------------------
mus_zinnia_last_mon_epic_2_059:
	.byte		N24   , Gs3 , v084
	.byte		N24   , Gs4 
	.byte	W06
	.byte		        Gs5 , v076
	.byte	W18
	.byte		        En4 , v084
	.byte		N24   , En5 , v072
	.byte	W06
	.byte		N18   , En5 , v076
	.byte	W18
	.byte		N24   , Cs4 , v084
	.byte		N24   , Cs5 , v072
	.byte	W06
	.byte		N18   , Cs5 , v076
	.byte	W18
	.byte		N24   , Gs3 , v084
	.byte		N24   , Gs4 
	.byte	W06
	.byte		        Gs5 , v076
	.byte	W18
	.byte	PEND
@ 060   ----------------------------------------
mus_zinnia_last_mon_epic_2_060:
	.byte		TIE   , Fs3 , v084
	.byte		TIE   , Fs4 
	.byte	W06
	.byte		        Fs5 , v076
	.byte	W90
	.byte	PEND
@ 061   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        Fs4 
@ 062   ----------------------------------------
	.byte		N09   , Fs3 , v068
	.byte		N09   , Fs4 
	.byte	W06
	.byte		EOT   , Fs5 
	.byte		N03   , Fs4 
	.byte	W06
	.byte		N09   , An3 
	.byte		N09   , An4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , Bn3 
	.byte		N09   , Bn4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , An3 
	.byte		N09   , An4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N09   , An3 
	.byte		N09   , An4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , Fs3 
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , En3 
	.byte		N09   , En4 
	.byte	W06
	.byte		N03   
	.byte	W06
@ 063   ----------------------------------------
mus_zinnia_last_mon_epic_2_063:
	.byte		N09   , Fs3 , v068
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , An3 
	.byte		N09   , An4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , Gs3 
	.byte		N09   , Gs4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , En3 
	.byte		N09   , En4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , Fs3 
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , En3 
	.byte		N09   , En4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N21   , Cs3 
	.byte		N21   , Cs4 
	.byte	W06
	.byte		N15   
	.byte	W18
	.byte	PEND
@ 064   ----------------------------------------
mus_zinnia_last_mon_epic_2_064:
	.byte	W12
	.byte		N09   , Cs3 , v064
	.byte		N09   , Cs4 
	.byte	W06
	.byte		N03   , Cs4 , v068
	.byte	W06
	.byte		N09   , Fs3 , v064
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   , Fs4 , v068
	.byte	W06
	.byte		N09   , Gn3 , v064
	.byte		N09   , Gn4 
	.byte	W06
	.byte		N03   , Gn4 , v068
	.byte	W06
	.byte		N21   , An3 , v064
	.byte		N15   , An4 
	.byte	W06
	.byte		N09   , An4 , v068
	.byte	W12
	.byte		        Gn4 
	.byte	W18
	.byte		        Fs3 , v064
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   , Fs4 , v068
	.byte	W06
	.byte	PEND
@ 065   ----------------------------------------
mus_zinnia_last_mon_epic_2_065:
	.byte		N09   , En3 , v064
	.byte		N09   , En4 
	.byte	W06
	.byte		N03   , En4 , v068
	.byte	W06
	.byte		N09   , Gn3 , v064
	.byte		N09   , Gn4 
	.byte	W06
	.byte		N03   , Gn4 , v068
	.byte	W06
	.byte		N09   , Fs3 , v064
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   , Fs4 , v068
	.byte	W06
	.byte		N09   , En3 , v064
	.byte		N09   , En4 
	.byte	W06
	.byte		N03   , En4 , v068
	.byte	W06
	.byte		N09   , Fs3 , v064
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   , Fs4 , v068
	.byte	W06
	.byte		N09   , Fs3 , v064
	.byte		N03   , Fs4 
	.byte	W06
	.byte		        Fs4 , v068
	.byte	W06
	.byte		N18   , En3 , v064
	.byte		N18   , En4 
	.byte	W06
	.byte		N12   , En4 , v068
	.byte	W18
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_064
@ 067   ----------------------------------------
mus_zinnia_last_mon_epic_2_067:
	.byte		N09   , En3 , v064
	.byte		N09   , En4 
	.byte	W06
	.byte		N03   , En4 , v068
	.byte	W06
	.byte		N09   , Gn3 , v064
	.byte		N09   , Gn4 
	.byte	W06
	.byte		N03   , Gn4 , v068
	.byte	W06
	.byte		N09   , Fs3 , v064
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   , Fs4 , v068
	.byte	W06
	.byte		N09   , En3 , v064
	.byte		N09   , En4 
	.byte	W06
	.byte		N03   , En4 , v068
	.byte	W06
	.byte		N09   , Fs3 , v064
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   , Fs4 , v068
	.byte	W06
	.byte		N09   , Bn3 , v064
	.byte		N09   , Bn4 
	.byte	W06
	.byte		N03   , Bn4 , v068
	.byte	W06
	.byte		N21   , En3 , v064
	.byte		N21   , En4 
	.byte	W06
	.byte		N15   , En4 , v068
	.byte	W18
	.byte	PEND
@ 068   ----------------------------------------
mus_zinnia_last_mon_epic_2_068:
	.byte	W12
	.byte		N09   , Cs3 , v064
	.byte		N09   , Cs4 
	.byte	W06
	.byte		N03   , Cs4 , v068
	.byte	W06
	.byte		N09   , Fs3 , v064
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   , Fs4 , v068
	.byte	W06
	.byte		N09   , Gn3 , v064
	.byte		N09   , Gn4 
	.byte	W06
	.byte		N03   , Gn4 , v068
	.byte	W06
	.byte		N24   , An3 , v064
	.byte		N21   , An4 
	.byte	W06
	.byte		N15   , An4 , v068
	.byte	W12
	.byte		N09   , Gn4 
	.byte	W18
	.byte		        Fs3 , v064
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   , Fs4 , v068
	.byte	W06
	.byte	PEND
@ 069   ----------------------------------------
mus_zinnia_last_mon_epic_2_069:
	.byte		N09   , Fs3 , v064
	.byte		N03   , Fs4 
	.byte	W06
	.byte		        Fs4 , v068
	.byte	W06
	.byte		N09   , An3 , v064
	.byte		N09   , An4 
	.byte	W06
	.byte		N03   , An4 , v068
	.byte	W06
	.byte		N09   , Gs3 , v064
	.byte		N09   , Gs4 
	.byte	W06
	.byte		N03   , Gs4 , v068
	.byte	W06
	.byte		N09   , En3 , v060
	.byte		N09   , En4 
	.byte	W06
	.byte		N03   , En4 , v068
	.byte	W06
	.byte		N09   , Fs3 , v060
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   , Fs4 , v068
	.byte	W06
	.byte		N09   , En3 , v060
	.byte		N09   , En4 
	.byte	W06
	.byte		N03   , En4 , v068
	.byte	W06
	.byte		N24   , Bn2 , v076
	.byte		N24   , Bn3 
	.byte	W06
	.byte		N18   , Bn3 , v068
	.byte	W18
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_010
@ 071   ----------------------------------------
	.byte	W06
	.byte		EOT   , Fs3 
	.byte		        Fs4 
	.byte	W06
	.byte		N36   , Gs3 , v076
	.byte		N36   , Gs4 
	.byte	W06
	.byte		N30   , Gs4 , v072
	.byte	W30
	.byte		N24   , An3 , v076
	.byte		N24   , An4 
	.byte	W06
	.byte		N18   , An4 , v072
	.byte	W18
	.byte		N24   , En4 , v076
	.byte		N24   , En5 
	.byte	W06
	.byte		N18   , En5 , v072
	.byte	W18
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_012
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_013
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_014
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_015
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_016
@ 077   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs3 
	.byte		        Cs4 
	.byte		EOT   
	.byte	W24
	.byte		N24   , Cn3 , v076
	.byte		N24   , Cn4 
	.byte	W06
	.byte		N18   
	.byte	W18
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_018
@ 079   ----------------------------------------
	.byte	W06
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte	W06
	.byte		N36   , An3 , v076
	.byte		N36   , An4 
	.byte	W06
	.byte		N30   
	.byte	W30
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N24   , Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W18
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_022
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_024
@ 085   ----------------------------------------
	.byte	W48
	.byte		EOT   , Dn3 
	.byte		        Dn4 
	.byte		EOT   
	.byte	W48
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
	.byte		N96   , Dn3 , v076
	.byte	W96
@ 103   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 104   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_046
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_047
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_048
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_049
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_051
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_053
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_054
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_055
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_056
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_057
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_050
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_059
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_060
@ 121   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        Fs4 
@ 122   ----------------------------------------
	.byte		N09   , Fs3 , v068
	.byte		N09   , Fs4 
	.byte	W06
	.byte		EOT   , Fs5 
	.byte		N03   , Fs4 
	.byte	W06
	.byte		N09   , An3 
	.byte		N09   , An4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , Bn3 
	.byte		N09   , Bn4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , An3 
	.byte		N09   , An4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N09   , An3 
	.byte		N09   , An4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , Fs3 
	.byte		N09   , Fs4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   , En3 
	.byte		N09   , En4 
	.byte	W06
	.byte		N03   
	.byte	W06
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_063
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_064
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_065
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_064
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_067
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_068
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_2_069
@ 130   ----------------------------------------
	.byte	W06
	.byte	GOTO
	 .word	mus_zinnia_last_mon_epic_2_B1
mus_zinnia_last_mon_epic_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_zinnia_last_mon_epic_3:
	.byte	KEYSH , mus_zinnia_last_mon_epic_key+0
mus_zinnia_last_mon_epic_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 88*mus_zinnia_last_mon_epic_mvl/mxv
	.byte		PAN   , c_v-18
	.byte		N06   , Cs4 , v076
	.byte		N06   , Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , An4 
	.byte	W06
@ 001   ----------------------------------------
	.byte		N24   , Cs4 
	.byte		N78   , Gs4 
	.byte	W06
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
@ 002   ----------------------------------------
	.byte		N96   , Cs3 , v060
	.byte		N96   , Fs3 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        En3 , v064
	.byte		N96   , Gs3 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        En3 
	.byte		N96   , An3 
	.byte	W96
@ 005   ----------------------------------------
	.byte		        En3 
	.byte		N96   , Bn3 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        En3 
	.byte		N96   , Cs4 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Cs4 
	.byte	W96
@ 008   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Dn4 
	.byte	W96
@ 009   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Cs4 
	.byte	W96
@ 010   ----------------------------------------
mus_zinnia_last_mon_epic_3_010:
	.byte		N12   , Fs2 , v064
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_zinnia_last_mon_epic_3_011:
	.byte	W12
	.byte		N12   , An2 , v064
	.byte		N12   , An3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte		N12   , Fs4 
	.byte	W24
	.byte		N24   , Gn2 
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_011
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_011
@ 018   ----------------------------------------
mus_zinnia_last_mon_epic_3_018:
	.byte		N12   , Gn2 , v064
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_zinnia_last_mon_epic_3_019:
	.byte	W12
	.byte		N12   , As2 , v064
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        An2 
	.byte		N12   , An3 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 042   ----------------------------------------
mus_zinnia_last_mon_epic_3_042:
	.byte		N96   , An2 , v056
	.byte		N96   , Fs3 , v052
	.byte		N96   , Dn4 
	.byte	W96
	.byte	PEND
@ 043   ----------------------------------------
mus_zinnia_last_mon_epic_3_043:
	.byte		N96   , Bn2 , v056
	.byte		N96   , Gs3 , v052
	.byte		N96   , En4 
	.byte	W96
	.byte	PEND
@ 044   ----------------------------------------
mus_zinnia_last_mon_epic_3_044:
	.byte		N96   , Cs3 , v056
	.byte		N96   , An3 , v052
	.byte		N96   , Fs4 
	.byte	W96
	.byte	PEND
@ 045   ----------------------------------------
mus_zinnia_last_mon_epic_3_045:
	.byte		N96   , Dn3 , v056
	.byte		N96   , Bn3 , v052
	.byte		N96   , Gn4 
	.byte	W96
	.byte	PEND
@ 046   ----------------------------------------
mus_zinnia_last_mon_epic_3_046:
	.byte		N96   , Dn3 , v056
	.byte		N96   , Dn4 , v052
	.byte		N96   , Fs4 
	.byte	W96
	.byte	PEND
@ 047   ----------------------------------------
mus_zinnia_last_mon_epic_3_047:
	.byte		N96   , Cs3 , v056
	.byte		N96   , Cs4 , v052
	.byte		N96   , En4 
	.byte	W92
	.byte	W01
	.byte		        Dn3 
	.byte	W03
	.byte	PEND
@ 048   ----------------------------------------
mus_zinnia_last_mon_epic_3_048:
	.byte		N96   , Bn2 , v056
	.byte		N96   , Bn3 , v052
	.byte		N96   , Dn4 
	.byte	W96
	.byte	PEND
@ 049   ----------------------------------------
mus_zinnia_last_mon_epic_3_049:
	.byte		N96   , Gs2 , v056
	.byte		N96   , Gs3 , v052
	.byte		N96   , Cs4 
	.byte	W96
	.byte	PEND
@ 050   ----------------------------------------
mus_zinnia_last_mon_epic_3_050:
	.byte		N12   , An2 , v064
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        An2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        An2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W24
	.byte	PEND
@ 051   ----------------------------------------
mus_zinnia_last_mon_epic_3_051:
	.byte	W12
	.byte		N12   , Bn2 , v064
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W36
	.byte		        Bn2 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        Bn2 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
mus_zinnia_last_mon_epic_3_052:
	.byte		N12   , Cs3 , v064
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Cs3 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Cs3 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W24
	.byte	PEND
@ 053   ----------------------------------------
mus_zinnia_last_mon_epic_3_053:
	.byte	W12
	.byte		N12   , Dn3 , v064
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Dn3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W24
	.byte	PEND
@ 054   ----------------------------------------
mus_zinnia_last_mon_epic_3_054:
	.byte		N12   , Dn3 , v064
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn3 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn3 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W24
	.byte	PEND
@ 055   ----------------------------------------
mus_zinnia_last_mon_epic_3_055:
	.byte	W12
	.byte		N12   , Cs3 , v064
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W36
	.byte		        Cs3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        Cs3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W24
	.byte	PEND
@ 056   ----------------------------------------
mus_zinnia_last_mon_epic_3_056:
	.byte		N12   , Bn2 , v064
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W24
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_055
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_054
@ 059   ----------------------------------------
mus_zinnia_last_mon_epic_3_059:
	.byte	W12
	.byte		N12   , En3 , v064
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        En3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        En3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W24
	.byte	PEND
@ 060   ----------------------------------------
mus_zinnia_last_mon_epic_3_060:
	.byte		N12   , Cs3 , v064
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Cs3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Cs3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W24
	.byte	PEND
@ 061   ----------------------------------------
mus_zinnia_last_mon_epic_3_061:
	.byte	W12
	.byte		N12   , Cs3 , v064
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Cs3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        Cs3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W24
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_060
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_061
@ 064   ----------------------------------------
mus_zinnia_last_mon_epic_3_064:
	.byte		N48   , An2 , v052
	.byte		N48   , En3 
	.byte		N12   , An3 
	.byte	W36
	.byte		        An2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W36
	.byte		        An2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W24
	.byte	PEND
@ 065   ----------------------------------------
mus_zinnia_last_mon_epic_3_065:
	.byte	W12
	.byte		N12   , An2 , v052
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W36
	.byte		        An2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W24
	.byte		        An2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W24
	.byte	PEND
@ 066   ----------------------------------------
mus_zinnia_last_mon_epic_3_066:
	.byte		N12   , An2 , v052
	.byte		N12   , An3 
	.byte		TIE   , Bn3 
	.byte	W36
	.byte		N12   , An2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W36
	.byte		        An2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W24
	.byte	PEND
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_065
	.byte		EOT   , Bn3 
@ 068   ----------------------------------------
mus_zinnia_last_mon_epic_3_068:
	.byte		N12   , An2 , v052
	.byte		N48   , An3 
	.byte		N96   , En4 
	.byte	W36
	.byte		N12   , An2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W36
	.byte		        An2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W24
	.byte	PEND
@ 069   ----------------------------------------
mus_zinnia_last_mon_epic_3_069:
	.byte		N24   , En3 , v052
	.byte		N96   , En4 
	.byte		N48   , Gs4 
	.byte	W12
	.byte		N12   , An2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		N12   , An2 , v052
	.byte		N24   , Fs3 
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Bn2 
	.byte		N24   , Gs3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_010
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_011
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_010
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_011
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_010
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_011
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_010
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_011
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_018
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_019
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_042
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_043
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_044
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_045
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_046
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_047
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_048
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_049
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_051
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_053
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_054
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_055
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_056
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_055
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_054
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_059
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_060
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_061
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_060
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_061
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_064
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_065
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_066
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_065
	.byte		EOT   , Bn3 
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_068
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_3_069
@ 130   ----------------------------------------
	.byte	W06
	.byte	GOTO
	 .word	mus_zinnia_last_mon_epic_3_B1
mus_zinnia_last_mon_epic_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_zinnia_last_mon_epic_4:
	.byte	KEYSH , mus_zinnia_last_mon_epic_key+0
mus_zinnia_last_mon_epic_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 112*mus_zinnia_last_mon_epic_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v072
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v072
	.byte	W24
	.byte		        Cn1 , v100
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		N02   
	.byte	W03
@ 002   ----------------------------------------
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v048
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v048
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		        Fs1 , v048
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Fs1 , v056
	.byte	W03
	.byte		        Fs1 , v052
	.byte	W03
	.byte		        Fs1 , v056
	.byte	W03
	.byte		        Fs1 , v060
	.byte	W03
@ 006   ----------------------------------------
mus_zinnia_last_mon_epic_4_006:
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_zinnia_last_mon_epic_4_007:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_zinnia_last_mon_epic_4_008:
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 013   ----------------------------------------
mus_zinnia_last_mon_epic_4_013:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 017   ----------------------------------------
mus_zinnia_last_mon_epic_4_017:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W03
	.byte	PEND
@ 018   ----------------------------------------
mus_zinnia_last_mon_epic_4_018:
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_zinnia_last_mon_epic_4_019:
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_zinnia_last_mon_epic_4_020:
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_zinnia_last_mon_epic_4_021:
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 025   ----------------------------------------
mus_zinnia_last_mon_epic_4_025:
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W03
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W03
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_021
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_019
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 041   ----------------------------------------
mus_zinnia_last_mon_epic_4_041:
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte	PEND
@ 042   ----------------------------------------
mus_zinnia_last_mon_epic_4_042:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W96
	.byte	PEND
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte		        Cn1 , v088
	.byte	W96
@ 045   ----------------------------------------
mus_zinnia_last_mon_epic_4_045:
	.byte	W72
	.byte		N02   , Cn1 , v092
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 046   ----------------------------------------
mus_zinnia_last_mon_epic_4_046:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
mus_zinnia_last_mon_epic_4_047:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte	PEND
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_046
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_047
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_007
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_013
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 057   ----------------------------------------
mus_zinnia_last_mon_epic_4_057:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_013
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_013
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 063   ----------------------------------------
mus_zinnia_last_mon_epic_4_063:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte	PEND
@ 064   ----------------------------------------
mus_zinnia_last_mon_epic_4_064:
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_zinnia_last_mon_epic_4_065:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte	PEND
@ 066   ----------------------------------------
mus_zinnia_last_mon_epic_4_066:
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_065
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_066
@ 069   ----------------------------------------
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v056
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W01
	.byte		N01   
	.byte	W05
	.byte		N02   , Cn1 , v100
	.byte	W01
	.byte		        Fs1 , v064
	.byte	W05
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_006
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_007
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_013
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_007
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_017
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_025
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_018
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_019
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_021
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_019
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_025
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_018
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_019
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_021
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_019
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_020
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_041
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_042
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte		N02   , Cn1 , v088
	.byte	W96
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_045
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_046
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_047
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_046
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_047
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_007
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_013
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_007
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_057
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_013
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_013
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_008
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_063
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_064
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_065
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_066
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_065
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_epic_4_066
@ 129   ----------------------------------------
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v056
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W01
	.byte		N01   
	.byte	W05
	.byte		N02   , Cn1 , v092
	.byte	W01
	.byte		        Fs1 , v064
	.byte	W05
@ 130   ----------------------------------------
	.byte	W06
	.byte	GOTO
	 .word	mus_zinnia_last_mon_epic_4_B1
mus_zinnia_last_mon_epic_4_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_zinnia_last_mon_epic:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_zinnia_last_mon_epic_pri	@ Priority
	.byte	mus_zinnia_last_mon_epic_rev	@ Reverb.

	.word	mus_zinnia_last_mon_epic_grp

	.word	mus_zinnia_last_mon_epic_1
	.word	mus_zinnia_last_mon_epic_2
	.word	mus_zinnia_last_mon_epic_3
	.word	mus_zinnia_last_mon_epic_4

	.end
