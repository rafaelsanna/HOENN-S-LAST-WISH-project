	.include "MPlayDef.s"

	.equ	mus_street_spirit_grp, voicegroup_street_spirit
	.equ	mus_street_spirit_pri, 0
	.equ	mus_street_spirit_rev, reverb_set+50
	.equ	mus_street_spirit_mvl, 100
	.equ	mus_street_spirit_key, 0
	.equ	mus_street_spirit_tbs, 1
	.equ	mus_street_spirit_exg, 1
	.equ	mus_street_spirit_cmp, 1

	.section .rodata
	.global	mus_street_spirit
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_street_spirit_1:
	.byte	KEYSH , mus_street_spirit_key+0
mus_street_spirit_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 140*mus_street_spirit_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_street_spirit_mvl/mxv
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
	.byte		TIE   , Cn1 , v127
	.byte	W96
@ 025   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 026   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 027   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 028   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 029   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , En1 
	.byte	W24
@ 030   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 031   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 032   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 033   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 034   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 035   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 036   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 037   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , En1 
	.byte	W24
@ 038   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 039   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , En1 
	.byte	W24
@ 040   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 041   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , En1 
	.byte	W24
@ 042   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 043   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 044   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 045   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 046   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 047   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 048   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 049   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , En1 
	.byte	W24
@ 050   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 051   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 052   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 053   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 054   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 055   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 056   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 057   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , En1 
	.byte	W24
@ 058   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 059   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 060   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 061   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 062   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 063   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 064   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 065   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , En1 
	.byte	W24
@ 066   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 067   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 068   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 069   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 070   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 071   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 072   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 073   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , En1 
	.byte	W24
@ 074   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 075   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 076   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 077   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 078   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 079   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 080   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 083   ----------------------------------------
	.byte	W72
	.byte		N19   , En1 
	.byte	W24
@ 084   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 087   ----------------------------------------
	.byte	W72
	.byte		N19   , En1 
	.byte	W24
@ 088   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 092   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 093   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , En1 
	.byte	W24
@ 094   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 095   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 096   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 097   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 098   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 099   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 100   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 101   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , En1 
	.byte	W24
@ 102   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 103   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 104   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 105   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 106   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 107   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 108   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 109   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , En1 
	.byte	W24
@ 110   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 111   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 112   ----------------------------------------
mus_street_spirit_1_112:
	.byte		N19   , Cn1 , v127
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_112
@ 114   ----------------------------------------
mus_street_spirit_1_114:
	.byte		N19   , En1 , v127
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte	PEND
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_114
@ 116   ----------------------------------------
mus_street_spirit_1_116:
	.byte		N19   , An0 , v127
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 117   ----------------------------------------
mus_street_spirit_1_117:
	.byte		N09   , An0 , v127
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N19   , An0 
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_116
@ 119   ----------------------------------------
mus_street_spirit_1_119:
	.byte		N09   , An0 , v127
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N19   , An0 
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N09   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_112
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_112
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_114
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_114
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_116
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_117
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_116
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_119
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_112
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_112
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_114
@ 131   ----------------------------------------
	.byte		N19   , En1 , v127
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_116
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_117
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_116
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_119
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_112
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_112
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_114
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_1_114
@ 140   ----------------------------------------
	.byte		TIE   , An0 , v127
	.byte	W96
@ 141   ----------------------------------------
	.byte	W24
	.byte	TEMPO , 129*mus_street_spirit_tbs/2
	.byte	W24
	.byte	TEMPO , 118*mus_street_spirit_tbs/2
	.byte	W24
	.byte	TEMPO , 107*mus_street_spirit_tbs/2
	.byte	W24
@ 142   ----------------------------------------
	.byte	TEMPO , 97*mus_street_spirit_tbs/2
	.byte	W24
	.byte	TEMPO , 86*mus_street_spirit_tbs/2
	.byte	W24
	.byte	TEMPO , 75*mus_street_spirit_tbs/2
	.byte	W24
	.byte	TEMPO , 64*mus_street_spirit_tbs/2
	.byte	W04
	.byte		EOT   
	.byte	GOTO
	 .word	mus_street_spirit_1_B1
mus_street_spirit_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_street_spirit_2:
	.byte	KEYSH , mus_street_spirit_key+0
