	.include "MPlayDef.s"

	.equ	mus_the_great_sea_grp, voicegroup_brothers
	.equ	mus_the_great_sea_pri, 0
	.equ	mus_the_great_sea_rev, reverb_set+18
	.equ	mus_the_great_sea_mvl, 90
	.equ	mus_the_great_sea_key, 0
	.equ	mus_the_great_sea_tbs, 1
	.equ	mus_the_great_sea_exg, 0
	.equ	mus_the_great_sea_cmp, 1

	.section .rodata
	.global	mus_the_great_sea
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_the_great_sea_1:
	.byte	KEYSH , mus_the_great_sea_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 140*mus_the_great_sea_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 88*mus_the_great_sea_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N96   , Dn1 , v072
	.byte	W12
	.byte		N11   , An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte		N23   , Dn2 
	.byte	W24
	.byte		N11   , An1 
	.byte	W12
@ 002   ----------------------------------------
mus_the_great_sea_1_002:
	.byte		N72   , Dn1 , v072
	.byte	W12
	.byte		N11   , An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte		N23   , Dn2 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_the_great_sea_1_003:
	.byte		N96   , Dn1 , v072
	.byte	W12
	.byte		N11   , An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte		N23   , Dn2 
	.byte	W24
	.byte		N11   , An1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 009   ----------------------------------------
mus_the_great_sea_1_009:
	.byte		N48   , Dn1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_the_great_sea_1_010:
	.byte		N12   , Dn1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_the_great_sea_1_011:
	.byte		N12   , Fs1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_the_great_sea_1_012:
	.byte		N12   , Fs1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_the_great_sea_1_013:
	.byte		N12   , Gn1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_the_great_sea_1_014:
	.byte		N12   , Gn1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_the_great_sea_1_015:
	.byte		N12   , An1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_the_great_sea_1_016:
	.byte		N12   , An1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_012
@ 021   ----------------------------------------
mus_the_great_sea_1_021:
	.byte		N12   , En1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_the_great_sea_1_022:
	.byte		N12   , En1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_012
@ 036   ----------------------------------------
mus_the_great_sea_1_036:
	.byte		N12   , Bn1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Fs1 
	.byte		N10   , Bn1 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_the_great_sea_1_037:
	.byte		N12   , As1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_the_great_sea_1_038:
	.byte		N12   , As1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
mus_the_great_sea_1_039:
	.byte		N12   , Cn2 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_the_great_sea_1_040:
	.byte		N12   , Cn2 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Gn1 
	.byte		N10   , Cn2 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_010
@ 051   ----------------------------------------
mus_the_great_sea_1_051:
	.byte		N12   , Cs1 , v072
	.byte		N12   , Cs2 
	.byte	W36
	.byte		        Cs1 
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
mus_the_great_sea_1_052:
	.byte		N12   , Cs1 , v072
	.byte		N12   , Cs2 
	.byte	W36
	.byte		        Cs1 
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte		N10   , An1 
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
mus_the_great_sea_1_053:
	.byte		N12   , Cn1 , v072
	.byte		N12   , Cn2 
	.byte	W36
	.byte		        Cn1 
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
mus_the_great_sea_1_054:
	.byte		N12   , Cn1 , v072
	.byte		N12   , Cn2 
	.byte	W36
	.byte		        Cn1 
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte		N10   , Gn1 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
mus_the_great_sea_1_055:
	.byte		N12   , Bn1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 056   ----------------------------------------
mus_the_great_sea_1_056:
	.byte		N12   , Bn1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_013
@ 058   ----------------------------------------
mus_the_great_sea_1_058:
	.byte		N12   , Gn1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Dn1 
	.byte		N10   , Gn1 
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_012
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_036
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_021
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_022
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_015
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_016
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_010
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_010
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_051
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_052
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_053
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_054
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_055
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_056
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_013
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_058
@ 075   ----------------------------------------
mus_the_great_sea_1_075:
	.byte		N12   , Fs1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Dn1 
	.byte		N10   , Fs1 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_037
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_038
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_039
@ 080   ----------------------------------------
mus_the_great_sea_1_080:
	.byte		N12   , Cn2 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N12   , Gn1 
	.byte		N10   , Cn2 
	.byte	W12
	.byte	PEND
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_011
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_012
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_013
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_014
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_015
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_016
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_013
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_014
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_011
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_012
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_021
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_022
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_015
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_016
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_011
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_012
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_013
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_014
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_015
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_016
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_013
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_014
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_012
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_036
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_037
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_038
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_039
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_040
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_009
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_010
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_051
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_052
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_053
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_054
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_055
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_056
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_013
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_058
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_012
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_036
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_021
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_022
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_015
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_016
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_010
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_010
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_051
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_052
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_053
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_054
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_055
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_056
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_013
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_058
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_075
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_036
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_037
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_038
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_039
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_080
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_003
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_002
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_009
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_1_010
@ 171   ----------------------------------------
	.byte		N12   , Fs1 , v072
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   , Fs1 , v068
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 172   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W12
	.byte		N10   
	.byte	W12
