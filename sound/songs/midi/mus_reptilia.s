	.include "MPlayDef.s"

	.equ	mus_reptilia_grp, voicegroup_reptilia
	.equ	mus_reptilia_pri, 0
	.equ	mus_reptilia_rev, reverb_set+50
	.equ	mus_reptilia_mvl, 100
	.equ	mus_reptilia_key, 0
	.equ	mus_reptilia_tbs, 1
	.equ	mus_reptilia_exg, 1
	.equ	mus_reptilia_cmp, 1

	.section .rodata
	.global	mus_reptilia
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_reptilia_1:
	.byte	KEYSH , mus_reptilia_key+0
mus_reptilia_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 160*mus_reptilia_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_reptilia_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W36
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 002   ----------------------------------------
mus_reptilia_1_002:
	.byte		N11   , Bn1 , v108
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
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 009   ----------------------------------------
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 010   ----------------------------------------
mus_reptilia_1_010:
	.byte		N11   , Bn0 , v108
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
	.byte	PEND
@ 011   ----------------------------------------
mus_reptilia_1_011:
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_reptilia_1_012:
	.byte		N11   , En1 , v108
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
	.byte	PEND
@ 013   ----------------------------------------
mus_reptilia_1_013:
	.byte		N11   , En1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 025   ----------------------------------------
mus_reptilia_1_025:
	.byte		N11   , En1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W72
	.byte	PEND
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
	.byte	W36
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_011
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_013
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_011
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_025
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
mus_reptilia_1_053:
	.byte	W36
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
mus_reptilia_1_054:
	.byte		N11   , Cs1 , v108
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
mus_reptilia_1_055:
	.byte		N12   , An1 , v108
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 056   ----------------------------------------
mus_reptilia_1_056:
	.byte		N12   , An1 , v108
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
mus_reptilia_1_057:
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_054
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_055
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_056
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_057
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_054
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_055
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_056
@ 065   ----------------------------------------
mus_reptilia_1_065:
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
mus_reptilia_1_066:
	.byte		N11   , Cs1 , v108
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
mus_reptilia_1_067:
	.byte		N11   , An1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_reptilia_1_068:
	.byte		N11   , An1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_065
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_066
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_067
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_068
@ 073   ----------------------------------------
mus_reptilia_1_073:
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 075   ----------------------------------------
mus_reptilia_1_075:
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 077   ----------------------------------------
mus_reptilia_1_077:
	.byte		N11   , En1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_075
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_077
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_075
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_077
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_075
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_077
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_075
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_077
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_075
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_077
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_075
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_077
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_075
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_013
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_011
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_013
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_010
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_011
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_012
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_025
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_053
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_054
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_055
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_056
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_057
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_054
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_055
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_056
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_057
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_054
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_055
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_056
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_065
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_066
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_067
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_068
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_065
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_066
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_067
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_068
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_073
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_1_002
@ 141   ----------------------------------------
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	GOTO
	 .word	mus_reptilia_1_B1
mus_reptilia_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_reptilia_2:
	.byte	KEYSH , mus_reptilia_key+0
mus_reptilia_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 62*mus_reptilia_mvl/mxv
	.byte		PAN   , c_v-14
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
	.byte	W36
	.byte		N92   , Dn3 , v068, gtp3
	.byte	W60
@ 008   ----------------------------------------
	.byte	W36
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
@ 009   ----------------------------------------
mus_reptilia_2_009:
	.byte		N11   , Dn3 , v068
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
	.byte	PEND
@ 010   ----------------------------------------
mus_reptilia_2_010:
	.byte		N11   , Dn3 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_reptilia_2_011:
	.byte		N11   , En3 , v068
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
	.byte	PEND
