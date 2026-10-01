	.include "MPlayDef.s"

	.equ	mus_zinnia_last_mon_pop_grp, voicegroup_diva_pop
	.equ	mus_zinnia_last_mon_pop_pri, 0
	.equ	mus_zinnia_last_mon_pop_rev, reverb_set+12
	.equ	mus_zinnia_last_mon_pop_mvl, 90
	.equ	mus_zinnia_last_mon_pop_key, 0
	.equ	mus_zinnia_last_mon_pop_tbs, 1
	.equ	mus_zinnia_last_mon_pop_exg, 0
	.equ	mus_zinnia_last_mon_pop_cmp, 1

	.section .rodata
	.global	mus_zinnia_last_mon_pop
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_zinnia_last_mon_pop_1:
	.byte	KEYSH , mus_zinnia_last_mon_pop_key+0
mus_zinnia_last_mon_pop_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 150*mus_zinnia_last_mon_pop_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 100*mus_zinnia_last_mon_pop_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N96   , Cs1 , v096
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
mus_zinnia_last_mon_pop_1_007:
	.byte		N12   , Fs1 , v096
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
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 012   ----------------------------------------
mus_zinnia_last_mon_pop_1_012:
	.byte		N12   , Fs1 , v096
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
	 .word	mus_zinnia_last_mon_pop_1_007
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 018   ----------------------------------------
mus_zinnia_last_mon_pop_1_018:
	.byte		N12   , Fs1 , v096
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
mus_zinnia_last_mon_pop_1_019:
	.byte		N12   , Gn1 , v096
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
mus_zinnia_last_mon_pop_1_020:
	.byte		N12   , Gn1 , v096
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
	 .word	mus_zinnia_last_mon_pop_1_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 026   ----------------------------------------
mus_zinnia_last_mon_pop_1_026:
	.byte		N12   , Gn1 , v096
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
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_020
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_020
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_026
@ 035   ----------------------------------------
mus_zinnia_last_mon_pop_1_035:
	.byte		N12   , Ds1 , v096
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
	 .word	mus_zinnia_last_mon_pop_1_035
@ 037   ----------------------------------------
mus_zinnia_last_mon_pop_1_037:
	.byte		N12   , Ds1 , v096
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
mus_zinnia_last_mon_pop_1_038:
	.byte		N12   , Cn1 , v096
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
	 .word	mus_zinnia_last_mon_pop_1_038
@ 040   ----------------------------------------
mus_zinnia_last_mon_pop_1_040:
	.byte		N12   , Dn1 , v096
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
	 .word	mus_zinnia_last_mon_pop_1_040
@ 042   ----------------------------------------
mus_zinnia_last_mon_pop_1_042:
	.byte		N12   , Dn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N48   
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
mus_zinnia_last_mon_pop_1_047:
	.byte		N36   , Dn1 , v096
	.byte	W36
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 048   ----------------------------------------
mus_zinnia_last_mon_pop_1_048:
	.byte		N48   , Cs1 , v096
	.byte	W48
	.byte		N24   , An0 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte	PEND
@ 049   ----------------------------------------
mus_zinnia_last_mon_pop_1_049:
	.byte		N48   , Bn0 , v096
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte	PEND
@ 050   ----------------------------------------
mus_zinnia_last_mon_pop_1_050:
	.byte		N24   , Cs1 , v096
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
	 .word	mus_zinnia_last_mon_pop_1_040
@ 052   ----------------------------------------
mus_zinnia_last_mon_pop_1_052:
	.byte		N12   , En1 , v096
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
	 .word	mus_zinnia_last_mon_pop_1_007
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_040
@ 056   ----------------------------------------
mus_zinnia_last_mon_pop_1_056:
	.byte		N12   , Cs1 , v096
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
mus_zinnia_last_mon_pop_1_057:
	.byte		N12   , Bn0 , v096
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
	 .word	mus_zinnia_last_mon_pop_1_056
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_040
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_052
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_012
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_012
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_012
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_020
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_026
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_020
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_020
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_020
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_026
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_035
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_035
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_037
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_038
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_038
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_040
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_040
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_042
@ 103   ----------------------------------------
	.byte		N96   , Dn1 , v096
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
	 .word	mus_zinnia_last_mon_pop_1_047
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_048
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_049
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_040
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_019
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_040
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_056
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_057
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_056
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_040
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_052
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_1_007
@ 131   ----------------------------------------
	.byte	W06
	.byte	GOTO
	 .word	mus_zinnia_last_mon_pop_1_B1
mus_zinnia_last_mon_pop_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_zinnia_last_mon_pop_2:
	.byte	KEYSH , mus_zinnia_last_mon_pop_key+0
