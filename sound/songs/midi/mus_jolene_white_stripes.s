	.include "MPlayDef.s"

	.equ	mus_jolene_white_stripes_grp, voicegroup_hlw_rock_metal
	.equ	mus_jolene_white_stripes_pri, 0
	.equ	mus_jolene_white_stripes_rev, reverb_set+15
	.equ	mus_jolene_white_stripes_mvl, 96
	.equ	mus_jolene_white_stripes_key, 0
	.equ	mus_jolene_white_stripes_tbs, 1
	.equ	mus_jolene_white_stripes_exg, 1
	.equ	mus_jolene_white_stripes_cmp, 1

	.section .rodata
	.global	mus_jolene_white_stripes
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_jolene_white_stripes_1:
	.byte		VOL   , 127*mus_jolene_white_stripes_mvl/mxv
	.byte	KEYSH , mus_jolene_white_stripes_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 180*mus_jolene_white_stripes_tbs/2
	.byte		VOICE , 29
	.byte		N24   , Dn2 , v080
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 002   ----------------------------------------
mus_jolene_white_stripes_1_002:
	.byte		N24   , Dn3 , v080
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_jolene_white_stripes_1_003:
	.byte		N24   , Dn2 , v080
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 009   ----------------------------------------
mus_jolene_white_stripes_1_009:
	.byte		N72   , Dn2 , v080
	.byte		N72   , An2 
	.byte		N72   , Dn3 
	.byte	W72
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_jolene_white_stripes_1_010:
	.byte		N72   , Fn1 , v080
	.byte		N72   , Cn2 
	.byte		N72   , Fn2 
	.byte	W72
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_jolene_white_stripes_1_011:
	.byte		N72   , Cn2 , v080
	.byte		N72   , Gn2 
	.byte		N72   , Cn3 
	.byte	W72
	.byte		N24   , Cn2 
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_010
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_010
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_010
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 060   ----------------------------------------
mus_jolene_white_stripes_1_060:
	.byte		N24   , Dn2 , v080
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 061   ----------------------------------------
mus_jolene_white_stripes_1_061:
	.byte		N48   , Dn2 , v080
	.byte		N48   , An2 
	.byte		N48   , Dn3 
	.byte	W48
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_jolene_white_stripes_1_062:
	.byte		N48   , Fn1 , v080
	.byte		N48   , Cn2 
	.byte		N48   , Fn2 
	.byte	W48
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_jolene_white_stripes_1_063:
	.byte		N48   , Cn2 , v080
	.byte		N48   , Gn2 
	.byte		N48   , Cn3 
	.byte	W48
	.byte		N24   , Cn2 
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_061
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_061
@ 066   ----------------------------------------
mus_jolene_white_stripes_1_066:
	.byte		N12   , Cn2 , v080
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W96
	.byte	PEND
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_062
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_063
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_061
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_061
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_066
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte		N96   , Dn2 , v080
	.byte		N96   , An2 
	.byte		N96   , Dn3 
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_010
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_010
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_010
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_011
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_002
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_003
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_060
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_061
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_062
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_063
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_061
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_061
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_066
@ 123   ----------------------------------------
	.byte	W96
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_009
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_062
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_063
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_061
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_061
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_1_066
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte		N96   , Dn2 , v080
	.byte		N96   , An2 
	.byte		N96   , Dn3 
	.byte		N96   , Fn3 
	.byte	W96
@ 136   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.5) ****************@

mus_jolene_white_stripes_2:
	.byte		VOL   , 127*mus_jolene_white_stripes_mvl/mxv
	.byte	KEYSH , mus_jolene_white_stripes_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 28
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
	.byte	W72
	.byte		N24   , Cn3 , v080
	.byte	W24
@ 008   ----------------------------------------
mus_jolene_white_stripes_2_008:
	.byte		N72   , Dn3 , v080
	.byte	W72
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_jolene_white_stripes_2_009:
	.byte		N72   , Fn3 , v080
	.byte	W72
	.byte		N24   , Gn3 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_jolene_white_stripes_2_010:
	.byte		N48   , An3 , v080
	.byte	W48
	.byte		N36   , Cn4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_jolene_white_stripes_2_011:
	.byte	W12
	.byte		N12   , Cn4 , v080
	.byte	W12
	.byte		N48   , An3 
	.byte	W72
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 013   ----------------------------------------
mus_jolene_white_stripes_2_013:
	.byte		N24   , An3 , v080
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_jolene_white_stripes_2_014:
	.byte		N12   , En3 , v080
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W72
	.byte		N24   , Cn3 
	.byte	W24
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_008
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_009
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_010
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_011
@ 023   ----------------------------------------
	.byte	W72
	.byte		N24   , An3 , v080
	.byte	W24
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_013
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_014
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W72
	.byte		N24   , Cn3 , v080
	.byte	W24