@ 012   ----------------------------------------
mus_reptilia_2_012:
	.byte		N11   , En3 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 024   ----------------------------------------
	.byte		N11   , En3 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W72
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
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 048   ----------------------------------------
mus_reptilia_2_048:
	.byte		N11   , En3 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_reptilia_2_049:
	.byte		N11   , An3 , v068
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_reptilia_2_050:
	.byte		N11   , Cs4 , v068
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_reptilia_2_051:
	.byte		N11   , Cs4 , v068
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
mus_reptilia_2_052:
	.byte		N11   , Dn4 , v068
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_049
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_050
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_051
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_052
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_049
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_050
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_051
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_052
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_049
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_050
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_051
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_052
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_049
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_050
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_051
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_052
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_049
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_050
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_051
@ 072   ----------------------------------------
	.byte		N11   , Dn4 , v068
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_012
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_012
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_012
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 088   ----------------------------------------
	.byte		N11   , En3 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 089   ----------------------------------------
mus_reptilia_2_089:
	.byte		N11   , Bn1 , v068
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 090   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 091   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 092   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_089
@ 094   ----------------------------------------
	.byte		N11   , Bn1 , v068
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_012
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_012
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_012
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_012
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_009
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_010
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_011
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_048
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_049
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_050
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_051
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_052
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_049
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_050
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_051
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_052
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_049
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_050
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_051
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_052
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_049
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_050
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_051
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_052
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_049
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_050
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_051
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_052
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_049
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_050
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_2_051
@ 136   ----------------------------------------
	.byte		N11   , Dn4 , v068
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W72
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W36
	.byte		N96   , Dn3 
	.byte	W60
@ 140   ----------------------------------------
	.byte	W60
	.byte	GOTO
	 .word	mus_reptilia_2_B1
mus_reptilia_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_reptilia_3:
	.byte	KEYSH , mus_reptilia_key+0
mus_reptilia_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 108*mus_reptilia_mvl/mxv
	.byte		PAN   , c_v+14
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
mus_reptilia_3_008:
	.byte	W36
	.byte		N11   , Dn4 , v096
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_reptilia_3_009:
	.byte	W12
	.byte		N12   , An3 , v096
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_reptilia_3_010:
	.byte	W12
	.byte		N12   , An3 , v096
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_reptilia_3_011:
	.byte	W12
	.byte		N12   , Dn4 , v096
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_reptilia_3_012:
	.byte	W12
	.byte		N12   , Dn4 , v096
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_012
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_012
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 048   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 , v096
	.byte	W84
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
mus_reptilia_3_056:
	.byte	W36
	.byte		N11   , Bn3 , v096
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
mus_reptilia_3_057:
	.byte		N11   , Fs3 , v096
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
mus_reptilia_3_058:
	.byte		N11   , An3 , v096
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
mus_reptilia_3_059:
	.byte		N11   , An3 , v096
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
mus_reptilia_3_060:
	.byte		N11   , Bn3 , v096
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_057
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_058
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_059
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_057
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_058
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_059
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_060
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_057
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_058
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_059
@ 072   ----------------------------------------
	.byte		N11   , Bn3 , v096
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N17   , Gs3 
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N11   , En3 
	.byte	W12
	.byte		N17   , Fs3 
	.byte	W12
@ 073   ----------------------------------------
mus_reptilia_3_073:
	.byte	W06
	.byte		N17   , En3 , v096
	.byte	W18
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N17   , En3 
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N17   , Dn3 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
mus_reptilia_3_074:
	.byte	W06
	.byte		N17   , Cs3 , v096
	.byte	W18
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N17   , Gs3 
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N11   , En3 
	.byte	W12
	.byte		N17   , Fs3 
	.byte	W12
	.byte	PEND
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_073
@ 076   ----------------------------------------
	.byte	W06
	.byte		N17   , Cs3 , v096
	.byte	W18
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N17   , Gs3 
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N11   , En3 
	.byte	W12
	.byte		N17   , Fs3 
	.byte	W12
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_073
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_074
@ 079   ----------------------------------------
	.byte	W06
	.byte		N17   , En3 , v096
	.byte	W18
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N17   , En3 
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W12
@ 080   ----------------------------------------
	.byte	W24
	.byte		N12   , An3 
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N11   , Fs3 
	.byte	W12
@ 081   ----------------------------------------
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W24
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N11   , Fs3 
	.byte	W12
@ 082   ----------------------------------------
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N12   , En4 
	.byte	W36
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N11   , Bn3 
	.byte	W12