mus_zinnia_last_mon_pop_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 7
	.byte		VOL   , 88*mus_zinnia_last_mon_pop_mvl/mxv
	.byte		PAN   , c_v-10
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N12   , An2 , v060
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 , v056
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        Fs3 , v060
	.byte		N12   , An3 
	.byte		N12   , An4 , v056
	.byte	W12
	.byte		        En3 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		        Dn3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        En3 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		        Dn3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N12   , En3 
	.byte		N12   , En4 , v056
	.byte	W12
@ 003   ----------------------------------------
	.byte		        An2 , v060
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 , v056
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        En3 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		        Gs3 , v060
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 , v056
	.byte	W06
	.byte		        En3 , v060
	.byte		N06   , An3 
	.byte		N06   , An4 , v056
	.byte	W06
	.byte		N12   , En3 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		        Dn3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N12   , En3 
	.byte		N12   , En4 , v056
	.byte	W12
@ 004   ----------------------------------------
	.byte		        An2 , v060
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 , v056
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        Fs3 , v060
	.byte		N12   , Fs4 , v056
	.byte		N12   , An4 
	.byte	W12
	.byte		        En3 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		        Dn3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        En3 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		        Dn3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N12   , En3 
	.byte		N12   , En4 , v056
	.byte	W12
@ 005   ----------------------------------------
	.byte		        An2 , v060
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 , v056
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        En3 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		        Gs3 , v060
	.byte		N12   , Cs4 
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		N06   , Fs3 , v060
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 , v056
	.byte	W06
	.byte		        En3 , v060
	.byte		N06   , An3 
	.byte		N06   , An4 , v056
	.byte	W06
	.byte		N12   , En3 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		        Dn3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N12   , En3 
	.byte		N12   , En4 , v056
	.byte	W12
@ 006   ----------------------------------------
	.byte		        An2 , v060
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 , v056
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        Fs3 , v060
	.byte		N12   , Fs4 , v056
	.byte		N12   , An4 
	.byte	W12
	.byte		        En3 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		        Dn3 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v056
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
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
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
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
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
	.byte		N24   , Bn2 , v060
	.byte		N12   , Fs3 , v056
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
@ 010   ----------------------------------------
mus_zinnia_last_mon_pop_2_010:
	.byte		TIE   , Fs3 , v060
	.byte		TIE   , Fs4 
	.byte	W96
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W06
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
	.byte	W24
@ 012   ----------------------------------------
	.byte		N96   , Cs4 
	.byte	W96
@ 013   ----------------------------------------
mus_zinnia_last_mon_pop_2_013:
	.byte	W12
	.byte		N12   , Bn3 , v060
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N96   , Fs3 
	.byte		N96   , Fs4 
	.byte	W96
@ 015   ----------------------------------------
mus_zinnia_last_mon_pop_2_015:
	.byte	W09
	.byte		N36   , Gs3 , v060
	.byte		N36   , Gs4 
	.byte	W36
	.byte	W03
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_zinnia_last_mon_pop_2_016:
	.byte		TIE   , Cs3 , v060
	.byte		TIE   , Cs4 
	.byte	W96
	.byte	PEND
@ 017   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs3 
	.byte		        Cs4 
	.byte	W24
	.byte		N24   , Cn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 018   ----------------------------------------
mus_zinnia_last_mon_pop_2_018:
	.byte		TIE   , Gn3 , v060
	.byte		TIE   , Gn4 
	.byte	W96
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W06
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
	.byte	W24
@ 020   ----------------------------------------
	.byte		N96   , Dn4 
	.byte	W96
@ 021   ----------------------------------------
mus_zinnia_last_mon_pop_2_021:
	.byte	W12
	.byte		N12   , Cn4 , v060
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W12
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Gn4 
	.byte	W96
@ 023   ----------------------------------------
mus_zinnia_last_mon_pop_2_023:
	.byte	W09
	.byte		N36   , An3 , v060
	.byte		N36   , An4 
	.byte	W36
	.byte	W03
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Fn4 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
mus_zinnia_last_mon_pop_2_024:
	.byte		TIE   , Dn3 , v060
	.byte		TIE   , Dn4 
	.byte	W96
	.byte	PEND
@ 025   ----------------------------------------
	.byte	W48
	.byte		EOT   , Dn3 
	.byte		        Dn4 
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
	.byte		N96   , Dn3 
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
mus_zinnia_last_mon_pop_2_046:
	.byte		N36   , Fs3 , v060
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
mus_zinnia_last_mon_pop_2_047:
	.byte		N36   , En3 , v060
	.byte	W36
	.byte		N60   , Cs3 
	.byte	W60
	.byte	PEND
@ 048   ----------------------------------------
mus_zinnia_last_mon_pop_2_048:
	.byte		N36   , Dn3 , v060
	.byte	W36
	.byte		        En3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 049   ----------------------------------------