@ 030   ----------------------------------------
mus_jolene_white_stripes_2_030:
	.byte		N24   , Dn3 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_jolene_white_stripes_2_031:
	.byte	W12
	.byte		N24   , Fn3 , v080
	.byte	W24
	.byte		N48   
	.byte	W48
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_jolene_white_stripes_2_032:
	.byte		N24   , Gn3 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_jolene_white_stripes_2_033:
	.byte	W12
	.byte		N24   , An3 , v080
	.byte	W24
	.byte		N48   
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_013
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_014
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W72
	.byte		N24   , Cn3 , v080
	.byte	W24
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_030
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_031
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_032
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_033
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_013
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_014
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W72
	.byte		N24   , Cn3 , v080
	.byte	W24
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_030
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_031
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_032
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_033
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_013
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_014
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W72
	.byte		N24   , Cn3 , v080
	.byte	W24
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_008
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_009
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_010
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_011
@ 064   ----------------------------------------
	.byte	W72
	.byte		N24   , An3 , v080
	.byte	W24
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_013
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_014
@ 067   ----------------------------------------
	.byte		N96   , Dn3 , v080
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W72
	.byte		N24   , An3 
	.byte	W24
@ 071   ----------------------------------------
mus_jolene_white_stripes_2_071:
	.byte		N72   , An3 , v080
	.byte	W72
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 072   ----------------------------------------
mus_jolene_white_stripes_2_072:
	.byte		N12   , Gn3 , v080
	.byte	W12
	.byte		N48   , Fn3 
	.byte	W60
	.byte		N24   , Gn3 
	.byte	W24
	.byte	PEND
@ 073   ----------------------------------------
mus_jolene_white_stripes_2_073:
	.byte		N48   , Gn3 , v080
	.byte	W48
	.byte		N36   , En3 
	.byte	W36
	.byte		N12   , Fn3 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W72
	.byte		N24   , An3 
	.byte	W24
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_013
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_014
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
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_030
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_031
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_032
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_033
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_013
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_014
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W72
	.byte		N24   , Cn3 , v080
	.byte	W24
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_030
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_031
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_032
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_033
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_013
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_014
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W72
	.byte		N24   , Cn3 , v080
	.byte	W24
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_030
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_031
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_032
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_033
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_013
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_014
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W72
	.byte		N24   , Cn3 , v080
	.byte	W24
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_008
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_009
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_010
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_011
@ 120   ----------------------------------------
	.byte	W72
	.byte		N24   , An3 , v080
	.byte	W24
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_013
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_014
@ 123   ----------------------------------------
	.byte		N96   , Dn3 , v080
	.byte	W96
@ 124   ----------------------------------------
	.byte	W96
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	W72
	.byte		N24   , An3 
	.byte	W24
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_071
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_072
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_073
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W72
	.byte		N24   , An3 , v080
	.byte	W24
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_013
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_2_014
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_jolene_white_stripes_3:
	.byte		VOL   , 127*mus_jolene_white_stripes_mvl/mxv
	.byte	KEYSH , mus_jolene_white_stripes_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		N24   , Dn2 , v080
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 001   ----------------------------------------
mus_jolene_white_stripes_3_001:
	.byte		N24   , Dn3 , v080
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_jolene_white_stripes_3_002:
	.byte		N24   , Dn2 , v080
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 008   ----------------------------------------
mus_jolene_white_stripes_3_008:
	.byte		N72   , Dn2 , v080
	.byte		N72   , An2 
	.byte		N72   , Dn3 
	.byte		N72   , Fn3 
	.byte	W72
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_jolene_white_stripes_3_009:
	.byte		N72   , Fn2 , v080
	.byte		N72   , An2 
	.byte		N72   , Cn3 
	.byte		N72   , Fn3 
	.byte	W72
	.byte		N24   , Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_jolene_white_stripes_3_010:
	.byte		N72   , Gn2 , v080
	.byte		N72   , Cn3 
	.byte		N72   , En3 
	.byte	W72
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 013   ----------------------------------------
mus_jolene_white_stripes_3_013:
	.byte		N72   , En2 , v080
	.byte		N72   , Gn2 
	.byte		N72   , Cn3 
	.byte		N72   , En3 
	.byte	W72
	.byte		N24   , En2 
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_009
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_009
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_009
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_009
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 065   ----------------------------------------
mus_jolene_white_stripes_3_065:
	.byte		N12   , En2 , v080
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W96
	.byte	PEND
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_009
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_065
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_009
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_009
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_010
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_009
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_065
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_002
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_001
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_009
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_013
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_008
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_3_065
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte		N96   , Dn2 , v080
	.byte		N96   , An2 
	.byte		N96   , Dn3 
	.byte		N96   , Fn3 
	.byte	W96