mus_street_spirit_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 46*mus_street_spirit_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N11   , An2 , v072
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
@ 001   ----------------------------------------
mus_street_spirit_2_001:
	.byte		N11   , Cn3 , v072
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_street_spirit_2_002:
	.byte		N11   , An2 , v072
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 016   ----------------------------------------
mus_street_spirit_2_016:
	.byte		N11   , En2 , v072
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_street_spirit_2_017:
	.byte		N11   , Cn3 , v072
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_016
@ 019   ----------------------------------------
mus_street_spirit_2_019:
	.byte		N11   , Cn3 , v072
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 024   ----------------------------------------
mus_street_spirit_2_024:
	.byte		N11   , Cn2 , v072
	.byte	W12
	.byte		N09   , Gn2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , Gn2 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N09   , Gn2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , Gn2 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_street_spirit_2_025:
	.byte		N11   , Cn3 , v072
	.byte	W12
	.byte		N09   , Gn2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , Gn2 
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N09   , Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_street_spirit_2_026:
	.byte		N11   , Bn1 , v072
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_street_spirit_2_027:
	.byte		N11   , Cn3 , v072
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_016
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_019
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_027
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_024
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_026
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_027
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_024
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_025
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_026
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_027
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_024
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_025
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_026
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_027
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_016
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_017
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_016
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_019
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_024
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_025
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_026
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_027
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_024
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_025
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_026
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_027
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_024
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_025
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_026
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_027
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_024
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_025
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_026
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_027
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_024
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_025
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_026
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_027
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_001
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_024
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_025
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_026
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_027
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_2_002
@ 141   ----------------------------------------
	.byte		N11   , Cn3 , v072
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 142   ----------------------------------------
	.byte		N76   
	.byte	W76
	.byte	GOTO
	 .word	mus_street_spirit_2_B1
mus_street_spirit_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_street_spirit_3:
	.byte	KEYSH , mus_street_spirit_key+0
mus_street_spirit_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_street_spirit_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N11   , An2 , v124
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
@ 001   ----------------------------------------
mus_street_spirit_3_001:
	.byte		N11   , Cn3 , v124
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_street_spirit_3_002:
	.byte		N11   , An2 , v124
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_001
@ 008   ----------------------------------------
mus_street_spirit_3_008:
	.byte		N36   , An2 , v124, gtp2
	.byte	W48
	.byte		        Bn2 , v124, gtp2
	.byte	W48
	.byte	PEND
@ 009   ----------------------------------------
mus_street_spirit_3_009:
	.byte		N36   , Cn3 , v124, gtp2
	.byte	W48
	.byte		        Bn2 , v124, gtp2
	.byte	W48
	.byte	PEND
@ 010   ----------------------------------------
mus_street_spirit_3_010:
	.byte	W24
	.byte		N19   , An2 , v124
	.byte	W24
	.byte		N09   , Bn2 
	.byte	W12
	.byte		N19   , An2 
	.byte	W24
	.byte		N21   , Bn2 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_street_spirit_3_011:
	.byte	W12
	.byte		N19   , An2 , v124
	.byte	W24
	.byte		N36   , En3 , v124, gtp2
	.byte	W60
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_011
@ 016   ----------------------------------------
mus_street_spirit_3_016:
	.byte		N19   , Gn2 , v124
	.byte	W24
	.byte		N09   , En3 
	.byte	W12
	.byte		N19   
	.byte	W24
	.byte		N32   , En3 , v124, gtp1
	.byte	W36
	.byte	PEND
@ 017   ----------------------------------------
mus_street_spirit_3_017:
	.byte		N09   , En3 , v124
	.byte	W12
	.byte		N19   
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N19   
	.byte	W36
	.byte	PEND
@ 018   ----------------------------------------
mus_street_spirit_3_018:
	.byte		N19   , Gn2 , v124
	.byte	W24
	.byte		N09   , En3 
	.byte	W12
	.byte		N19   
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N21   
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_street_spirit_3_019:
	.byte	W12
	.byte		N19   , En3 , v124
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N09   , Fn3 
	.byte	W12
	.byte		N19   , En3 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