mus_zinnia_last_mon_pop_2_049:
	.byte		N36   , An3 , v060
	.byte	W36
	.byte		N48   , Gs3 
	.byte	W48
	.byte		N06   , En3 , v072
	.byte		N06   , En4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	PEND
@ 050   ----------------------------------------
mus_zinnia_last_mon_pop_2_050:
	.byte		N72   , Fs3 , v072
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	PEND
@ 051   ----------------------------------------
mus_zinnia_last_mon_pop_2_051:
	.byte		N36   , Gs3 , v072
	.byte		N36   , Gs4 
	.byte	W36
	.byte		        En3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
mus_zinnia_last_mon_pop_2_052:
	.byte		N72   , Cs3 , v072
	.byte		N72   , Cs4 
	.byte	W72
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte	W24
	.byte	PEND
@ 053   ----------------------------------------
mus_zinnia_last_mon_pop_2_053:
	.byte		N48   , Cs3 , v072
	.byte		N48   , Cs4 
	.byte	W48
	.byte		N36   , Bn2 
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N06   , Cs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte	PEND
@ 054   ----------------------------------------
mus_zinnia_last_mon_pop_2_054:
	.byte		N72   , Fs2 , v072
	.byte		N72   , Fs4 , v060
	.byte	W72
	.byte		N24   , Cs3 , v072
	.byte		N24   , Cs4 
	.byte	W24
	.byte	PEND
@ 055   ----------------------------------------
mus_zinnia_last_mon_pop_2_055:
	.byte		N36   , Bn2 , v072
	.byte		N36   , Bn3 
	.byte	W36
	.byte		        An2 
	.byte		N36   , An4 , v056
	.byte	W36
	.byte		N24   , Gs2 , v072
	.byte		N24   , Gs4 , v056
	.byte	W24
	.byte	PEND
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_054
@ 057   ----------------------------------------
mus_zinnia_last_mon_pop_2_057:
	.byte		N24   , Bn2 , v072
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Dn3 , v068
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
@ 058   ----------------------------------------
mus_zinnia_last_mon_pop_2_058:
	.byte		N72   , Fs3 , v068
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	PEND
@ 059   ----------------------------------------
mus_zinnia_last_mon_pop_2_059:
	.byte		N24   , Gs3 , v068
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 060   ----------------------------------------
mus_zinnia_last_mon_pop_2_060:
	.byte		TIE   , Fs3 , v068
	.byte		TIE   , Fs4 
	.byte	W96
	.byte	PEND
@ 061   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        Fs4 
@ 062   ----------------------------------------
mus_zinnia_last_mon_pop_2_062:
	.byte		N09   , Fs3 , v056
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N09   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 , v052
	.byte		N09   , An4 
	.byte	W12
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N09   , An3 
	.byte		N09   , An4 
	.byte	W12
	.byte		        Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N09   , En4 
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_zinnia_last_mon_pop_2_063:
	.byte		N09   , Fs3 , v052
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N09   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N09   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N09   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N09   , En4 
	.byte	W12
	.byte		N21   , Cs3 
	.byte		N21   , Cs4 
	.byte	W24
	.byte	PEND
@ 064   ----------------------------------------
mus_zinnia_last_mon_pop_2_064:
	.byte	W12
	.byte		N09   , Cs3 , v052
	.byte		N09   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N09   , Gn4 
	.byte	W12
	.byte		N21   , An3 
	.byte		N21   , An4 
	.byte	W36
	.byte		N09   , Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_zinnia_last_mon_pop_2_065:
	.byte		N09   , En3 , v052
	.byte		N09   , En4 
	.byte	W12
	.byte		        Gn3 
	.byte		N09   , Gn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N09   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , En4 
	.byte	W24
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_064
@ 067   ----------------------------------------
mus_zinnia_last_mon_pop_2_067:
	.byte		N09   , En3 , v052
	.byte		N09   , En4 
	.byte	W12
	.byte		        Gn3 
	.byte		N09   , Gn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N09   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N21   , En3 
	.byte		N21   , En4 
	.byte	W24
	.byte	PEND
@ 068   ----------------------------------------
mus_zinnia_last_mon_pop_2_068:
	.byte	W12
	.byte		N09   , Cs3 , v052
	.byte		N09   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N09   , Gn4 
	.byte	W12
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W36
	.byte		N09   , Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
mus_zinnia_last_mon_pop_2_069:
	.byte		N09   , Fs3 , v052
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N09   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N09   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N09   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte		N09   , En4 
	.byte	W12
	.byte		N24   , Bn2 , v060
	.byte		N24   , Bn3 
	.byte	W24
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_010
@ 071   ----------------------------------------
	.byte	W06
	.byte		EOT   , Fs3 
	.byte		        Fs4 
	.byte	W06
	.byte		N36   , Gs3 , v060
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		        En4 
	.byte	W24