@ 135   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.7) ****************@

mus_jolene_white_stripes_4:
	.byte		VOL   , 127*mus_jolene_white_stripes_mvl/mxv
	.byte	KEYSH , mus_jolene_white_stripes_key+0
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
mus_jolene_white_stripes_4_008:
	.byte		N72   , Dn1 , v080
	.byte	W72
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_jolene_white_stripes_4_009:
	.byte		N72   , Fn0 , v080
	.byte	W72
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_jolene_white_stripes_4_010:
	.byte		N72   , Cn1 , v080
	.byte	W72
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 015   ----------------------------------------
	.byte		N96   , Dn1 , v080
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_009
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 026   ----------------------------------------
	.byte		N96   , Dn1 , v080
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_009
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 036   ----------------------------------------
	.byte		N96   , Dn1 , v080
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 046   ----------------------------------------
	.byte		N96   , Dn1 , v080
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_009
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 056   ----------------------------------------
	.byte		N96   , Dn1 , v080
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
mus_jolene_white_stripes_4_060:
	.byte		N48   , Dn1 , v080
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
mus_jolene_white_stripes_4_061:
	.byte		N48   , Fn0 , v080
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_jolene_white_stripes_4_062:
	.byte		N48   , Cn1 , v080
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 065   ----------------------------------------
	.byte		N12   , Cn1 , v080
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_061
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_062
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 076   ----------------------------------------
	.byte		N12   , Cn1 , v080
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte		N96   , Dn1 
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_009
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 092   ----------------------------------------
	.byte		N96   , Dn1 , v080
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 102   ----------------------------------------
	.byte		N96   , Dn1 , v080
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_009
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_008
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_010
@ 112   ----------------------------------------
	.byte		N96   , Dn1 , v080
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_061
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_062
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 121   ----------------------------------------
	.byte		N12   , Cn1 , v080
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_061
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_062
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_4_060
@ 132   ----------------------------------------
	.byte		N12   , Cn1 , v080
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte		N96   , Dn1 
	.byte	W96
@ 135   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_jolene_white_stripes_5:
	.byte		VOL   , 127*mus_jolene_white_stripes_mvl/mxv
	.byte	KEYSH , mus_jolene_white_stripes_key+0
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
	.byte		N48   , Bn4 , v080
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 036   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 046   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 056   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte		N48   
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
	.byte		N48   
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 092   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 102   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 112   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte		N48   
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
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_jolene_white_stripes_6:
	.byte		VOL   , 127*mus_jolene_white_stripes_mvl/mxv
	.byte	KEYSH , mus_jolene_white_stripes_key+0
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
mus_jolene_white_stripes_6_004:
	.byte		N48   , Ds2 , v080
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 015   ----------------------------------------
mus_jolene_white_stripes_6_015:
	.byte		N48   , Bn0 , v080
	.byte		N48   , Ds2 
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 060   ----------------------------------------
mus_jolene_white_stripes_6_060:
	.byte		N48   , Bn0 , v080
	.byte		N48   , An2 
	.byte	W48
	.byte		        Dn1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte	PEND
@ 061   ----------------------------------------
mus_jolene_white_stripes_6_061:
	.byte		N48   , Bn0 , v080
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Dn1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 065   ----------------------------------------
	.byte		N96   , Bn0 , v080
	.byte		N96   , Cs2 
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_060
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 076   ----------------------------------------
	.byte		N96   , Bn0 , v080
	.byte		N96   , Cs2 
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
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_015
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_004
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_060
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 121   ----------------------------------------
	.byte		N96   , Bn0 , v080
	.byte		N96   , Cs2 
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_060
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_jolene_white_stripes_6_061
@ 132   ----------------------------------------
	.byte		N96   , Bn0 , v080
	.byte		N96   , Cs2 
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte		        Ds2 
	.byte	W96
@ 135   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_jolene_white_stripes:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_jolene_white_stripes_pri	@ Priority
	.byte	mus_jolene_white_stripes_rev	@ Reverb.

	.word	mus_jolene_white_stripes_grp

	.word	mus_jolene_white_stripes_1
	.word	mus_jolene_white_stripes_2
	.word	mus_jolene_white_stripes_3
	.word	mus_jolene_white_stripes_4
	.word	mus_jolene_white_stripes_5
	.word	mus_jolene_white_stripes_6

	.end