mus_street_spirit_3_023:
	.byte	W72
	.byte		N09   , An2 , v124
	.byte	W12
	.byte		TIE   , Cn3 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Bn2 
	.byte	W12
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , An2 
	.byte	W12
	.byte		TIE   , En3 
	.byte	W12
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_023
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   , Cn3 
	.byte	W03
	.byte		TIE   , Bn2 , v124
	.byte	W12
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_010
@ 039   ----------------------------------------
	.byte	W12
	.byte		N19   , An2 , v124
	.byte	W24
	.byte		N28   , En3 
	.byte	W36
	.byte		N19   , An2 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N36   , An2 , v124, gtp2
	.byte	W48
	.byte		N19   , Bn2 
	.byte	W24
	.byte		N19   
	.byte	W24
@ 041   ----------------------------------------
	.byte		N36   , Cn3 , v124, gtp2
	.byte	W48
	.byte		N19   , Bn2 
	.byte	W24
	.byte		N09   , Cn3 
	.byte	W12
	.byte		N21   , Bn2 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W12
	.byte		N36   , An2 , v124, gtp2
	.byte	W84
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_017
@ 046   ----------------------------------------
	.byte		N19   , Gn2 , v124
	.byte	W24
	.byte		N09   , En3 
	.byte	W12
	.byte		N42   , En3 , v124, gtp1
	.byte	W60
@ 047   ----------------------------------------
	.byte	W72
	.byte		N09   
	.byte	W12
	.byte		N21   , Fn3 
	.byte	W12
@ 048   ----------------------------------------
	.byte	W12
	.byte		N28   , En3 
	.byte	W84
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_023
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   , Cn3 
	.byte	W03
	.byte		TIE   , Bn2 , v124
	.byte	W12
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , An2 
	.byte	W12
	.byte		TIE   , En3 
	.byte	W12
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_023
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   , Cn3 
	.byte	W03
	.byte		TIE   , Bn2 , v124
	.byte	W12
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , An2 
	.byte	W12
	.byte		N88   
	.byte	W12
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 069   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 070   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte	W96
@ 071   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 072   ----------------------------------------
	.byte		TIE   , Bn2 
	.byte	W96
@ 073   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 074   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 075   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 076   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 077   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 078   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte	W96
@ 079   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_008
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_011
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_008
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_011
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_016
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_017
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_018
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_019
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_023
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   , Cn3 
	.byte	W03
	.byte		TIE   , Bn2 , v124
	.byte	W12
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , An2 
	.byte	W12
	.byte		TIE   , En3 
	.byte	W12
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_street_spirit_3_023
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   , Cn3 
	.byte	W03
	.byte		TIE   , Bn2 , v124
	.byte	W12
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , An2 
	.byte	W12
	.byte		N88   
	.byte	W12
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 113   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 114   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte	W96
@ 115   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 116   ----------------------------------------
	.byte		TIE   , Bn2 
	.byte	W96
@ 117   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 118   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 119   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 120   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 121   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 122   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte	W96
@ 123   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 124   ----------------------------------------
	.byte		N76   , Bn2 
	.byte	W96
@ 125   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 126   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 127   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N09   , An2 
	.byte	W12
	.byte		TIE   , Gn2 
	.byte	W12
@ 128   ----------------------------------------
	.byte	W96
@ 129   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   
	.byte	W24
@ 130   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 131   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   , Dn3 
	.byte	W24
@ 132   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		EOT   
	.byte	W32
	.byte	W02
	.byte		N19   , An2 
	.byte	W24
@ 136   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte	W96
@ 137   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   
	.byte	W24
@ 138   ----------------------------------------
	.byte		TIE   , Gs2 
	.byte	W96
@ 139   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		N19   
	.byte	W24
@ 140   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 141   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		EOT   
	.byte	W56
	.byte	W02
@ 142   ----------------------------------------
	.byte	W76
	.byte	GOTO
	 .word	mus_street_spirit_3_B1
mus_street_spirit_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_street_spirit:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_street_spirit_pri	@ Priority
	.byte	mus_street_spirit_rev	@ Reverb.

	.word	mus_street_spirit_grp

	.word	mus_street_spirit_1
	.word	mus_street_spirit_2
	.word	mus_street_spirit_3

	.end
