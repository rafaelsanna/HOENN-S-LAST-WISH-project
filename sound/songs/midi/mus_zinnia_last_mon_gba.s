	.include "MPlayDef.s"

	.equ	mus_zinnia_last_mon_gba_grp, voicegroup_applause
	.equ	mus_zinnia_last_mon_gba_pri, 0
	.equ	mus_zinnia_last_mon_gba_rev, reverb_set+12
	.equ	mus_zinnia_last_mon_gba_mvl, 90
	.equ	mus_zinnia_last_mon_gba_key, 0
	.equ	mus_zinnia_last_mon_gba_tbs, 1
	.equ	mus_zinnia_last_mon_gba_exg, 0
	.equ	mus_zinnia_last_mon_gba_cmp, 1

	.section .rodata
	.global	mus_zinnia_last_mon_gba
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_zinnia_last_mon_gba_1:
	.byte	KEYSH , mus_zinnia_last_mon_gba_key+0
mus_zinnia_last_mon_gba_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 180*mus_zinnia_last_mon_gba_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 94*mus_zinnia_last_mon_gba_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N96   , Cs1 , v068
	.byte	W96
@ 002   ----------------------------------------
	.byte		N48   , Dn1 
	.byte	W48
	.byte		        En1 
	.byte	W48
@ 003   ----------------------------------------
	.byte		TIE   , Fs1 
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 007   ----------------------------------------
mus_zinnia_last_mon_gba_1_007:
	.byte		N12   , Fs0 , v068
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 012   ----------------------------------------
mus_zinnia_last_mon_gba_1_012:
	.byte		N12   , Fs0 , v068
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 018   ----------------------------------------
mus_zinnia_last_mon_gba_1_018:
	.byte		N12   , Fs0 , v068
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_zinnia_last_mon_gba_1_019:
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_zinnia_last_mon_gba_1_020:
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 026   ----------------------------------------
mus_zinnia_last_mon_gba_1_026:
	.byte		N12   , Gn0 , v068
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Gs0 
	.byte		N12   , Gs1 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_020
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_020
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_026
@ 035   ----------------------------------------
mus_zinnia_last_mon_gba_1_035:
	.byte		N12   , Ds0 , v068
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_035
@ 037   ----------------------------------------
mus_zinnia_last_mon_gba_1_037:
	.byte		N12   , Ds0 , v068
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Gn0 
	.byte		N12   , Fs1 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_zinnia_last_mon_gba_1_038:
	.byte		N12   , Cs0 , v068
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_038
@ 040   ----------------------------------------
mus_zinnia_last_mon_gba_1_040:
	.byte		N12   , Dn0 , v068
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_040
@ 042   ----------------------------------------
mus_zinnia_last_mon_gba_1_042:
	.byte		N12   , Dn0 , v068
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N48   , Dn0 
	.byte		N48   , Dn1 
	.byte	W48
	.byte	PEND
@ 043   ----------------------------------------
	.byte		N96   , Dn0 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        En0 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Fs0 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Gn0 
	.byte	W96
@ 047   ----------------------------------------
mus_zinnia_last_mon_gba_1_047:
	.byte		N36   , Dn1 , v068
	.byte	W36
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 048   ----------------------------------------
mus_zinnia_last_mon_gba_1_048:
	.byte		N48   , Cs1 , v068
	.byte	W48
	.byte		N24   , An0 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte	PEND
@ 049   ----------------------------------------
mus_zinnia_last_mon_gba_1_049:
	.byte		N48   , Bn0 , v068
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte	PEND
@ 050   ----------------------------------------
mus_zinnia_last_mon_gba_1_050:
	.byte		N24   , Cs1 , v068
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
	 .word	mus_zinnia_last_mon_gba_1_040
@ 052   ----------------------------------------
mus_zinnia_last_mon_gba_1_052:
	.byte		N12   , En0 , v068
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_040
@ 056   ----------------------------------------
mus_zinnia_last_mon_gba_1_056:
	.byte		N12   , Cs0 , v068
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
mus_zinnia_last_mon_gba_1_057:
	.byte		N12   , Bn0 , v068
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
	 .word	mus_zinnia_last_mon_gba_1_056
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_040
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_052
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_012
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_012
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_012
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_020
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_026
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_020
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_020
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_020
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_026
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_035
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_035
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_037
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_038
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_038
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_040
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_040
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_042
@ 103   ----------------------------------------
	.byte		N96   , Dn0 , v068
	.byte	W96
@ 104   ----------------------------------------
	.byte		        En0 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Fs0 
	.byte	W96
@ 106   ----------------------------------------
	.byte		        Gn0 
	.byte	W96
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_047
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_048
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_049
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_040
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_019
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_040
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_056
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_057
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_056
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_040
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_052
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_1_007
@ 131   ----------------------------------------
	.byte	W01
	.byte	GOTO
	 .word	mus_zinnia_last_mon_gba_1_B1
mus_zinnia_last_mon_gba_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_zinnia_last_mon_gba_2:
	.byte	KEYSH , mus_zinnia_last_mon_gba_key+0
mus_zinnia_last_mon_gba_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 6
	.byte		VOL   , 102*mus_zinnia_last_mon_gba_mvl/mxv
	.byte		PAN   , c_v+14
	.byte		N06   , Cs4 , v080
	.byte		N06   , Cs5 
	.byte		N06   , Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte		N06   , As5 
	.byte	W06
	.byte		        An4 
	.byte		N06   , An5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Gs5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        An4 
	.byte		N06   , An5 
	.byte	W06
	.byte		N12   , Bn2 
	.byte		N06   , Gs4 
	.byte		N06   , Gs5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		N12   , An2 
	.byte		N06   , En4 
	.byte		N06   , En5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   , Gs2 
	.byte		N06   , Fs4 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        En4 
	.byte		N06   , En5 
	.byte	W06
	.byte		N12   , Gn2 
	.byte		N06   , Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N06   , En4 
	.byte		N06   , En5 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , An4 
	.byte		N06   , Dn5 
	.byte	W06
@ 001   ----------------------------------------
	.byte		N48   , Dn2 
	.byte		N78   , Gs4 
	.byte		N24   , Cs5 
	.byte	W06
	.byte		N06   , En4 
	.byte		N06   , En5 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		N24   , Cs4 
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		N48   , En2 
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , Cs5 
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
	.byte		TIE   , Fs2 
	.byte		N24   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N24   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , An3 
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
@ 003   ----------------------------------------
	.byte		        An2 
	.byte		N36   , En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N24   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
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
@ 004   ----------------------------------------
	.byte		        An2 
	.byte		N48   , En3 
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
@ 005   ----------------------------------------
	.byte		        An2 
	.byte		N36   , En3 
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
	.byte		N12   , Gs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N48   , Bn3 
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
@ 006   ----------------------------------------
	.byte		        An2 
	.byte		N48   , En3 
	.byte		N96   , Cs4 
	.byte	W12
	.byte		N12   , Cs3 
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
@ 007   ----------------------------------------
	.byte		        An2 
	.byte		N60   , An3 
	.byte		N48   , Cs4 
	.byte	W12
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
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
@ 008   ----------------------------------------
	.byte		        An2 
	.byte		N36   , An3 
	.byte		N96   , Dn4 
	.byte	W12
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , An3 
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
@ 009   ----------------------------------------
	.byte		        An2 
	.byte		N60   , An3 
	.byte		N48   , Cs4 
	.byte	W12
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
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
	.byte		N24   , Bn2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W06
	.byte		EOT   , Fs2 
	.byte	W06