@ 072   ----------------------------------------
	.byte		N96   , Cs4 
	.byte	W96
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_013
@ 074   ----------------------------------------
	.byte		N96   , Fs3 , v060
	.byte		N96   , Fs4 
	.byte	W96
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_015
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_016
@ 077   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs3 
	.byte		        Cs4 
	.byte	W24
	.byte		N24   , Cn3 , v060
	.byte		N24   , Cn4 
	.byte	W24
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_018
@ 079   ----------------------------------------
	.byte	W06
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte	W06
	.byte		N36   , An3 , v060
	.byte		N36   , An4 
	.byte	W36
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 080   ----------------------------------------
	.byte		N96   , Dn4 
	.byte	W96
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_021
@ 082   ----------------------------------------
	.byte		N96   , Gn3 , v060
	.byte		N96   , Gn4 
	.byte	W96
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_024
@ 085   ----------------------------------------
	.byte	W48
	.byte		EOT   , Dn3 
	.byte		        Dn4 
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
	.byte		N96   , Dn3 , v060
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
	 .word	mus_zinnia_last_mon_pop_2_046
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_047
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_048
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_049
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_051
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_053
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_054
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_055
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_054
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_057
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_058
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_059
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_060
@ 121   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        Fs4 
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_062
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_063
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_064
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_065
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_064
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_067
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_068
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_2_069
@ 130   ----------------------------------------
	.byte	W06
	.byte	GOTO
	 .word	mus_zinnia_last_mon_pop_2_B1
mus_zinnia_last_mon_pop_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_zinnia_last_mon_pop_3:
	.byte	KEYSH , mus_zinnia_last_mon_pop_key+0
mus_zinnia_last_mon_pop_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 98*mus_zinnia_last_mon_pop_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N06   , Cs5 , v080
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
	.byte		        En5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Cs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
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
mus_zinnia_last_mon_pop_3_010:
	.byte	W06
	.byte		TIE   , Fs4 , v068
	.byte	W90
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W06
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , An4 
	.byte	W24
	.byte		        En5 
	.byte	W18
@ 012   ----------------------------------------
	.byte	W06
	.byte		N96   , Cs5 
	.byte	W90
@ 013   ----------------------------------------
mus_zinnia_last_mon_pop_3_013:
	.byte	W18
	.byte		N12   , Bn4 , v068
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs4 
	.byte	W90
@ 015   ----------------------------------------
mus_zinnia_last_mon_pop_3_015:
	.byte	W15
	.byte		N36   , Gs4 , v068
	.byte	W36
	.byte	W03
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W18
	.byte	PEND
@ 016   ----------------------------------------
mus_zinnia_last_mon_pop_3_016:
	.byte	W06
	.byte		TIE   , Cs4 , v068
	.byte	W90
	.byte	PEND
@ 017   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W24
	.byte		N24   , Cn4 
	.byte	W18
@ 018   ----------------------------------------
mus_zinnia_last_mon_pop_3_018:
	.byte	W06
	.byte		TIE   , Gn4 , v068
	.byte	W90
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W06
	.byte		N36   , An4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W24
	.byte		        Fn4 
	.byte	W18
@ 020   ----------------------------------------
	.byte	W06
	.byte		N96   , Dn5 
	.byte	W90
@ 021   ----------------------------------------
mus_zinnia_last_mon_pop_3_021:
	.byte	W18
	.byte		N12   , Cn5 , v068
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
	.byte	W06
	.byte		N96   , Gn4 
	.byte	W90
@ 023   ----------------------------------------
mus_zinnia_last_mon_pop_3_023:
	.byte	W15
	.byte		N36   , An4 , v068
	.byte	W36
	.byte	W03
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W18
	.byte	PEND
@ 024   ----------------------------------------
mus_zinnia_last_mon_pop_3_024:
	.byte	W06
	.byte		TIE   , Dn4 , v068
	.byte	W90
	.byte	PEND
@ 025   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W42
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
mus_zinnia_last_mon_pop_3_050:
	.byte	W06
	.byte		N72   , Fs4 , v068
	.byte	W72
	.byte		N24   , An4 
	.byte	W18
	.byte	PEND
@ 051   ----------------------------------------
mus_zinnia_last_mon_pop_3_051:
	.byte	W06
	.byte		N36   , Gs4 , v068
	.byte	W36
	.byte		        En5 
	.byte	W36
	.byte		N24   , Fs4 
	.byte	W18
	.byte	PEND
@ 052   ----------------------------------------
mus_zinnia_last_mon_pop_3_052:
	.byte	W06
	.byte		N72   , Cs5 , v068
	.byte	W72
	.byte		N24   , Bn4 
	.byte	W18
	.byte	PEND