@ 173   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W12
@ 174   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
@ 175   ----------------------------------------
	.byte		N12   , An1 
	.byte	W36
	.byte		        An1 , v056
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 176   ----------------------------------------
	.byte		N12   , An1 
	.byte	W36
	.byte		        An1 , v052
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
@ 177   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 178   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
@ 179   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 180   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
@ 181   ----------------------------------------
	.byte		N12   , En1 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 182   ----------------------------------------
	.byte		N12   , En1 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
@ 183   ----------------------------------------
	.byte		N12   , An1 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 184   ----------------------------------------
	.byte		N12   , An1 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W10
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_the_great_sea_2:
	.byte	KEYSH , mus_the_great_sea_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 98*mus_the_great_sea_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W96
@ 001   ----------------------------------------
mus_the_great_sea_2_001:
	.byte	W72
	.byte		N06   , An2 , v084
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 003   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		N06   , An2 , v084
	.byte	W18
	.byte		N03   
	.byte	W06
@ 004   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 005   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		N06   , An2 , v084
	.byte	W18
	.byte		N03   
	.byte	W06
@ 006   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 007   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 008   ----------------------------------------
mus_the_great_sea_2_008:
	.byte		N04   , Dn3 , v080
	.byte		N04   , Fs3 , v084
	.byte	W18
	.byte		N02   , An2 , v080
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		TIE   , An2 
	.byte		TIE   , Fs3 , v080
	.byte	W72
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W66
	.byte		EOT   , An2 
	.byte		        Fs3 
	.byte	W06
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		        An2 
	.byte		N02   , Fs3 , v080
	.byte	W06
	.byte		        An2 
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		        Dn3 , v080
	.byte		N02   , Fs3 , v084
	.byte	W06
@ 010   ----------------------------------------
mus_the_great_sea_2_010:
	.byte		N96   , En3 , v080
	.byte		TIE   , An3 , v084
	.byte	W96
	.byte	PEND
@ 011   ----------------------------------------
	.byte		N96   , Dn3 , v080
	.byte	W66
	.byte		EOT   , An3 
	.byte	W06
	.byte		N08   , An3 , v084
	.byte	W12
	.byte		N02   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 012   ----------------------------------------
mus_the_great_sea_2_012:
	.byte		TIE   , Gn2 , v080
	.byte		TIE   , Gn3 , v084
	.byte	W96
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		EOT   , Gn2 
@ 014   ----------------------------------------
mus_the_great_sea_2_014:
	.byte		N96   , Dn3 , v072
	.byte		TIE   , En3 , v084
	.byte	W72
	.byte		N04   , An3 , v076
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte	PEND
@ 015   ----------------------------------------
mus_the_great_sea_2_015:
	.byte		N96   , Cs3 , v072
	.byte		N92   , An3 , v076
	.byte	W90
	.byte	PEND
	.byte		EOT   , En3 
	.byte	W06
@ 016   ----------------------------------------
mus_the_great_sea_2_016:
	.byte		N06   , Bn2 , v084
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		TIE   , Dn3 
	.byte	W48
	.byte		        Gn2 , v072
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_the_great_sea_2_017:
	.byte		N06   , Bn2 , v080
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N44   , Dn3 
	.byte	W44
	.byte	PEND
	.byte		EOT   
	.byte	W04
	.byte		N23   , En3 , v084
	.byte	W24
	.byte		EOT   , Gn2 
@ 018   ----------------------------------------
mus_the_great_sea_2_018:
	.byte		TIE   , An2 , v072
	.byte		N68   , Dn3 , v084
	.byte	W72
	.byte		N23   , En3 , v080
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_the_great_sea_2_019:
	.byte		N92   , An2 , v084
	.byte		N92   , Dn3 , v080
	.byte	W92
	.byte	W01
	.byte	PEND
	.byte		EOT   , An2 
	.byte	W03
@ 020   ----------------------------------------
mus_the_great_sea_2_020:
	.byte		TIE   , Gn2 , v080
	.byte		N06   , Bn2 , v084
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		TIE   , Dn3 
	.byte	W72
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_017
	.byte		EOT   , Dn3 
	.byte	W04
	.byte		N23   , En3 , v084
	.byte	W24
	.byte		EOT   , Gn2 