@ 010   ----------------------------------------
mus_zinnia_last_mon_gba_2_010:
	.byte		N12   , Fs2 , v080
	.byte		N48   , Fs3 
	.byte		N48   , Fs4 
	.byte	W36
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_zinnia_last_mon_gba_2_011:
	.byte	W12
	.byte		N12   , An2 , v080
	.byte		N12   , An3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N12   , Gs2 
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Dn4 
	.byte		N24   , En5 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
mus_zinnia_last_mon_gba_2_012:
	.byte		N12   , Fs2 , v080
	.byte		N12   , Fs3 
	.byte		N96   , Cs5 
	.byte	W36
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_zinnia_last_mon_gba_2_013:
	.byte	W12
	.byte		N12   , An2 , v080
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte		N06   , Cs5 
	.byte	W12
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N12   , Gs2 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_010
@ 015   ----------------------------------------
mus_zinnia_last_mon_gba_2_015:
	.byte	W09
	.byte		N42   , Gs3 , v080
	.byte		N42   , Gs4 
	.byte	W03
	.byte		N12   , An2 
	.byte		N12   , An3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Gs2 
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_zinnia_last_mon_gba_2_016:
	.byte		N12   , Fs2 , v080
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
@ 017   ----------------------------------------
mus_zinnia_last_mon_gba_2_017:
	.byte	W12
	.byte		N12   , An2 , v080
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
@ 018   ----------------------------------------
mus_zinnia_last_mon_gba_2_018:
	.byte		N12   , Gn2 , v080
	.byte		N48   , Gn3 
	.byte		N48   , Gn4 
	.byte	W36
	.byte		N12   , Gn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_zinnia_last_mon_gba_2_019:
	.byte	W12
	.byte		N12   , As2 , v080
	.byte		N12   , As3 
	.byte		N36   , An4 
	.byte	W36
	.byte		N12   , An2 
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Gs2 
	.byte		N24   , Ds4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
mus_zinnia_last_mon_gba_2_020:
	.byte		N12   , Gn2 , v080
	.byte		N12   , Gn3 
	.byte		N96   , Dn5 
	.byte	W36
	.byte		N12   , Gn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
mus_zinnia_last_mon_gba_2_021:
	.byte	W12
	.byte		N12   , As2 , v080
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Dn4 
	.byte		N06   , Dn5 
	.byte	W12
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N12   , An2 
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N24   , Gs2 
	.byte		N06   , As3 
	.byte		N06   , As4 
	.byte	W12
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_018
@ 023   ----------------------------------------
mus_zinnia_last_mon_gba_2_023:
	.byte	W09
	.byte		N42   , An3 , v080
	.byte		N42   , An4 
	.byte	W03
	.byte		N12   , As2 
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        An2 
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Gs2 
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
mus_zinnia_last_mon_gba_2_024:
	.byte		N12   , Gn2 , v080
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
@ 025   ----------------------------------------
mus_zinnia_last_mon_gba_2_025:
	.byte	W12
	.byte		N12   , As2 , v080
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
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 042   ----------------------------------------
mus_zinnia_last_mon_gba_2_042:
	.byte		N96   , An2 , v080
	.byte		N96   , Fs3 
	.byte		N96   , Dn4 
	.byte	W96
	.byte	PEND
@ 043   ----------------------------------------
mus_zinnia_last_mon_gba_2_043:
	.byte		N96   , Bn2 , v080
	.byte		N96   , Gs3 
	.byte		N96   , En4 
	.byte	W96
	.byte	PEND
@ 044   ----------------------------------------
mus_zinnia_last_mon_gba_2_044:
	.byte		N96   , Cs3 , v080
	.byte		N96   , An3 
	.byte		N96   , Fs4 
	.byte	W96
	.byte	PEND
@ 045   ----------------------------------------
mus_zinnia_last_mon_gba_2_045:
	.byte		N96   , Dn3 , v080
	.byte		N96   , Bn3 
	.byte		N96   , Gn4 
	.byte	W96
	.byte	PEND
@ 046   ----------------------------------------
mus_zinnia_last_mon_gba_2_046:
	.byte		N96   , Dn3 , v080
	.byte		N96   , Dn4 
	.byte		N96   , Fs4 
	.byte	W36
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
mus_zinnia_last_mon_gba_2_047:
	.byte		N96   , Cs3 , v080
	.byte		N96   , Cs4 
	.byte		N96   , En4 
	.byte	W36
	.byte		N60   , Cs3 
	.byte	W56
	.byte	W01
	.byte		N36   , Dn3 
	.byte	W03
	.byte	PEND
@ 048   ----------------------------------------
mus_zinnia_last_mon_gba_2_048:
	.byte		N96   , Bn2 , v080
	.byte		N96   , Bn3 
	.byte		N96   , Dn4 
	.byte	W36
	.byte		N36   , En3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 049   ----------------------------------------
mus_zinnia_last_mon_gba_2_049:
	.byte		N96   , Gs2 , v080
	.byte		N84   , Gs3 
	.byte		N96   , Cs4 
	.byte	W36
	.byte		N48   , Gs3 
	.byte	W48
	.byte		N06   , En3 
	.byte		N06   , En4 
	.byte		N06   , En5 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte	PEND
@ 050   ----------------------------------------
mus_zinnia_last_mon_gba_2_050:
	.byte		N12   , An2 , v080
	.byte		N12   , An3 
	.byte		N72   , Fs5 
	.byte	W36
	.byte		N12   , An2 
	.byte		N36   , Fs3 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   , An2 
	.byte		N24   , An3 
	.byte		N24   , An5 
	.byte	W24
	.byte	PEND
@ 051   ----------------------------------------
mus_zinnia_last_mon_gba_2_051:
	.byte		N24   , Gs3 , v080
	.byte		N24   , Gs4 
	.byte		N36   , Gs5 
	.byte	W12
	.byte		N12   , Bn2 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		N24   , En3 
	.byte		N36   , En4 
	.byte		N36   , En5 
	.byte	W12
	.byte		N12   , Bn2 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte		N24   , Fs5 
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
mus_zinnia_last_mon_gba_2_052:
	.byte		N48   , Cs3 , v080
	.byte		N48   , Cs4 
	.byte		N72   , Cs5 
	.byte	W36
	.byte		N12   , Cs3 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W36
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte	PEND
@ 053   ----------------------------------------
mus_zinnia_last_mon_gba_2_053:
	.byte		N48   , Cs3 , v080
	.byte		N48   , Cs4 
	.byte		N48   , Cs5 
	.byte	W12
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W36
	.byte		N36   , Bn2 
	.byte		N36   , Bn3 
	.byte		N36   , Bn4 
	.byte	W24
	.byte		N12   , Dn3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Cs4 
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte	PEND
@ 054   ----------------------------------------
mus_zinnia_last_mon_gba_2_054:
	.byte		N72   , Fs2 , v080
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn3 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W36
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte	PEND
@ 055   ----------------------------------------
mus_zinnia_last_mon_gba_2_055:
	.byte		N36   , Bn2 , v080
	.byte		N36   , Bn3 
	.byte		N36   , Bn4 
	.byte	W12
	.byte		N12   , Cs3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		N36   , An2 
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W12
	.byte		N12   , Cs3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 056   ----------------------------------------