@ 053   ----------------------------------------
mus_zinnia_last_mon_pop_3_053:
	.byte	W06
	.byte		N48   , Cs5 , v068
	.byte	W48
	.byte		N36   , Bn4 
	.byte	W36
	.byte		N06   , Cs5 
	.byte	W06
	.byte	PEND
@ 054   ----------------------------------------
mus_zinnia_last_mon_pop_3_054:
	.byte		N06   , Bn4 , v068
	.byte	W06
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N24   , Cs5 
	.byte	W18
	.byte	PEND
@ 055   ----------------------------------------
mus_zinnia_last_mon_pop_3_055:
	.byte	W06
	.byte		N36   , Bn4 , v068
	.byte	W36
	.byte		        An4 
	.byte	W36
	.byte		N24   , Gs4 
	.byte	W18
	.byte	PEND
@ 056   ----------------------------------------
mus_zinnia_last_mon_pop_3_056:
	.byte	W06
	.byte		N72   , Fs4 , v068
	.byte	W72
	.byte		N24   , Cs5 
	.byte	W18
	.byte	PEND
@ 057   ----------------------------------------
mus_zinnia_last_mon_pop_3_057:
	.byte	W06
	.byte		N24   , Bn4 , v068
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        En5 
	.byte	W18
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_050
@ 059   ----------------------------------------
mus_zinnia_last_mon_pop_3_059:
	.byte	W06
	.byte		N24   , Gs4 , v068
	.byte	W24
	.byte		        En5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Gs4 
	.byte	W18
	.byte	PEND
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_010
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W06
	.byte		EOT   , Fs4 
	.byte		N09   , Fs4 , v068
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N09   , An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W06
@ 063   ----------------------------------------
mus_zinnia_last_mon_pop_3_063:
	.byte	W06
	.byte		N09   , Fs4 , v068
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N21   , Cs4 
	.byte	W18
	.byte	PEND
@ 064   ----------------------------------------
mus_zinnia_last_mon_pop_3_064:
	.byte		N12   , An3 , v060
	.byte	W18
	.byte		N09   , Cs4 , v068
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W06
	.byte		N09   , Gn4 , v068
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W18
	.byte		N09   , Fs4 , v068
	.byte	W06
	.byte	PEND
@ 065   ----------------------------------------
mus_zinnia_last_mon_pop_3_065:
	.byte	W06
	.byte		N09   , En4 , v068
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W06
	.byte		N09   , Gn4 , v068
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W06
	.byte		N09   , Fs4 , v068
	.byte	W12
	.byte		N09   
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W06
	.byte		N18   , En4 , v068
	.byte	W18
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_064
@ 067   ----------------------------------------
mus_zinnia_last_mon_pop_3_067:
	.byte	W06
	.byte		N09   , En4 , v068
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W06
	.byte		N09   , Gn4 , v068
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W06
	.byte		N09   , Fs4 , v068
	.byte	W12
	.byte		        Bn4 
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W06
	.byte		N21   , En4 , v068
	.byte	W18
	.byte	PEND
@ 068   ----------------------------------------
mus_zinnia_last_mon_pop_3_068:
	.byte		N12   , An3 , v060
	.byte	W18
	.byte		N09   , Cs4 , v068
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W06
	.byte		N09   , Gn4 , v068
	.byte	W12
	.byte		N15   , An4 
	.byte	W12
	.byte		N09   , Gn4 
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W18
	.byte		N09   , Fs4 , v068
	.byte	W06
	.byte	PEND
@ 069   ----------------------------------------
mus_zinnia_last_mon_pop_3_069:
	.byte	W06
	.byte		N09   , Fs4 , v068
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W06
	.byte		N09   , An4 , v068
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W06
	.byte		N12   , An3 , v060
	.byte	W06
	.byte		N09   , Fs4 , v068
	.byte	W12
	.byte		        En4 
	.byte	W06
	.byte		N12   , Bn3 , v060
	.byte	W06
	.byte		N06   , Bn3 , v068
	.byte	W18
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_010
@ 071   ----------------------------------------
	.byte	W12
	.byte		EOT   , Fs4 
	.byte	W06
	.byte		N36   , Gs4 , v068
	.byte	W36
	.byte		N24   , An4 
	.byte	W24
	.byte		        En5 
	.byte	W18
@ 072   ----------------------------------------
	.byte	W06
	.byte		N96   , Cs5 
	.byte	W90
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_013
@ 074   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs4 , v068
	.byte	W90
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_015
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_016
@ 077   ----------------------------------------
	.byte	W54
	.byte		EOT   , Cs4 
	.byte	W24
	.byte		N24   , Cn4 , v068
	.byte	W18
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_018
@ 079   ----------------------------------------
	.byte	W12
	.byte		EOT   , Gn4 
	.byte	W06
	.byte		N36   , An4 , v068
	.byte	W36
	.byte		N24   , As4 
	.byte	W24
	.byte		        Fn4 
	.byte	W18