@ 022   ----------------------------------------
mus_the_great_sea_2_022:
	.byte		N96   , Bn2 , v080
	.byte		N92   , Dn3 , v084
	.byte	W96
	.byte	PEND
@ 023   ----------------------------------------
mus_the_great_sea_2_023:
	.byte		N96   , Cs3 , v080
	.byte		N92   , En3 , v084
	.byte	W96
	.byte	PEND
@ 024   ----------------------------------------
mus_the_great_sea_2_024:
	.byte		N04   , Dn3 , v080
	.byte		N04   , Fs3 , v084
	.byte	W18
	.byte		N02   , An2 , v080
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		TIE   , An2 
	.byte		N76   , Fs3 , v080
	.byte	W72
	.byte	PEND
@ 025   ----------------------------------------
mus_the_great_sea_2_025:
	.byte		N04   , Fs3 , v084
	.byte	W18
	.byte		N02   , Dn3 
	.byte	W06
	.byte		N42   , An2 
	.byte	W42
	.byte	PEND
	.byte		EOT   
	.byte	W06
	.byte		N02   , An2 , v080
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		        An2 
	.byte		N02   , Fs3 , v080
	.byte	W06
	.byte		        An2 
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		        Dn3 , v080
	.byte		N02   , Fs3 , v084
	.byte	W06
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_010
@ 027   ----------------------------------------
	.byte		N96   , Dn3 , v080
	.byte	W66
	.byte		EOT   , An3 
	.byte	W06
	.byte		N08   , An3 , v084
	.byte	W12
	.byte		N02   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 028   ----------------------------------------
mus_the_great_sea_2_028:
	.byte		TIE   , Gn2 , v080
	.byte		N84   , Gn3 , v084
	.byte	W72
	.byte		N08   , An3 
	.byte	W12
	.byte		N02   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
	.byte		N92   , Gn3 
	.byte	W96
	.byte		EOT   , Gn2 
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_015
	.byte		EOT   , En3 
	.byte	W06
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_017
	.byte		EOT   , Dn3 
	.byte	W04
	.byte		N23   , En3 , v084
	.byte	W24
	.byte		EOT   , Gn2 
@ 034   ----------------------------------------
mus_the_great_sea_2_034:
	.byte		TIE   , An2 , v072
	.byte		N48   , Dn3 , v084
	.byte	W48
	.byte		TIE   , Fs3 
	.byte	W24
	.byte		N23   , En3 , v080
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
	.byte		N92   , Dn3 
	.byte	W96
	.byte		EOT   , An2 
	.byte		        Fs3 
@ 036   ----------------------------------------
mus_the_great_sea_2_036:
	.byte		N06   , Dn3 , v084
	.byte		TIE   , Fn3 , v080
	.byte	W12
	.byte		N03   , Dn3 , v084
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		TIE   , Fn3 
	.byte	W72
	.byte	PEND
@ 037   ----------------------------------------
mus_the_great_sea_2_037:
	.byte		N06   , As2 , v080
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N72   , Dn3 
	.byte	W44
	.byte	PEND
	.byte		EOT   , Fn3 
	.byte		EOT   
	.byte	W28
@ 038   ----------------------------------------
mus_the_great_sea_2_038:
	.byte		N15   , As2 , v080
	.byte		N06   , Dn3 , v084
	.byte	W12
	.byte		N03   , As2 , v080
	.byte		N03   , Dn3 , v084
	.byte	W06
	.byte		        Cn3 , v080
	.byte		N03   , En3 , v084
	.byte	W06
	.byte		N72   , Dn3 , v080
	.byte		N72   , Fn3 , v084
	.byte	W72
	.byte	PEND
@ 039   ----------------------------------------
mus_the_great_sea_2_039:
	.byte		N96   , En3 , v080
	.byte		N92   , Gn3 , v084
	.byte	W96
	.byte	PEND
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_001
@ 042   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 043   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		N06   , An2 , v084
	.byte	W18
	.byte		N03   
	.byte	W06
@ 044   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 045   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		N06   , An2 , v084
	.byte	W18
	.byte		N03   
	.byte	W06
@ 046   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 047   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 048   ----------------------------------------
mus_the_great_sea_2_048:
	.byte		TIE   , Fs3 , v084
	.byte	W18
	.byte		N03   , Dn3 
	.byte	W06
	.byte		TIE   , An2 
	.byte	W72
	.byte	PEND