mus_zinnia_last_mon_gba_2_056:
	.byte		N72   , Fs2 , v080
	.byte		N48   , Fs3 
	.byte		N48   , Fs4 
	.byte	W36
	.byte		N12   , Bn2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte		N24   , Cs5 
	.byte	W24
	.byte	PEND
@ 057   ----------------------------------------
mus_zinnia_last_mon_gba_2_057:
	.byte		N24   , Bn2 , v080
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W12
	.byte		N12   , Cs3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte		N24   , En5 
	.byte	W24
	.byte	PEND
@ 058   ----------------------------------------
mus_zinnia_last_mon_gba_2_058:
	.byte		N12   , Dn3 , v080
	.byte		N12   , Dn4 
	.byte		N72   , Fs5 
	.byte	W36
	.byte		N12   , Dn3 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn3 
	.byte		N12   , Dn4 
	.byte		N24   , An5 
	.byte	W24
	.byte	PEND
@ 059   ----------------------------------------
mus_zinnia_last_mon_gba_2_059:
	.byte		N24   , Gs3 , v080
	.byte		N24   , Gs4 
	.byte		N24   , Gs5 
	.byte	W12
	.byte		N12   , En3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte		N24   , En5 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte		N24   , Gs5 
	.byte	W24
	.byte	PEND
@ 060   ----------------------------------------
mus_zinnia_last_mon_gba_2_060:
	.byte		N12   , Cs3 , v080
	.byte		N48   , Fs4 
	.byte		TIE   , Fs5 
	.byte	W36
	.byte		N12   , Cs3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Cs3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W24
	.byte	PEND
@ 061   ----------------------------------------
mus_zinnia_last_mon_gba_2_061:
	.byte	W12
	.byte		N12   , Cs3 , v080
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
	.byte		EOT   , Fs5 
@ 062   ----------------------------------------
mus_zinnia_last_mon_gba_2_062:
	.byte		N12   , Cs3 , v080
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_zinnia_last_mon_gba_2_063:
	.byte		N12   , Fs3 , v080
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte		N12   , Bn4 
	.byte	W24
	.byte	PEND
@ 064   ----------------------------------------
mus_zinnia_last_mon_gba_2_064:
	.byte		N48   , An2 , v080
	.byte		N48   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , An2 
	.byte		N36   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_zinnia_last_mon_gba_2_065:
	.byte		N12   , En3 , v080
	.byte		N12   , En4 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N24   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An2 
	.byte		N12   , An3 
	.byte		N18   , En4 
	.byte	W24
	.byte	PEND
@ 066   ----------------------------------------
mus_zinnia_last_mon_gba_2_066:
	.byte		N12   , An2 , v080
	.byte		N12   , An3 
	.byte		TIE   , Bn3 
	.byte	W12
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , An2 
	.byte		N36   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
mus_zinnia_last_mon_gba_2_067:
	.byte		N12   , En3 , v080
	.byte		N12   , En4 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N24   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte	PEND
	.byte		EOT   , Bn3 
	.byte		N12   , An2 
	.byte		N12   , An3 
	.byte		N24   , En4 
	.byte	W24
@ 068   ----------------------------------------
mus_zinnia_last_mon_gba_2_068:
	.byte		N12   , An2 , v080
	.byte		N48   , An3 
	.byte		N96   , En4 
	.byte	W12
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N36   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , An2 
	.byte		N24   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
mus_zinnia_last_mon_gba_2_069:
	.byte		N24   , En3 , v080
	.byte		N48   , En4 
	.byte		N36   , Gs4 
	.byte	W12
	.byte		N12   , An2 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , En3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An2 
	.byte		N12   , An3 
	.byte		N24   , An4 
	.byte	W12
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_010
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_011
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_012
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_013
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_010
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_015
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_016
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_017
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_018
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_024
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_025
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_042
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_043
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_044
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_045
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_046
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_047
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_048
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_049
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_051
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_053
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_054
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_055
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_056
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_057
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_058
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_059
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_060
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_061
	.byte		EOT   , Fs5 
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_062
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_063
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_064
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_065
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_066
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_067
	.byte		EOT   , Bn3 
	.byte		N12   , An2 , v080
	.byte		N12   , An3 
	.byte		N24   , En4 
	.byte	W24
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_068
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_2_069
@ 130   ----------------------------------------
	.byte	W01
	.byte	GOTO
	 .word	mus_zinnia_last_mon_gba_2_B1
mus_zinnia_last_mon_gba_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_zinnia_last_mon_gba_3:
	.byte	KEYSH , mus_zinnia_last_mon_gba_key+0
mus_zinnia_last_mon_gba_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 6
	.byte		VOL   , 94*mus_zinnia_last_mon_gba_mvl/mxv
	.byte		PAN   , c_v-16
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N96   , Cs3 , v072
	.byte		N96   , Fs3 
	.byte	W96
@ 003   ----------------------------------------
	.byte		N84   , En3 
	.byte		N84   , Gs3 
	.byte	W84
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gs3 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N84   , Fs3 
	.byte		N84   , An3 
	.byte	W84
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , An3 
	.byte	W06
@ 005   ----------------------------------------
	.byte		N96   , Gs3 
	.byte		N96   , Bn3 
	.byte	W96
@ 006   ----------------------------------------
	.byte		N72   , An3 
	.byte		N72   , Cs4 
	.byte	W72
	.byte		N24   
	.byte		N24   , En4 
	.byte	W24
@ 007   ----------------------------------------
	.byte		N72   , An3 
	.byte		N72   , Cs4 
	.byte	W72
	.byte		N24   , En4 
	.byte		N24   , Gs4 
	.byte	W24
@ 008   ----------------------------------------
	.byte		N84   , Fs4 
	.byte		N84   , An4 
	.byte	W84
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fs4 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N48   , En4 
	.byte		N48   , Bn4 
	.byte	W48
	.byte		        Fs4 
	.byte		N48   , Cs5 
	.byte	W48
@ 010   ----------------------------------------
mus_zinnia_last_mon_gba_3_010:
	.byte		N12   , Cs4 , v072
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Cs4 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Cs4 
	.byte		N12   , Fs4 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_zinnia_last_mon_gba_3_011:
	.byte	W12
	.byte		N12   , Cs4 , v072
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Cs4 
	.byte		N12   , Fs4 
	.byte	W24
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_011
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_011
@ 018   ----------------------------------------
mus_zinnia_last_mon_gba_3_018:
	.byte		N48   , Dn4 , v072
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_zinnia_last_mon_gba_3_019:
	.byte		N48   , Cn3 , v072
	.byte		N48   , Cn4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		N36   , Fn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_zinnia_last_mon_gba_3_020:
	.byte		N48   , Dn4 , v072
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_zinnia_last_mon_gba_3_021:
	.byte		N24   , As3 , v072
	.byte		N36   , As4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N24   , An3 
	.byte		N36   , An4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N24   , Fn4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_zinnia_last_mon_gba_3_022:
	.byte		N12   , Dn4 , v072
	.byte		N48   , Gn4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_zinnia_last_mon_gba_3_023:
	.byte		N48   , Cn3 , v072
	.byte		N48   , Cn4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		N48   , Fn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_018