@ 083   ----------------------------------------
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N12   , En4 
	.byte	W36
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W24
@ 084   ----------------------------------------
	.byte		N32   , Gs3 , v096, gtp3
	.byte	W36
	.byte		N17   
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N11   , En3 
	.byte	W12
	.byte		N17   , Fs3 
	.byte	W12
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_073
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_074
@ 087   ----------------------------------------
	.byte	W06
	.byte		N17   , En3 , v096
	.byte	W18
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N96   , Bn2 
	.byte	W60
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
	.byte	PATT
	 .word	mus_reptilia_3_008
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_012
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_012
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_012
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_009
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_010
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_011
@ 112   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 , v096
	.byte	W84
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
	.byte	PATT
	 .word	mus_reptilia_3_056
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_057
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_058
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_059
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_060
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_057
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_058
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_059
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_060
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_057
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_058
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_059
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_060
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_057
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_058
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_3_059
@ 136   ----------------------------------------
	.byte		N11   , Bn3 , v096
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W72
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W36
	.byte		N24   , Bn3 
	.byte	W24
	.byte	GOTO
	 .word	mus_reptilia_3_B1
mus_reptilia_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_reptilia_4:
	.byte	KEYSH , mus_reptilia_key+0
mus_reptilia_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 96*mus_reptilia_mvl/mxv
	.byte		N01   , Cn1 , v068
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		        Fn1 
	.byte	W04
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W36
@ 001   ----------------------------------------
mus_reptilia_4_001:
	.byte		N01   , Cn1 , v068
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_001
@ 008   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N01   , As1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
@ 009   ----------------------------------------
mus_reptilia_4_009:
	.byte		N01   , Cn1 , v064
	.byte		N01   , As1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 040   ----------------------------------------
mus_reptilia_4_040:
	.byte		N01   , Cn1 , v064
	.byte		N01   , As1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        As1 , v064
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 046   ----------------------------------------
mus_reptilia_4_046:
	.byte		N01   , Cn1 , v064
	.byte		N01   , As1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
mus_reptilia_4_047:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte	PEND
@ 048   ----------------------------------------
mus_reptilia_4_048:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W60
	.byte	PEND
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
mus_reptilia_4_052:
	.byte	W36
	.byte		N01   , Cn1 , v068
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
mus_reptilia_4_053:
	.byte	W12
	.byte		N01   , Cn1 , v068
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_053
@ 055   ----------------------------------------
mus_reptilia_4_055:
	.byte	W12
	.byte		N01   , Cn1 , v068
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		        An1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte	PEND
@ 056   ----------------------------------------
mus_reptilia_4_056:
	.byte		N01   , Dn1 , v068
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
mus_reptilia_4_057:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 064   ----------------------------------------
mus_reptilia_4_064:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 072   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 073   ----------------------------------------
mus_reptilia_4_073:
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_073
@ 088   ----------------------------------------
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Fn1 , v064
	.byte	W12
	.byte		N01   
	.byte	W12
@ 089   ----------------------------------------
mus_reptilia_4_089:
	.byte		N01   , Cn1 , v056
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Fn1 , v064
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fn1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Fn1 , v064
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_089
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_089
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_089
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_089
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_089
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_089
@ 096   ----------------------------------------
	.byte		N01   , Cn1 , v056
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N01   , Fn1 
	.byte	W12
	.byte		        Fn1 , v064
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_040
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_009
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_046
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_047
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_048
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_052
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_053
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_053
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_055
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_056
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_057
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_064
@ 136   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W36
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_001
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_001
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_reptilia_4_001
@ 140   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 , v064
	.byte		N01   , As1 
	.byte	W18
	.byte		        Gs1 , v048
	.byte	W06
	.byte	GOTO
	 .word	mus_reptilia_4_B1
mus_reptilia_4_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_reptilia:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_reptilia_pri	@ Priority
	.byte	mus_reptilia_rev	@ Reverb.

	.word	mus_reptilia_grp

	.word	mus_reptilia_1
	.word	mus_reptilia_2
	.word	mus_reptilia_3
	.word	mus_reptilia_4

	.end