@ 049   ----------------------------------------
	.byte		N04   , Fs3 
	.byte	W04
	.byte		EOT   
	.byte	W14
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N42   , An2 
	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N10   , Dn3 
	.byte	W12
	.byte		N08   , Fs3 
	.byte	W12
@ 050   ----------------------------------------
mus_the_great_sea_2_050:
	.byte		N11   , Fs3 , v084
	.byte		TIE   , An3 
	.byte	W12
	.byte		N04   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N88   , En3 
	.byte	W48
	.byte		N10   , Dn3 
	.byte	W12
	.byte		N08   , Fs3 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_the_great_sea_2_051:
	.byte		N11   , Fs3 , v084
	.byte	W12
	.byte		N04   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N44   , En3 
	.byte	W60
	.byte		N09   , Dn3 
	.byte	W12
	.byte	PEND
	.byte		EOT   , An3 
@ 052   ----------------------------------------
mus_the_great_sea_2_052:
	.byte		N10   , Fs3 , v084
	.byte		TIE   , An3 
	.byte	W12
	.byte		N04   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		TIE   , An2 
	.byte	W72
	.byte	PEND
@ 053   ----------------------------------------
mus_the_great_sea_2_053:
	.byte		N04   , Fs3 , v084
	.byte	W18
	.byte		N02   , Dn3 
	.byte	W06
	.byte		N30   , An2 
	.byte	W30
	.byte	W01
	.byte	PEND
	.byte		EOT   
	.byte	W05
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N04   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		EOT   , An3 
@ 054   ----------------------------------------
mus_the_great_sea_2_054:
	.byte		N32   , An3 , v084
	.byte	W36
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N44   , Gn3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N04   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	PEND
@ 055   ----------------------------------------
mus_the_great_sea_2_055:
	.byte		N32   , An3 , v084
	.byte	W36
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N32   , Gn3 
	.byte	W48
	.byte	PEND
@ 056   ----------------------------------------
mus_the_great_sea_2_056:
	.byte		TIE   , Bn3 , v084
	.byte	W18
	.byte		N03   , Gn3 
	.byte	W06
	.byte		TIE   , Dn3 
	.byte	W72
	.byte	PEND
@ 057   ----------------------------------------
	.byte		N04   , Bn3 
	.byte	W04
	.byte		EOT   
	.byte	W14
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N42   , Dn3 
	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N08   , Bn3 
	.byte	W12
@ 058   ----------------------------------------
mus_the_great_sea_2_058:
	.byte		N16   , An3 , v084
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N04   , An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N56   , An3 
	.byte	W60
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
	.byte		N84   , Dn3 
	.byte	W96
@ 060   ----------------------------------------
mus_the_great_sea_2_060:
	.byte		N10   , Dn3 , v084
	.byte		TIE   , Gn3 
	.byte	W12
	.byte		N04   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		TIE   , Fs3 
	.byte	W72
	.byte	PEND
@ 061   ----------------------------------------
mus_the_great_sea_2_061:
	.byte		N04   , Bn2 , v084
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N66   , Dn3 
	.byte	W64
	.byte	W01
	.byte	PEND
	.byte		EOT   , Fs3 
	.byte	W07
	.byte		        Gn3 
@ 062   ----------------------------------------
mus_the_great_sea_2_062:
	.byte		N10   , Dn3 , v084
	.byte		TIE   , Gn3 
	.byte	W12
	.byte		N02   , Bn2 
	.byte		N04   , Dn3 
	.byte	W06
	.byte		N02   , Cs3 
	.byte		N04   , En3 
	.byte	W06
	.byte		N66   , Dn3 
	.byte		N68   , Fs3 
	.byte	W72
	.byte	PEND
@ 063   ----------------------------------------
	.byte		N96   , Cs3 
	.byte		N96   , En3 
	.byte	W96
	.byte		EOT   , Gn3 
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_048
@ 065   ----------------------------------------
	.byte		N04   , Fs3 , v084
	.byte	W04
	.byte		EOT   
	.byte	W14
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N42   , An2 
	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N10   , Dn3 
	.byte	W12
	.byte		N08   , Fs3 
	.byte	W12
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_050
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_051
	.byte		EOT   , An3 
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_052
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_053
	.byte		EOT   , An2 
	.byte	W05
	.byte		N06   , Dn3 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N04   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		EOT   , An3 
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_054
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_055
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_056
@ 073   ----------------------------------------
	.byte		N04   , Bn3 , v084
	.byte	W04
	.byte		EOT   
	.byte	W14
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N42   , Dn3 
	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N08   , Bn3 
	.byte	W12