@ 025   ----------------------------------------
mus_zinnia_last_mon_gba_3_025:
	.byte	W12
	.byte		N12   , Dn4 , v072
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
mus_zinnia_last_mon_gba_3_026:
	.byte		N12   , Gn4 , v072
	.byte		N96   , As4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_zinnia_last_mon_gba_3_027:
	.byte		N48   , An3 , v072
	.byte		N48   , An4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		N12   
	.byte		N48   , Cn5 
	.byte	W24
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_zinnia_last_mon_gba_3_028:
	.byte		N12   , Gn4 , v072
	.byte		N48   , Bn4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N36   , Gn3 
	.byte		N48   , En4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
mus_zinnia_last_mon_gba_3_029:
	.byte		N48   , Fs3 , v072
	.byte		N48   , Ds4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		N12   
	.byte		N48   , Gs4 
	.byte	W24
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
mus_zinnia_last_mon_gba_3_030:
	.byte		N12   , Dn4 , v072
	.byte		N48   , Gn4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte	PEND
@ 031   ----------------------------------------
mus_zinnia_last_mon_gba_3_031:
	.byte		N48   , Gn3 , v072
	.byte		N24   , Dn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn4 
	.byte	W36
	.byte		N48   , Fn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_018
@ 033   ----------------------------------------
mus_zinnia_last_mon_gba_3_033:
	.byte	W12
	.byte		N12   , Dn4 , v072
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_026
@ 035   ----------------------------------------
mus_zinnia_last_mon_gba_3_035:
	.byte		N48   , An3 , v072
	.byte		N48   , An4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		N12   
	.byte		N24   , As4 
	.byte	W24
	.byte		        Gs4 
	.byte		N24   , Cn5 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
mus_zinnia_last_mon_gba_3_036:
	.byte		N12   , Gn4 , v072
	.byte		N06   , An4 
	.byte	W06
	.byte		N78   , As3 
	.byte		N78   , As4 
	.byte	W30
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
mus_zinnia_last_mon_gba_3_037:
	.byte		N84   , Ds3 , v072
	.byte		N84   , Ds4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		        Ds4 
	.byte		N24   , Gs4 
	.byte	W18
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte	PEND
@ 038   ----------------------------------------
mus_zinnia_last_mon_gba_3_038:
	.byte		N96   , Ds4 , v072
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte	PEND
@ 039   ----------------------------------------
mus_zinnia_last_mon_gba_3_039:
	.byte		N06   , Cn3 , v072
	.byte		N06   , Cn4 
	.byte	W08
	.byte		        Gn2 
	.byte		N06   , Gn3 
	.byte	W04
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W04
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W08
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W08
	.byte		        Gn2 
	.byte		N06   , Gn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W08
	.byte		        Ds4 
	.byte		N12   , Gn4 
	.byte	W08
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte	W08
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W08
	.byte		N24   
	.byte		N24   , Gs4 
	.byte	W08
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W08
	.byte		        Gn3 
	.byte		N06   , Gn4 
	.byte	W08
	.byte	PEND
@ 040   ----------------------------------------
mus_zinnia_last_mon_gba_3_040:
	.byte		N12   , Gn4 , v072
	.byte		N84   , As4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte	PEND
@ 041   ----------------------------------------
mus_zinnia_last_mon_gba_3_041:
	.byte		N60   , An3 , v072
	.byte		N96   , An4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 042   ----------------------------------------
	.byte		N72   , Fs3 
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N06   , Fs3 
	.byte		N06   , Fs4 
	.byte	W08
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W08
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W08
@ 043   ----------------------------------------
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W08
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W08
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W08
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W08
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W08
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W08
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W08
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W08
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W08
	.byte		        En4 
	.byte		N06   , En5 
	.byte	W08
	.byte		        En3 
	.byte		N06   , En4 
	.byte	W08
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W08
@ 044   ----------------------------------------
	.byte		N84   , En3 
	.byte		N84   , En4 
	.byte	W84
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W06
@ 045   ----------------------------------------
	.byte		N48   , Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W48
@ 046   ----------------------------------------
	.byte		N96   , Dn4 
	.byte		N96   , Fs4 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Cs4 
	.byte		N96   , En4 
	.byte	W96
@ 048   ----------------------------------------
	.byte		N48   , Bn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W08
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W08
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W08
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W08
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W08
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W08
@ 049   ----------------------------------------
	.byte		N96   , Gs3 
	.byte		N96   , Cs4 
	.byte	W96
@ 050   ----------------------------------------
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		N24   , En4 
	.byte		N12   , Fs4 
	.byte	W24
@ 051   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Ds4 
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		N36   , En3 
	.byte		N24   , Bn3 
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W24
@ 052   ----------------------------------------
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W36
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W36
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W24
@ 053   ----------------------------------------
	.byte		N48   , En3 
	.byte		N48   , Gn3 
	.byte	W12
	.byte		N12   , Gn4 
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W24
@ 054   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , An4 
	.byte	W36
	.byte		N24   , Fs4 
	.byte		N12   , An4 
	.byte	W24
@ 055   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N24   , En4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gs4 
	.byte	W24
	.byte		N36   , An3 
	.byte		N36   , Dn4 
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W24
@ 056   ----------------------------------------
mus_zinnia_last_mon_gba_3_056:
	.byte		N12   , Fs4 , v072
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Fs4 
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Fs4 
	.byte		N12   , Bn4 
	.byte	W24
	.byte	PEND
@ 057   ----------------------------------------
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W24
@ 058   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , An4 
	.byte	W24
@ 059   ----------------------------------------
	.byte		N96   , Gs3 
	.byte		N24   , En4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        En4 
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        En4 
	.byte		N12   , Bn4 
	.byte	W24
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_056
@ 061   ----------------------------------------
mus_zinnia_last_mon_gba_3_061:
	.byte	W12
	.byte		N12   , Fs4 , v072
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Fs4 
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        Fs4 
	.byte		N12   , Bn4 
	.byte	W24
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_056
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_061
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
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_010
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_011
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_010
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_011
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_010
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_011
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_010
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_011
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_022
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_018
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_025
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_026
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_027
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_028
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_029
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_030
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_031
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_018
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_033
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_026
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_035
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_036
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_037
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_038
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_039
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_040
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_041
@ 102   ----------------------------------------
	.byte		N72   , Fs3 , v072
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N06   , Fs3 
	.byte		N06   , Fs4 
	.byte	W08
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W09
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W07
@ 103   ----------------------------------------
	.byte	W01
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W08
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W08
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W08
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W08
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W08
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W08
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W08
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W08
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W08
	.byte		        En4 
	.byte		N06   , En5 
	.byte	W08
	.byte		        En3 
	.byte		N06   , En4 
	.byte	W08
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W07
@ 104   ----------------------------------------
	.byte	W01
	.byte		N84   , En3 
	.byte		N84   , En4 
	.byte	W84
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W05
@ 105   ----------------------------------------
	.byte	W01
	.byte		N48   , Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W44
	.byte	W03