@ 080   ----------------------------------------
	.byte	W06
	.byte		N96   , Dn5 
	.byte	W90
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_021
@ 082   ----------------------------------------
	.byte	W06
	.byte		N96   , Gn4 , v068
	.byte	W90
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_024
@ 085   ----------------------------------------
	.byte	W54
	.byte		EOT   , Dn4 
	.byte	W42
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
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_051
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_053
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_054
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_055
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_056
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_057
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_050
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_059
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_010
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W06
	.byte		EOT   , Fs4 
	.byte		N09   , Fs4 , v068
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N09   , An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W06
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_063
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_064
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_065
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_064
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_067
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_068
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_3_069
@ 130   ----------------------------------------
	.byte	W06
	.byte	GOTO
	 .word	mus_zinnia_last_mon_pop_3_B1
mus_zinnia_last_mon_pop_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_zinnia_last_mon_pop_4:
	.byte	KEYSH , mus_zinnia_last_mon_pop_key+0
mus_zinnia_last_mon_pop_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 82*mus_zinnia_last_mon_pop_mvl/mxv
	.byte		PAN   , c_v-20
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N96   , An2 , v068
	.byte		N96   , Fs3 
	.byte	W96
@ 003   ----------------------------------------
	.byte		N84   , Cs3 
	.byte		N84   , Gs3 
	.byte	W84
	.byte		N06   , Bn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Gs3 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N84   , Dn3 
	.byte		N84   , An3 
	.byte	W84
	.byte		N06   , Cs3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , An3 
	.byte	W06
@ 005   ----------------------------------------
	.byte		N96   , En3 
	.byte		N96   , Bn3 
	.byte	W96
@ 006   ----------------------------------------
	.byte		N72   , Fs3 
	.byte		N72   , Cs4 
	.byte	W72
	.byte		N24   , An3 
	.byte		N24   , En4 
	.byte	W24
@ 007   ----------------------------------------
	.byte		N72   , Fs3 
	.byte		N72   , Cs4 
	.byte	W72
	.byte		N24   , Gs3 
	.byte		N24   , En4 
	.byte	W24
@ 008   ----------------------------------------
	.byte		N84   , Fs3 
	.byte		N84   , Dn4 
	.byte	W84
	.byte		N06   , Gs3 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Dn4 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N48   , Bn3 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Cs4 
	.byte	W48
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
mus_zinnia_last_mon_pop_4_018:
	.byte		N96   , Dn3 , v056
	.byte		N96   , Dn4 , v064
	.byte	W96
	.byte	PEND
@ 019   ----------------------------------------
mus_zinnia_last_mon_pop_4_019:
	.byte		N48   , Cn3 , v056
	.byte		N48   , Cn4 , v064
	.byte	W48
	.byte		N32   , Fn3 
	.byte	W36
	.byte		N06   , En3 , v056
	.byte		N06   , En4 , v064
	.byte	W06
	.byte		        Ds3 , v056
	.byte		N06   , Ds4 , v064
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_zinnia_last_mon_pop_4_020:
	.byte		N72   , Dn3 , v056
	.byte		N72   , Dn4 , v064
	.byte	W84
	.byte		N06   , Gn3 , v072
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_zinnia_last_mon_pop_4_021:
	.byte		N36   , As3 , v072
	.byte	W36
	.byte		        An3 , v068
	.byte	W36
	.byte		N24   , Fn3 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_zinnia_last_mon_pop_4_022:
	.byte		N84   , Gn3 , v064
	.byte	W84
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 , v056
	.byte		N06   , Dn4 , v064
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_zinnia_last_mon_pop_4_023:
	.byte		N48   , Cn3 , v056
	.byte		N48   , Cn4 , v064
	.byte	W48
	.byte		        Fn3 
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
mus_zinnia_last_mon_pop_4_024:
	.byte		TIE   , Dn3 , v056
	.byte		TIE   , Dn4 , v060
	.byte	W96
	.byte	PEND
@ 025   ----------------------------------------
	.byte	W48
	.byte		EOT   , Dn3 
	.byte		        Dn4 
	.byte	W36
	.byte		N06   , Gn3 , v068
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 026   ----------------------------------------
mus_zinnia_last_mon_pop_4_026:
	.byte		N96   , Gn3 , v056
	.byte		N96   , As3 , v068
	.byte	W96
	.byte	PEND
@ 027   ----------------------------------------
mus_zinnia_last_mon_pop_4_027:
	.byte		N48   , Fs3 , v056
	.byte		N48   , An3 , v068
	.byte	W48
	.byte		        An3 , v056
	.byte		N48   , Cn4 , v068
	.byte	W48
	.byte	PEND