@ 074   ----------------------------------------
mus_the_great_sea_2_074:
	.byte		N16   , An3 , v084
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N04   , An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N56   , An3 
	.byte	W60
	.byte		N08   , Dn4 
	.byte	W12
	.byte	PEND
@ 075   ----------------------------------------
mus_the_great_sea_2_075:
	.byte		N84   , Dn3 , v084
	.byte		N96   , Dn4 
	.byte	W96
	.byte	PEND
@ 076   ----------------------------------------
mus_the_great_sea_2_076:
	.byte		N10   , Dn3 , v084
	.byte		N96   , As3 
	.byte	W12
	.byte		N04   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		TIE   , Fn3 
	.byte	W72
	.byte	PEND
@ 077   ----------------------------------------
mus_the_great_sea_2_077:
	.byte		N04   , As2 , v084
	.byte		N96   , Dn4 
	.byte	W12
	.byte		N02   , As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N66   , Dn3 
	.byte	W64
	.byte	W01
	.byte	PEND
	.byte		EOT   , Fn3 
	.byte	W07
@ 078   ----------------------------------------
mus_the_great_sea_2_078:
	.byte		N96   , As3 , v084
	.byte		N96   , Dn4 
	.byte	W12
	.byte		N02   , As2 
	.byte		N04   , Dn3 
	.byte	W06
	.byte		N02   , Cn3 
	.byte		N04   , En3 
	.byte	W06
	.byte		N66   , Dn3 
	.byte		N68   , Fn3 
	.byte	W72
	.byte	PEND
@ 079   ----------------------------------------
	.byte		N96   , Cn4 
	.byte		N96   , En4 
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_001
@ 082   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 083   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		N06   , An2 , v084
	.byte	W18
	.byte		N03   
	.byte	W06
@ 084   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 085   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		N06   , An2 , v084
	.byte	W18
	.byte		N03   
	.byte	W06
@ 086   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 087   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_008
@ 089   ----------------------------------------
	.byte	W66
	.byte		EOT   , An2 
	.byte		        Fs3 
	.byte	W06
	.byte		N02   , An2 , v080
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		        An2 
	.byte		N02   , Fs3 , v080
	.byte	W06
	.byte		        An2 
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		        Dn3 , v080
	.byte		N02   , Fs3 , v084
	.byte	W06
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_010
@ 091   ----------------------------------------
	.byte		N96   , Dn3 , v080
	.byte	W66
	.byte		EOT   , An3 
	.byte	W06
	.byte		N08   , An3 , v084
	.byte	W12
	.byte		N02   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_012
@ 093   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   , Gn3 
	.byte	W02
	.byte		        Gn2 
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_014
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_015
	.byte		EOT   , En3 
	.byte	W06
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_016
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_017
	.byte		EOT   , Dn3 
	.byte	W04
	.byte		N23   , En3 , v084
	.byte	W24
	.byte		EOT   , Gn2 
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_018
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_019
	.byte		EOT   , An2 
	.byte	W03
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_020
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_017
	.byte		EOT   , Dn3 
	.byte	W04
	.byte		N23   , En3 , v084
	.byte	W24
	.byte		EOT   , Gn2 
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_022
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_023
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_024
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_025
	.byte		EOT   , An2 
	.byte	W06
	.byte		N02   , An2 , v080
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		        An2 
	.byte		N02   , Fs3 , v080
	.byte	W06
	.byte		        An2 
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		        Dn3 , v080
	.byte		N02   , Fs3 , v084
	.byte	W06
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_010
@ 107   ----------------------------------------
	.byte		N96   , Dn3 , v080
	.byte	W66
	.byte		EOT   , An3 
	.byte	W06
	.byte		N08   , An3 , v084
	.byte	W12
	.byte		N02   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_028
@ 109   ----------------------------------------
	.byte		N92   , Gn3 , v084
	.byte	W96
	.byte		EOT   , Gn2 
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_014
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_015
	.byte		EOT   , En3 
	.byte	W06
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_016
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_017
	.byte		EOT   , Dn3 
	.byte	W04
	.byte		N23   , En3 , v084
	.byte	W24
	.byte		EOT   , Gn2 
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_034
@ 115   ----------------------------------------
	.byte		N92   , Dn3 , v080
	.byte	W96
	.byte		EOT   , An2 
	.byte		        Fs3 
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_036
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_037
	.byte		EOT   , Fn3 
	.byte		EOT   
	.byte	W28
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_038
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_039
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_001
@ 122   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 123   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		N06   , An2 , v084
	.byte	W18
	.byte		N03   
	.byte	W06
@ 124   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 125   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		N06   , An2 , v084
	.byte	W18
	.byte		N03   
	.byte	W06