@ 106   ----------------------------------------
	.byte	W01
	.byte		N96   , Dn4 
	.byte		N96   , Fs4 
	.byte	W92
	.byte	W03
@ 107   ----------------------------------------
	.byte	W01
	.byte		        Cs4 
	.byte		N96   , En4 
	.byte	W92
	.byte	W03
@ 108   ----------------------------------------
	.byte	W01
	.byte		N48   , Bn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W08
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W08
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W08
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W08
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W08
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W07
@ 109   ----------------------------------------
	.byte	W01
	.byte		N96   , Gs3 
	.byte		N96   , Cs4 
	.byte	W92
	.byte	W03
@ 110   ----------------------------------------
	.byte	W01
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		N24   , En4 
	.byte		N12   , Fs4 
	.byte	W23
@ 111   ----------------------------------------
	.byte	W01
	.byte		N36   , Gs3 
	.byte		N36   , Ds4 
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		N36   , En3 
	.byte		N24   , Bn3 
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W23
@ 112   ----------------------------------------
	.byte	W01
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W36
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W36
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W23
@ 113   ----------------------------------------
	.byte	W01
	.byte		N48   , En3 
	.byte		N48   , Gn3 
	.byte	W12
	.byte		N12   , Gn4 
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W23
@ 114   ----------------------------------------
	.byte	W01
	.byte		N48   , Dn4 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , An4 
	.byte	W36
	.byte		N24   , Fs4 
	.byte		N12   , An4 
	.byte	W23
@ 115   ----------------------------------------
	.byte	W01
	.byte		N36   , Bn3 
	.byte		N24   , En4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gs4 
	.byte	W24
	.byte		N36   , An3 
	.byte		N36   , Dn4 
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W23
@ 116   ----------------------------------------
mus_zinnia_last_mon_gba_3_116:
	.byte	W01
	.byte		N12   , Fs4 , v072
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Fs4 
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Fs4 
	.byte		N12   , Bn4 
	.byte	W23
	.byte	PEND
@ 117   ----------------------------------------
	.byte	W01
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W23
@ 118   ----------------------------------------
	.byte	W01
	.byte		N48   , Dn4 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn4 
	.byte		N12   , An4 
	.byte	W23
@ 119   ----------------------------------------
	.byte	W01
	.byte		N96   , Gs3 
	.byte		N24   , En4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        En4 
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        En4 
	.byte		N12   , Bn4 
	.byte	W23
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_116
@ 121   ----------------------------------------
mus_zinnia_last_mon_gba_3_121:
	.byte	W13
	.byte		N12   , Fs4 , v072
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Fs4 
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        Fs4 
	.byte		N12   , Bn4 
	.byte	W23
	.byte	PEND
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_116
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_3_121
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
	.byte	W01
	.byte	GOTO
	 .word	mus_zinnia_last_mon_gba_3_B1
mus_zinnia_last_mon_gba_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_zinnia_last_mon_gba_4:
	.byte	KEYSH , mus_zinnia_last_mon_gba_key+0
mus_zinnia_last_mon_gba_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 6
	.byte		VOL   , 82*mus_zinnia_last_mon_gba_mvl/mxv
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
mus_zinnia_last_mon_gba_4_006:
	.byte		N24   , Fs2 , v068
	.byte	W36
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
mus_zinnia_last_mon_gba_4_007:
	.byte	W12
	.byte		N24   , Fs2 , v068
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_006
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_007
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_006
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_007
@ 018   ----------------------------------------
mus_zinnia_last_mon_gba_4_018:
	.byte		N24   , Gn2 , v068
	.byte	W36
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_zinnia_last_mon_gba_4_019:
	.byte	W12
	.byte		N24   , Gn2 , v068
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
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
mus_zinnia_last_mon_gba_4_050:
	.byte		N24   , Dn1 , v068
	.byte	W36
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 051   ----------------------------------------
mus_zinnia_last_mon_gba_4_051:
	.byte	W12
	.byte		N24   , En1 , v068
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
mus_zinnia_last_mon_gba_4_052:
	.byte		N24   , Fs1 , v068
	.byte	W36
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 053   ----------------------------------------
mus_zinnia_last_mon_gba_4_053:
	.byte	W12
	.byte		N24   , Gn1 , v068
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_050
@ 055   ----------------------------------------
mus_zinnia_last_mon_gba_4_055:
	.byte	W12
	.byte		N24   , Cs1 , v068
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 056   ----------------------------------------
mus_zinnia_last_mon_gba_4_056:
	.byte		N24   , Bn0 , v068
	.byte	W36
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_055
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_050
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_051
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_052
@ 061   ----------------------------------------
mus_zinnia_last_mon_gba_4_061:
	.byte	W12
	.byte		N24   , Fs1 , v068
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_052
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_061
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
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_006
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_007
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_006
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_007
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_006
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_007
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_006
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_007
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_018
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_019
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
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_051
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_053
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_050
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_055
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_056
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_055
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_050
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_051
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_052
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_061
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_052
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_4_061
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
	.byte	W01
	.byte	GOTO
	 .word	mus_zinnia_last_mon_gba_4_B1
mus_zinnia_last_mon_gba_4_B2:
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_zinnia_last_mon_gba_5:
	.byte	KEYSH , mus_zinnia_last_mon_gba_key+0
mus_zinnia_last_mon_gba_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 6
	.byte		VOL   , 72*mus_zinnia_last_mon_gba_mvl/mxv
	.byte		PAN   , c_v+22
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs2 , v064
	.byte		N96   , Fs3 
	.byte	W90
@ 003   ----------------------------------------
	.byte	W06
	.byte		N84   , Gs2 
	.byte		N84   , Gs3 
	.byte	W84
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Gs2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N84   , An2 
	.byte		N84   , An3 
	.byte	W84
	.byte		N06   , Gs2 
	.byte		N06   , Gs3 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        An2 
	.byte		N06   , An3 
	.byte	W06
	.byte		N96   , Bn2 
	.byte		N96   , Bn3 
	.byte	W90
@ 006   ----------------------------------------
	.byte	W06
	.byte		N72   , Cs3 
	.byte		N72   , Cs4 
	.byte	W72
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte	W18
@ 007   ----------------------------------------
	.byte	W06
	.byte		N72   , Cs3 
	.byte		N72   , Cs4 
	.byte	W72
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W18
@ 008   ----------------------------------------
	.byte	W06
	.byte		N84   , An3 
	.byte		N84   , An4 
	.byte	W84
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
@ 009   ----------------------------------------
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W48
	.byte		        Cs4 
	.byte		N48   , Cs5 
	.byte	W42
@ 010   ----------------------------------------
mus_zinnia_last_mon_gba_5_010:
	.byte	W06
	.byte		TIE   , Fs3 , v064
	.byte		TIE   , Fs4 
	.byte	W90
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W12
	.byte		EOT   , Fs3 
	.byte		        Fs4 
	.byte	W06
	.byte		N36   , Gs3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , En5 
	.byte	W18