@ 028   ----------------------------------------
mus_zinnia_last_mon_pop_4_028:
	.byte		N48   , Gs3 , v056
	.byte		N48   , Bn3 , v068
	.byte	W48
	.byte		        En3 , v056
	.byte		N48   , En4 , v068
	.byte	W48
	.byte	PEND
@ 029   ----------------------------------------
mus_zinnia_last_mon_pop_4_029:
	.byte		N48   , Ds3 , v068
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte	PEND
@ 030   ----------------------------------------
mus_zinnia_last_mon_pop_4_030:
	.byte		N84   , Gn3 , v068
	.byte		N96   , As3 
	.byte	W84
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte	PEND
@ 031   ----------------------------------------
mus_zinnia_last_mon_pop_4_031:
	.byte		N48   , Dn3 , v068
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , As3 , v056
	.byte	W48
	.byte	PEND
@ 032   ----------------------------------------
mus_zinnia_last_mon_pop_4_032:
	.byte		TIE   , Dn3 , v068
	.byte		TIE   , Dn4 
	.byte	W96
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		EOT   , Dn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W48
@ 034   ----------------------------------------
	.byte		N96   , As3 
	.byte	W96
@ 035   ----------------------------------------
mus_zinnia_last_mon_pop_4_035:
	.byte		N48   , An3 , v068
	.byte	W48
	.byte		N24   , As3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
mus_zinnia_last_mon_pop_4_036:
	.byte		N06   , An3 , v068
	.byte	W06
	.byte		N78   , As3 
	.byte	W78
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
mus_zinnia_last_mon_pop_4_037:
	.byte		N80   , Ds3 , v068
	.byte		N80   , Ds4 
	.byte	W90
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte	PEND
@ 038   ----------------------------------------
	.byte		N96   , Ds3 
	.byte		N96   , Ds4 
	.byte	W96
@ 039   ----------------------------------------
mus_zinnia_last_mon_pop_4_039:
	.byte		N08   , Cn3 , v068
	.byte		N08   , Cn4 
	.byte	W08
	.byte		        Gn2 
	.byte		N08   , Gn3 
	.byte	W08
	.byte		        Cn3 
	.byte		N08   , Cn4 
	.byte	W08
	.byte		        Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Gn2 
	.byte		N08   , Gn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Ds3 
	.byte		N08   , Ds4 
	.byte	W08
	.byte		        Gn2 
	.byte		N08   , Gn3 
	.byte	W08
	.byte		        Ds3 
	.byte		N08   , Ds4 
	.byte	W08
	.byte		        Ds3 
	.byte		N08   , Ds4 
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte	PEND
@ 040   ----------------------------------------
mus_zinnia_last_mon_pop_4_040:
	.byte		N84   , As3 , v068
	.byte	W84
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte	PEND
@ 041   ----------------------------------------
	.byte		N96   , An3 
	.byte	W96
@ 042   ----------------------------------------
mus_zinnia_last_mon_pop_4_042:
	.byte		N72   , Fs3 , v068
	.byte	W72
	.byte		N08   
	.byte	W08
	.byte		        Cs3 
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte	PEND
@ 043   ----------------------------------------
mus_zinnia_last_mon_pop_4_043:
	.byte		N08   , Gs3 , v068
	.byte	W08
	.byte		        Cs3 
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Cs3 
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Cs3 
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        En3 
	.byte		N08   , En4 
	.byte	W08
	.byte		        Ds3 
	.byte		N08   , Ds4 
	.byte	W08
	.byte	PEND
@ 044   ----------------------------------------
mus_zinnia_last_mon_pop_4_044:
	.byte		N84   , En3 , v068
	.byte		N84   , En4 
	.byte	W84
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte	PEND
@ 045   ----------------------------------------
mus_zinnia_last_mon_pop_4_045:
	.byte		N48   , Dn3 , v068
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W48
	.byte	PEND
@ 046   ----------------------------------------
	.byte		N96   , Fs3 
	.byte		N96   , Dn4 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        En3 
	.byte		N96   , En4 
	.byte	W96
@ 048   ----------------------------------------
mus_zinnia_last_mon_pop_4_048:
	.byte		N44   , Dn3 , v068
	.byte		N48   , Dn4 , v072
	.byte	W48
	.byte		N08   , Bn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte	PEND
@ 049   ----------------------------------------
mus_zinnia_last_mon_pop_4_049:
	.byte		N96   , Cs3 , v068
	.byte		N96   , Cs4 , v072
	.byte	W96
	.byte	PEND
@ 050   ----------------------------------------
mus_zinnia_last_mon_pop_4_050:
	.byte		N72   , Fs3 , v056
	.byte		N72   , Cs4 
	.byte	W72
	.byte		N24   , An3 
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
@ 051   ----------------------------------------
mus_zinnia_last_mon_pop_4_051:
	.byte		N36   , Gs3 , v056
	.byte		N36   , Ds4 
	.byte	W36
	.byte		        En3 
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
mus_zinnia_last_mon_pop_4_052:
	.byte		N72   , Fs3 , v056
	.byte		N72   , An3 
	.byte	W72
	.byte		N24   , En3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 053   ----------------------------------------