@ 126   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 127   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_048
@ 129   ----------------------------------------
	.byte		N04   , Fs3 , v084
	.byte	W04
	.byte		EOT   
	.byte	W14
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N42   , An2 
	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N10   , Dn3 
	.byte	W12
	.byte		N08   , Fs3 
	.byte	W12
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_050
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_051
	.byte		EOT   , An3 
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_052
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_053
	.byte		EOT   , An2 
	.byte	W05
	.byte		N06   , Dn3 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N04   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		EOT   , An3 
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_054
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_055
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_056
@ 137   ----------------------------------------
	.byte		N04   , Bn3 , v084
	.byte	W04
	.byte		EOT   
	.byte	W14
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N42   , Dn3 
	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N08   , Bn3 
	.byte	W12
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_058
@ 139   ----------------------------------------
	.byte		N84   , Dn3 , v084
	.byte	W96
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_060
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_061
	.byte		EOT   , Fs3 
	.byte	W07
	.byte		        Gn3 
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_062
@ 143   ----------------------------------------
	.byte		N96   , Cs3 , v084
	.byte		N96   , En3 
	.byte	W96
	.byte		EOT   , Gn3 
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_048
@ 145   ----------------------------------------
	.byte		N04   , Fs3 , v084
	.byte	W04
	.byte		EOT   
	.byte	W14
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N42   , An2 
	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N10   , Dn3 
	.byte	W12
	.byte		N08   , Fs3 
	.byte	W12
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_050
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_051
	.byte		EOT   , An3 
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_052
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_053
	.byte		EOT   , An2 
	.byte	W05
	.byte		N06   , Dn3 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N04   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		EOT   , An3 
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_054
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_055
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_056
@ 153   ----------------------------------------
	.byte		N04   , Bn3 , v084
	.byte	W04
	.byte		EOT   
	.byte	W14
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N42   , Dn3 
	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N08   , Bn3 
	.byte	W12
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_074
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_075
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_076
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_077
	.byte		EOT   , Fn3 
	.byte	W07
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_078
@ 159   ----------------------------------------
	.byte		N96   , Cn4 , v084
	.byte		N96   , En4 
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_001
@ 162   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 163   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		N06   , An2 , v084
	.byte	W18
	.byte		N03   
	.byte	W06
@ 164   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 165   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		N06   , An2 , v084
	.byte	W18
	.byte		N03   
	.byte	W06
@ 166   ----------------------------------------
	.byte		TIE   , An3 , v076
	.byte	W96
@ 167   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_008
@ 169   ----------------------------------------
	.byte	W66
	.byte		EOT   , An2 
	.byte		        Fs3 
	.byte	W06
	.byte		N02   , An2 , v080
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		        An2 
	.byte		N02   , Fs3 , v080
	.byte	W06
	.byte		        An2 
	.byte		N02   , Dn3 , v084
	.byte	W06
	.byte		        Dn3 , v080
	.byte		N02   , Fs3 , v084
	.byte	W06
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_010
@ 171   ----------------------------------------
	.byte		N96   , Dn3 , v076
	.byte	W66
	.byte		EOT   , An3 
	.byte	W06
	.byte		N08   , An3 , v080
	.byte	W12
	.byte		N02   , Gn3 , v076
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 172   ----------------------------------------
	.byte		TIE   , Gn2 , v072
	.byte		TIE   , Gn3 , v076
	.byte	W96
@ 173   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		EOT   , Gn2 
@ 174   ----------------------------------------
	.byte		N96   , Dn3 , v064
	.byte		TIE   , En3 , v068
	.byte	W72
	.byte		N04   , An3 , v064
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W08
@ 175   ----------------------------------------
	.byte		N96   , Cs3 
	.byte		N92   , An3 
	.byte	W90
	.byte		EOT   , En3 
	.byte	W06
@ 176   ----------------------------------------
	.byte		N06   , Bn2 
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		TIE   , Dn3 
	.byte	W48
	.byte		        Gn2 
	.byte	W24
@ 177   ----------------------------------------
mus_the_great_sea_2_177:
	.byte		N06   , Bn2 , v064
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N44   , Dn3 
	.byte	W44
	.byte	PEND
	.byte		EOT   
	.byte	W04
	.byte		N23   , En3 
	.byte	W24
	.byte		EOT   , Gn2 
@ 178   ----------------------------------------
	.byte		TIE   , An2 
	.byte		N68   , Dn3 
	.byte	W72
	.byte		N23   , En3 
	.byte	W24