@ 012   ----------------------------------------
mus_zinnia_last_mon_gba_5_012:
	.byte	W06
	.byte		N96   , Cs4 , v064
	.byte		N96   , Cs5 
	.byte	W90
	.byte	PEND
@ 013   ----------------------------------------
mus_zinnia_last_mon_gba_5_013:
	.byte	W18
	.byte		N12   , Bn3 , v064
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte		N06   , Cs5 
	.byte	W12
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
mus_zinnia_last_mon_gba_5_014:
	.byte	W06
	.byte		N96   , Fs3 , v064
	.byte		N96   , Fs4 
	.byte	W90
	.byte	PEND
@ 015   ----------------------------------------
mus_zinnia_last_mon_gba_5_015:
	.byte	W15
	.byte		N42   , Gs3 , v064
	.byte		N42   , Gs4 
	.byte	W36
	.byte	W03
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , En4 
	.byte	W18
	.byte	PEND
@ 016   ----------------------------------------
mus_zinnia_last_mon_gba_5_016:
	.byte	W06
	.byte		TIE   , Cs3 , v064
	.byte		TIE   , Cs4 
	.byte	W90
	.byte	PEND
@ 017   ----------------------------------------
	.byte	W54
	.byte		EOT   , Cs3 
	.byte		        Cs4 
	.byte	W24
	.byte		N24   , Cn3 
	.byte		N24   , Cn4 
	.byte	W18
@ 018   ----------------------------------------
mus_zinnia_last_mon_gba_5_018:
	.byte	W06
	.byte		TIE   , Gn3 , v064
	.byte		TIE   , Gn4 
	.byte	W90
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W12
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte	W06
	.byte		N36   , An3 
	.byte		N36   , An4 
	.byte	W36
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , Fn5 
	.byte	W18
@ 020   ----------------------------------------
mus_zinnia_last_mon_gba_5_020:
	.byte	W06
	.byte		N96   , Dn4 , v064
	.byte		N96   , Dn5 
	.byte	W90
	.byte	PEND
@ 021   ----------------------------------------
mus_zinnia_last_mon_gba_5_021:
	.byte	W18
	.byte		N12   , Cn4 , v064
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Dn4 
	.byte		N06   , Dn5 
	.byte	W12
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W12
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_zinnia_last_mon_gba_5_022:
	.byte	W06
	.byte		N96   , Gn3 , v064
	.byte		N96   , Gn4 
	.byte	W90
	.byte	PEND
@ 023   ----------------------------------------
mus_zinnia_last_mon_gba_5_023:
	.byte	W15
	.byte		N42   , An3 , v064
	.byte		N42   , An4 
	.byte	W36
	.byte	W03
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Fn4 
	.byte	W18
	.byte	PEND
@ 024   ----------------------------------------
mus_zinnia_last_mon_gba_5_024:
	.byte	W06
	.byte		TIE   , Dn3 , v064
	.byte		TIE   , Dn4 
	.byte	W90
	.byte	PEND
@ 025   ----------------------------------------
	.byte	W54
	.byte		EOT   , Dn3 
	.byte		        Dn4 
	.byte	W42
@ 026   ----------------------------------------
mus_zinnia_last_mon_gba_5_026:
	.byte	W06
	.byte		N96   , As3 , v064
	.byte		N96   , As4 
	.byte	W90
	.byte	PEND
@ 027   ----------------------------------------
mus_zinnia_last_mon_gba_5_027:
	.byte	W06
	.byte		N48   , An3 , v064
	.byte		N48   , An4 
	.byte	W48
	.byte		        Cn4 
	.byte		N48   , Cn5 
	.byte	W42
	.byte	PEND
@ 028   ----------------------------------------
mus_zinnia_last_mon_gba_5_028:
	.byte	W06
	.byte		N48   , Bn3 , v064
	.byte		N48   , Bn4 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W42
	.byte	PEND
@ 029   ----------------------------------------
mus_zinnia_last_mon_gba_5_029:
	.byte	W06
	.byte		N48   , Ds3 , v064
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Gs4 
	.byte	W42
	.byte	PEND
@ 030   ----------------------------------------
mus_zinnia_last_mon_gba_5_030:
	.byte	W06
	.byte		N84   , Gn3 , v064
	.byte		N84   , Gn4 
	.byte	W84
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	PEND
@ 031   ----------------------------------------
mus_zinnia_last_mon_gba_5_031:
	.byte		N06   , Ds3 , v064
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N48   , Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , Fn4 
	.byte	W42
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_024
@ 033   ----------------------------------------
	.byte	W54
	.byte		EOT   , Dn3 
	.byte		        Dn4 
	.byte	W42
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_026
@ 035   ----------------------------------------
mus_zinnia_last_mon_gba_5_035:
	.byte	W06
	.byte		N48   , An3 , v064
	.byte		N48   , An4 
	.byte	W48
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Cn4 
	.byte		N24   , Cn5 
	.byte	W18
	.byte	PEND
@ 036   ----------------------------------------
mus_zinnia_last_mon_gba_5_036:
	.byte	W06
	.byte		N06   , An3 , v064
	.byte		N06   , An4 
	.byte	W06
	.byte		N78   , As3 
	.byte		N78   , As4 
	.byte	W78
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
mus_zinnia_last_mon_gba_5_037:
	.byte		N06   , Gn3 , v064
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N84   , Ds3 
	.byte		N84   , Ds4 
	.byte	W90
	.byte	PEND
@ 038   ----------------------------------------
mus_zinnia_last_mon_gba_5_038:
	.byte	W06
	.byte		N96   , Ds3 , v064
	.byte		N96   , Ds4 
	.byte	W90
	.byte	PEND
@ 039   ----------------------------------------
	.byte	W06
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W07
	.byte		        Gn2 
	.byte		N06   , Gn3 
	.byte	W01
	.byte		N05   , Gn2 
	.byte		N05   , Gn3 
	.byte	W08
	.byte		N06   , Cn3 
	.byte		N05   
	.byte		N06   , Cn4 
	.byte		N05   
	.byte	W08
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W07
	.byte		        Gn2 
	.byte		N06   , Gn3 
	.byte	W01
	.byte		N05   , Gn2 
	.byte		N05   , Gn3 
	.byte	W08
	.byte		N06   , Dn3 
	.byte		N05   
	.byte		N06   , Dn4 
	.byte		N05   
	.byte	W08
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W07
	.byte		        Gn2 
	.byte		N06   , Gn3 
	.byte	W01
	.byte		N05   , Gn2 
	.byte		N05   , Gn3 
	.byte	W08
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W08
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W07
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W01
	.byte		N05   , Fn3 
	.byte		N05   , Fn4 
	.byte	W08
	.byte		N06   , Gn3 
	.byte		N05   
	.byte		N06   , Gn4 
	.byte		N05   
	.byte	W02
@ 040   ----------------------------------------
mus_zinnia_last_mon_gba_5_040:
	.byte	W06
	.byte		N84   , As3 , v064
	.byte		N84   , As4 
	.byte	W84
	.byte		N06   , Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte	PEND