mus_zinnia_last_mon_pop_4_053:
	.byte		N48   , En3 , v056
	.byte		N48   , Gn3 
	.byte	W48
	.byte		        En3 
	.byte		N48   , Gn3 
	.byte	W48
	.byte	PEND
@ 054   ----------------------------------------
mus_zinnia_last_mon_pop_4_054:
	.byte		N72   , An3 , v056
	.byte		N72   , Dn4 
	.byte	W72
	.byte		N24   , Fs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte	PEND
@ 055   ----------------------------------------
mus_zinnia_last_mon_pop_4_055:
	.byte		N36   , Bn3 , v056
	.byte		N36   , En4 
	.byte	W36
	.byte		        An3 
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N24   , Gs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte	PEND
@ 056   ----------------------------------------
	.byte		N96   , Fs3 
	.byte		N96   , Bn3 
	.byte	W96
@ 057   ----------------------------------------
mus_zinnia_last_mon_pop_4_057:
	.byte		N24   , Bn2 , v056
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte	PEND
@ 058   ----------------------------------------
	.byte		N96   , Fs3 
	.byte		N96   , Dn4 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Gs3 
	.byte		N96   , En4 
	.byte	W96
@ 060   ----------------------------------------
	.byte		        Fs3 
	.byte		N96   , Bn3 
	.byte	W96
@ 061   ----------------------------------------
	.byte		        Fs3 
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
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_022
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_024
@ 085   ----------------------------------------
	.byte	W48
	.byte		EOT   , Dn3 
	.byte		        Dn4 
	.byte	W36
	.byte		N06   , Gn3 , v068
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_026
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_027
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_028
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_029
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_030
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_031
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_032
@ 093   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		EOT   , Dn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W48
@ 094   ----------------------------------------
	.byte		N96   , As3 , v068
	.byte	W96
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_035
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_036
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_037
@ 098   ----------------------------------------
	.byte		N96   , Ds3 , v068
	.byte		N96   , Ds4 
	.byte	W96
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_039
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_040
@ 101   ----------------------------------------
	.byte		N96   , An3 , v068
	.byte	W96
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_042
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_043
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_044
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_045
@ 106   ----------------------------------------
	.byte		N96   , Fs3 , v068
	.byte		N96   , Dn4 
	.byte	W96
@ 107   ----------------------------------------
	.byte		        En3 
	.byte		N96   , En4 
	.byte	W96
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_048
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_049
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_051
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_053
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_054
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_055
@ 116   ----------------------------------------
	.byte		N96   , Fs3 , v056
	.byte		N96   , Bn3 
	.byte	W96
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_4_057
@ 118   ----------------------------------------
	.byte		N96   , Fs3 , v056
	.byte		N96   , Dn4 
	.byte	W96
@ 119   ----------------------------------------
	.byte		        Gs3 
	.byte		N96   , En4 
	.byte	W96
@ 120   ----------------------------------------
	.byte		        Fs3 
	.byte		N96   , Bn3 
	.byte	W96
@ 121   ----------------------------------------
	.byte		        Fs3 
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
	.byte	W06
	.byte	GOTO
	 .word	mus_zinnia_last_mon_pop_4_B1
mus_zinnia_last_mon_pop_4_B2:
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_zinnia_last_mon_pop_5:
	.byte	KEYSH , mus_zinnia_last_mon_pop_key+0
mus_zinnia_last_mon_pop_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte		VOL   , 112*mus_zinnia_last_mon_pop_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W24
@ 001   ----------------------------------------
mus_zinnia_last_mon_pop_5_001:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_001
@ 008   ----------------------------------------
mus_zinnia_last_mon_pop_5_008:
	.byte		N02   , Cn1 , v104
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N02   , En1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N02   , En1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_last_mon_pop_5_008
@ 130   ----------------------------------------
	.byte		N02   , Cn1 , v104
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte	GOTO
	 .word	mus_zinnia_last_mon_pop_5_B1
mus_zinnia_last_mon_pop_5_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_zinnia_last_mon_pop:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_zinnia_last_mon_pop_pri	@ Priority
	.byte	mus_zinnia_last_mon_pop_rev	@ Reverb.

	.word	mus_zinnia_last_mon_pop_grp

	.word	mus_zinnia_last_mon_pop_1
	.word	mus_zinnia_last_mon_pop_2
	.word	mus_zinnia_last_mon_pop_3
	.word	mus_zinnia_last_mon_pop_4
	.word	mus_zinnia_last_mon_pop_5

	.end