@ 179   ----------------------------------------
	.byte		N92   , An2 
	.byte		N92   , Dn3 
	.byte	W92
	.byte	W01
	.byte		EOT   , An2 
	.byte	W03
@ 180   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		TIE   , Dn3 
	.byte	W72
@ 181   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_2_177
	.byte		EOT   , Dn3 
	.byte	W04
	.byte		N23   , En3 , v064
	.byte	W24
	.byte		EOT   , Gn2 
@ 182   ----------------------------------------
	.byte		N96   , Bn2 
	.byte		N92   , Dn3 
	.byte	W96
@ 183   ----------------------------------------
	.byte		N96   , Cs3 
	.byte		N92   , En3 
	.byte	W96
@ 184   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_the_great_sea_3:
	.byte	KEYSH , mus_the_great_sea_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 82*mus_the_great_sea_mvl/mxv
	.byte		PAN   , c_v-20
	.byte		N96   , Dn3 , v060
	.byte		N96   , Fs3 
	.byte		N96   , An3 
	.byte	W96
@ 001   ----------------------------------------
mus_the_great_sea_3_001:
	.byte		N96   , Cs3 , v060
	.byte		N96   , En3 
	.byte		N96   , An3 
	.byte	W96
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , En3 
	.byte		N96   , An3 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Bn2 
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 004   ----------------------------------------
mus_the_great_sea_3_004:
	.byte		N96   , An2 , v060
	.byte		N96   , Dn3 
	.byte		N96   , Fs3 
	.byte	W96
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Cs3 
	.byte		N96   , En3 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Gn2 
	.byte		N96   , As2 
	.byte		N96   , En3 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , En3 
	.byte		N96   , Gn3 
	.byte	W96