@ 041   ----------------------------------------
mus_zinnia_last_mon_gba_5_041:
	.byte		N06   , As3 , v064
	.byte		N06   , As4 
	.byte	W06
	.byte		N96   , An3 
	.byte		N96   , An4 
	.byte	W90
	.byte	PEND
@ 042   ----------------------------------------
	.byte	W06
	.byte		N72   , Fs3 
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N06   , Fs3 
	.byte		N06   , Fs4 
	.byte	W07
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N05   , Cs3 
	.byte		N05   , Cs4 
	.byte	W08
	.byte		N06   , Fs3 
	.byte		N05   
	.byte		N06   , Fs4 
	.byte		N05   
	.byte	W02
@ 043   ----------------------------------------
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W07
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N05   , Cs3 
	.byte		N05   , Cs4 
	.byte	W08
	.byte		N06   , Gs3 
	.byte		N05   
	.byte		N06   , Gs4 
	.byte		N05   
	.byte	W08
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W07
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N05   , Cs3 
	.byte		N05   , Cs4 
	.byte	W08
	.byte		N06   , An3 
	.byte		N05   
	.byte		N06   , An4 
	.byte		N05   
	.byte	W08
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W07
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N05   , Cs3 
	.byte		N05   , Cs4 
	.byte	W08
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W01
	.byte		N05   , Bn3 
	.byte		N05   , Bn4 
	.byte	W07
	.byte		N06   , En4 
	.byte		N06   , En5 
	.byte	W08
	.byte		        En3 
	.byte		N05   
	.byte		N06   , En4 
	.byte		N05   
	.byte	W08
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		N05   , Ds3 
	.byte		N05   , Ds4 
	.byte	W01
@ 044   ----------------------------------------
	.byte	W06
	.byte		N84   , En3 
	.byte		N84   , En4 
	.byte	W84
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N48   , Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W42
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_014
@ 047   ----------------------------------------
	.byte	W06
	.byte		N96   , En3 , v064
	.byte		N96   , En4 
	.byte	W90
@ 048   ----------------------------------------
	.byte	W06
	.byte		N48   , Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte	W08
	.byte		        Dn2 
	.byte		N05   
	.byte		N06   , Dn3 
	.byte		N05   
	.byte	W08
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W01
	.byte		N05   , Fs2 
	.byte		N05   , Fs3 
	.byte	W07
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte	W08
	.byte		        Dn2 
	.byte		N05   
	.byte		N06   , Dn3 
	.byte		N05   
	.byte	W08
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W01
	.byte		N05   , Fs2 
	.byte		N05   , Fs3 
	.byte	W01
@ 049   ----------------------------------------
	.byte	W06
	.byte		N96   , Cs3 
	.byte		N96   , Cs4 
	.byte	W90
@ 050   ----------------------------------------
mus_zinnia_last_mon_gba_5_050:
	.byte	W06
	.byte		N72   , Fs4 , v064
	.byte		N72   , Fs5 
	.byte	W72
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W18
	.byte	PEND
@ 051   ----------------------------------------
	.byte	W06
	.byte		N36   , Gs4 
	.byte		N36   , Gs5 
	.byte	W36
	.byte		        En4 
	.byte		N36   , En5 
	.byte	W36
	.byte		N24   , Fs4 
	.byte		N24   , Fs5 
	.byte	W18
@ 052   ----------------------------------------
	.byte	W06
	.byte		N72   , Cs4 
	.byte		N72   , Cs5 
	.byte	W72
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W18
@ 053   ----------------------------------------
	.byte	W06
	.byte		N48   , Cs4 
	.byte		N48   , Cs5 
	.byte	W48
	.byte		N36   , Bn3 
	.byte		N36   , Bn4 
	.byte	W36
	.byte		N06   , Cs4 
	.byte		N06   , Cs5 
	.byte	W06
@ 054   ----------------------------------------
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		N72   , Fs3 
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W18
@ 055   ----------------------------------------
	.byte	W06
	.byte		N36   , Bn3 
	.byte		N36   , Bn4 
	.byte	W36
	.byte		        An3 
	.byte		N36   , An4 
	.byte	W36
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W18
@ 056   ----------------------------------------
	.byte	W06
	.byte		N72   , Fs3 
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W18
@ 057   ----------------------------------------
	.byte	W06
	.byte		        Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Dn4 
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        En4 
	.byte		N24   , En5 
	.byte	W18
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_050
@ 059   ----------------------------------------
	.byte	W06
	.byte		N24   , Gs4 , v064
	.byte		N24   , Gs5 
	.byte	W24
	.byte		        En4 
	.byte		N24   , En5 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Gs4 
	.byte		N24   , Gs5 
	.byte	W18
@ 060   ----------------------------------------
	.byte	W06
	.byte		TIE   , Fs4 
	.byte		TIE   , Fs5 
	.byte	W90
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W06
	.byte		EOT   , Fs4 
	.byte		        Fs5 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W06
@ 063   ----------------------------------------
	.byte	W06
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W18
@ 064   ----------------------------------------
mus_zinnia_last_mon_gba_5_064:
	.byte	W18
	.byte		N12   , Cs3 , v064
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W06
	.byte	PEND
@ 065   ----------------------------------------
	.byte	W06
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , En4 
	.byte	W18
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_064
@ 067   ----------------------------------------
	.byte	W06
	.byte		N12   , En3 , v064
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte	W18
@ 068   ----------------------------------------
	.byte	W18
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , An4 
	.byte	W12
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W06
@ 069   ----------------------------------------
	.byte	W06
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte	W18
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_010
@ 071   ----------------------------------------
	.byte	W12
	.byte		EOT   , Fs3 
	.byte		        Fs4 
	.byte	W06
	.byte		N36   , Gs3 , v064
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , En5 
	.byte	W18
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_012
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_013
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_014
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_015
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_016
@ 077   ----------------------------------------
	.byte	W54
	.byte		EOT   , Cs3 
	.byte		        Cs4 
	.byte	W24
	.byte		N24   , Cn3 , v064
	.byte		N24   , Cn4 
	.byte	W18
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_018
@ 079   ----------------------------------------
	.byte	W12
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte	W06
	.byte		N36   , An3 , v064
	.byte		N36   , An4 
	.byte	W36
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , Fn5 
	.byte	W18
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_022
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_024
@ 085   ----------------------------------------
	.byte	W54
	.byte		EOT   , Dn3 
	.byte		        Dn4 
	.byte	W42
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_026
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_027
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_028
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_029
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_030
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_031
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_024
@ 093   ----------------------------------------
	.byte	W54
	.byte		EOT   , Dn3 
	.byte		        Dn4 
	.byte	W42
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_026
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_035
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_036
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_037
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_038
@ 099   ----------------------------------------
	.byte	W06
	.byte		N06   , Cn3 , v064
	.byte		N06   , Cn4 
	.byte	W08
	.byte		        Gn2 
	.byte		N05   
	.byte		N06   , Gn3 
	.byte		N05   
	.byte	W08
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N05   , Cn4 
	.byte	W07
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W08
	.byte		        Gn2 
	.byte		N05   
	.byte		N06   , Gn3 
	.byte		N05   
	.byte	W08
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W01
	.byte		N05   , Dn3 
	.byte		N05   , Dn4 
	.byte	W07
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W08
	.byte		        Gn2 
	.byte		N05   
	.byte		N06   , Gn3 
	.byte		N05   
	.byte	W08
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W01
	.byte		N05   , Ds3 
	.byte		N05   , Ds4 
	.byte	W07
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W08
	.byte		        Fn3 
	.byte		N05   
	.byte		N06   , Fn4 
	.byte		N05   
	.byte	W08
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Gn4 
	.byte	W01
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_040
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_041
@ 102   ----------------------------------------
	.byte	W06
	.byte		N72   , Fs3 , v064
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N06   , Fs3 
	.byte		N06   , Fs4 
	.byte	W08
	.byte		        Cs3 
	.byte		N05   
	.byte		N06   , Cs4 
	.byte		N05   
	.byte	W09
	.byte		N06   , Fs3 
	.byte		N05   
	.byte		N06   , Fs4 
	.byte		N05   
	.byte	W01