@ 008   ----------------------------------------
mus_the_great_sea_3_008:
	.byte		N06   , An2 , v064
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v060
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v064
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 010   ----------------------------------------
mus_the_great_sea_3_010:
	.byte		N06   , Cs3 , v064
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v052
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v052
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v064
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_010
@ 012   ----------------------------------------
mus_the_great_sea_3_012:
	.byte		N06   , Bn2 , v064
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v052
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v060
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v052
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v064
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 014   ----------------------------------------
mus_the_great_sea_3_014:
	.byte		N06   , An2 , v064
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 , v060
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 , v064
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_014
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 018   ----------------------------------------
mus_the_great_sea_3_018:
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 , v052
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 , v060
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 , v052
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 , v064
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_018
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 022   ----------------------------------------
mus_the_great_sea_3_022:
	.byte		N06   , An2 , v064
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 , v060
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 , v064
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_022
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_010
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_014
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_018
@ 036   ----------------------------------------
mus_the_great_sea_3_036:
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Dn3 , v052
	.byte		N06   , Fn3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Dn3 , v048
	.byte		N06   , Fn3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Dn3 , v060
	.byte		N06   , Fn3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Dn3 , v048
	.byte		N06   , Fn3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Dn3 , v052
	.byte		N06   , Fn3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Dn3 , v064
	.byte		N06   , Fn3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Dn3 , v048
	.byte		N06   , Fn3 
	.byte		N06   , As3 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_036
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_036
@ 039   ----------------------------------------
mus_the_great_sea_3_039:
	.byte		N06   , En3 , v064
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        En3 , v052
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        En3 , v048
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        En3 , v060
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        En3 , v048
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        En3 , v052
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        En3 , v064
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        En3 , v048
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 041   ----------------------------------------
mus_the_great_sea_3_041:
	.byte		N96   , Bn2 , v060
	.byte		N96   , En3 
	.byte		N96   , Gs3 
	.byte	W96
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 043   ----------------------------------------
mus_the_great_sea_3_043:
	.byte		N96   , Cs3 , v060
	.byte		N96   , Dn3 
	.byte		N96   , An3 
	.byte	W96
	.byte	PEND
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 050   ----------------------------------------
mus_the_great_sea_3_050:
	.byte		N06   , An2 , v064
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v060
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v064
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_050
@ 052   ----------------------------------------
mus_the_great_sea_3_052:
	.byte		N06   , An2 , v064
	.byte		N06   , Cn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , Cn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v060
	.byte		N06   , Cn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , Cn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v064
	.byte		N06   , Cn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_052
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_050
@ 059   ----------------------------------------
mus_the_great_sea_3_059:
	.byte		N06   , Bn2 , v064
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Bn2 , v052
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Bn2 , v060
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Bn2 , v052
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Bn2 , v064
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
mus_the_great_sea_3_060:
	.byte		N06   , Bn2 , v064
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v052
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v060
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v052
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v064
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_060
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_022
@ 063   ----------------------------------------
mus_the_great_sea_3_063:
	.byte		N06   , An2 , v064
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        An2 , v060
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        An2 , v064
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_050
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_050
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_052
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_052
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_059
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_059
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_050
@ 075   ----------------------------------------
mus_the_great_sea_3_075:
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Dn3 , v052
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Dn3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Dn3 , v060
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Dn3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Dn3 , v052
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Dn3 , v064
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Dn3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_036
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_036
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_041
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_043
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_041
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_010
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_014
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_014
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_018
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_018
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_022
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_022
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_010
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_014
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_014
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_018
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_018
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_036
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_036
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_036
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_039
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_041
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_043
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_041
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_001
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_050
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_050
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_052
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_052
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_050
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_059
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_060
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_060
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_022
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_063
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_050
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_050
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_052
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_052
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_059
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_059
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_012
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_050
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_075
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_036
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_036
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_036
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_039
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_041
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_043
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_041
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_004
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_001
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_008
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_010
@ 171   ----------------------------------------
	.byte		N06   , Cs3 , v064
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v052
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v060
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cs3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
@ 172   ----------------------------------------
	.byte		        Bn2 , v060
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
@ 173   ----------------------------------------
	.byte		        Bn2 , v056
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v052
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
@ 174   ----------------------------------------
	.byte		        An2 , v052
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 , v052
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
@ 175   ----------------------------------------
	.byte		        An2 , v052
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 , v048
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W12
@ 176   ----------------------------------------
mus_the_great_sea_3_176:
	.byte		N06   , Bn2 , v048
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte	PEND
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_176
@ 178   ----------------------------------------
mus_the_great_sea_3_178:
	.byte		N06   , Dn3 , v048
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte	PEND
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_178
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_176
@ 181   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_3_176
@ 182   ----------------------------------------
	.byte		N06   , An2 , v048
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
@ 183   ----------------------------------------
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W06
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_the_great_sea_4:
	.byte	KEYSH , mus_the_great_sea_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 108*mus_the_great_sea_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v088
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v084
	.byte	W24
	.byte		        En1 , v076
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
@ 001   ----------------------------------------
mus_the_great_sea_4_001:
	.byte		N02   , Cn1 , v088
	.byte		N02   , En1 , v084
	.byte	W24
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v084
	.byte	W24
	.byte		        En1 , v076
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 007   ----------------------------------------
mus_the_great_sea_4_007:
	.byte		N02   , Cn1 , v088
	.byte		N02   , En1 , v084
	.byte	W24
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v084
	.byte	W24
	.byte		        En1 , v076
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_the_great_sea_4_008:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte		        En1 , v084
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_the_great_sea_4_009:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte		        En1 , v084
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 011   ----------------------------------------
mus_the_great_sea_4_011:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 015   ----------------------------------------
mus_the_great_sea_4_015:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 019   ----------------------------------------
mus_the_great_sea_4_019:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 023   ----------------------------------------
mus_the_great_sea_4_023:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_023
@ 040   ----------------------------------------
mus_the_great_sea_4_040:
	.byte		N02   , Cn1 , v088
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v084
	.byte	W24
	.byte		        En1 , v076
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_011
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_015
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_023
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_011
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_015
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_019
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_023
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_040
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_007
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_011
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_015
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_019
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_023
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_011
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_015
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_019
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_023
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_040
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_007
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_011
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_015
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_019
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_023
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_011
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_015
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_019
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_023
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_040
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_001
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_007
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_008
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_009
@ 170   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v084
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
@ 171   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v080
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
@ 172   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , En1 
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
@ 173   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , En1 
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
@ 174   ----------------------------------------
	.byte		        Cn1 , v076
	.byte		N02   , En1 
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
@ 175   ----------------------------------------
	.byte		        Cn1 , v076
	.byte		N02   , En1 
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 176   ----------------------------------------
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
@ 177   ----------------------------------------
mus_the_great_sea_4_177:
	.byte		N02   , Cn1 , v076
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_177
@ 179   ----------------------------------------
	.byte		N02   , Cn1 , v076
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_177
@ 181   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_177
@ 182   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_sea_4_177
@ 183   ----------------------------------------
	.byte		N02   , Cn1 , v076
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_the_great_sea:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_the_great_sea_pri	@ Priority
	.byte	mus_the_great_sea_rev	@ Reverb.

	.word	mus_the_great_sea_grp

	.word	mus_the_great_sea_1
	.word	mus_the_great_sea_2
	.word	mus_the_great_sea_3
	.word	mus_the_great_sea_4

	.end