@ 103   ----------------------------------------
	.byte	W07
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W07
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N05   , Cs3 
	.byte		N05   , Cs4 
	.byte	W08
	.byte		N06   , Gs3 
	.byte		N05   
	.byte		N06   , Gs4 
	.byte		N05   
	.byte	W08
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W07
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N05   , Cs3 
	.byte		N05   , Cs4 
	.byte	W08
	.byte		N06   , An3 
	.byte		N05   
	.byte		N06   , An4 
	.byte		N05   
	.byte	W08
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W07
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N05   , Cs3 
	.byte		N05   , Cs4 
	.byte	W08
	.byte		N06   , Bn3 
	.byte		N05   
	.byte		N06   , Bn4 
	.byte		N05   
	.byte	W08
	.byte		N06   , En4 
	.byte		N06   , En5 
	.byte	W07
	.byte		        En3 
	.byte		N06   , En4 
	.byte	W01
	.byte		N05   , En3 
	.byte		N05   , En4 
	.byte	W08
	.byte		N06   , Ds3 
	.byte		N05   
	.byte		N06   , Ds4 
	.byte		N05   
	.byte	W01
@ 104   ----------------------------------------
	.byte	W07
	.byte		N84   , En3 
	.byte		N84   , En4 
	.byte	W84
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W05
@ 105   ----------------------------------------
	.byte	W01
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N48   , Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W40
	.byte	W01
@ 106   ----------------------------------------
	.byte	W07
	.byte		N96   , Fs3 
	.byte		N96   , Fs4 
	.byte	W88
	.byte	W01
@ 107   ----------------------------------------
	.byte	W07
	.byte		        En3 
	.byte		N96   , En4 
	.byte	W88
	.byte	W01
@ 108   ----------------------------------------
	.byte	W07
	.byte		N48   , Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte	W07
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W01
	.byte		N05   , Dn2 
	.byte		N05   , Dn3 
	.byte	W08
	.byte		N06   , Fs2 
	.byte		N05   
	.byte		N06   , Fs3 
	.byte		N05   
	.byte	W08
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte	W07
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W01
	.byte		N05   , Dn2 
	.byte		N05   , Dn3 
	.byte	W08
	.byte		N06   , Fs2 
	.byte		N05   
	.byte		N06   , Fs3 
	.byte		N05   
	.byte	W01
@ 109   ----------------------------------------
	.byte	W07
	.byte		N96   , Cs3 
	.byte		N96   , Cs4 
	.byte	W88
	.byte	W01
@ 110   ----------------------------------------
mus_zinnia_last_mon_gba_5_110:
	.byte	W07
	.byte		N72   , Fs4 , v064
	.byte		N72   , Fs5 
	.byte	W72
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W17
	.byte	PEND
@ 111   ----------------------------------------
	.byte	W07
	.byte		N36   , Gs4 
	.byte		N36   , Gs5 
	.byte	W36
	.byte		        En4 
	.byte		N36   , En5 
	.byte	W36
	.byte		N24   , Fs4 
	.byte		N24   , Fs5 
	.byte	W17
@ 112   ----------------------------------------
	.byte	W07
	.byte		N72   , Cs4 
	.byte		N72   , Cs5 
	.byte	W72
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W17
@ 113   ----------------------------------------
	.byte	W07
	.byte		N48   , Cs4 
	.byte		N48   , Cs5 
	.byte	W48
	.byte		N36   , Bn3 
	.byte		N36   , Bn4 
	.byte	W36
	.byte		N06   , Cs4 
	.byte		N06   , Cs5 
	.byte	W05
@ 114   ----------------------------------------
	.byte	W01
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		N72   , Fs3 
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W17
@ 115   ----------------------------------------
	.byte	W07
	.byte		N36   , Bn3 
	.byte		N36   , Bn4 
	.byte	W36
	.byte		        An3 
	.byte		N36   , An4 
	.byte	W36
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W17
@ 116   ----------------------------------------
	.byte	W07
	.byte		N72   , Fs3 
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W17
@ 117   ----------------------------------------
	.byte	W07
	.byte		        Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Dn4 
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        En4 
	.byte		N24   , En5 
	.byte	W17
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_110
@ 119   ----------------------------------------
	.byte	W07
	.byte		N24   , Gs4 , v064
	.byte		N24   , Gs5 
	.byte	W24
	.byte		        En4 
	.byte		N24   , En5 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Gs4 
	.byte		N24   , Gs5 
	.byte	W17
@ 120   ----------------------------------------
	.byte	W07
	.byte		TIE   , Fs4 
	.byte		TIE   , Fs5 
	.byte	W88
	.byte	W01
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W07
	.byte		EOT   , Fs4 
	.byte		        Fs5 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W05
@ 123   ----------------------------------------
	.byte	W07
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W17
@ 124   ----------------------------------------
mus_zinnia_last_mon_gba_5_124:
	.byte	W19
	.byte		N12   , Cs3 , v064
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W05
	.byte	PEND
@ 125   ----------------------------------------
	.byte	W07
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , En4 
	.byte	W17
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_gba_5_124
@ 127   ----------------------------------------
	.byte	W07
	.byte		N12   , En3 , v064
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte	W17
@ 128   ----------------------------------------
	.byte	W19
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , An4 
	.byte	W12
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W05
@ 129   ----------------------------------------
	.byte	W07
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , Bn2 
	.byte		N18   , Bn3 
	.byte	W17
@ 130   ----------------------------------------
	.byte	W01
	.byte	GOTO
	 .word	mus_zinnia_last_mon_gba_5_B1
mus_zinnia_last_mon_gba_5_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_zinnia_last_mon_gba:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_zinnia_last_mon_gba_pri	@ Priority
	.byte	mus_zinnia_last_mon_gba_rev	@ Reverb.

	.word	mus_zinnia_last_mon_gba_grp

	.word	mus_zinnia_last_mon_gba_1
	.word	mus_zinnia_last_mon_gba_2
	.word	mus_zinnia_last_mon_gba_3
	.word	mus_zinnia_last_mon_gba_4
	.word	mus_zinnia_last_mon_gba_5

	.end
