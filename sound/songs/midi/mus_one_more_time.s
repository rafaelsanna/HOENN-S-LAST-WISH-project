	.include "MPlayDef.s"

	.equ	mus_one_more_time_grp, voicegroup_littleroot_test
	.equ	mus_one_more_time_pri, 0
	.equ	mus_one_more_time_rev, reverb_set+50
	.equ	mus_one_more_time_mvl, 94
	.equ	mus_one_more_time_key, 0
	.equ	mus_one_more_time_tbs, 1
	.equ	mus_one_more_time_exg, 1
	.equ	mus_one_more_time_cmp, 1

	.section .rodata
	.global	mus_one_more_time
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_one_more_time_1:
	.byte		VOL   , 127*mus_one_more_time_mvl/mxv
	.byte	KEYSH , mus_one_more_time_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 122*mus_one_more_time_tbs/2
	.byte		VOICE , 80
	.byte		N24   , Bn2 , v048
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N24   
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N24   
	.byte		N24   , Bn4 
	.byte	W24
@ 002   ----------------------------------------
mus_one_more_time_1_002:
	.byte		N24   , Bn2 , v048
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N24   
	.byte		N24   , Bn4 
	.byte	W36
	.byte		N36   , An2 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	PEND
@ 003   ----------------------------------------
mus_one_more_time_1_003:
	.byte		N24   , Bn2 , v048
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N24   
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N24   
	.byte		N24   , Bn4 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 007   ----------------------------------------
mus_one_more_time_1_007:
	.byte		N24   , Bn2 , v048
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
mus_one_more_time_1_008:
	.byte		N24   , Bn2 , v048
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , Bn2 
	.byte		N12   , En4 
	.byte	W12
	.byte		N36   , An2 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_008
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
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_007
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_008
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_007
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_008
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_003
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_002
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_007
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_1_008
@ 165   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_one_more_time_2:
	.byte		VOL   , 127*mus_one_more_time_mvl/mxv
	.byte	KEYSH , mus_one_more_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		N12   , Gn1 , v048
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W36
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W36
@ 001   ----------------------------------------
mus_one_more_time_2_001:
	.byte		N12   , Gn1 , v048
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W36
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs3 
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
mus_one_more_time_2_002:
	.byte		N12   , Gn1 , v048
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W36
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W36
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 006   ----------------------------------------
mus_one_more_time_2_006:
	.byte		N12   , An1 , v048
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v044
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v044
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v044
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v044
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_one_more_time_2_007:
	.byte		N12   , An1 , v048
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v044
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v044
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs3 
	.byte	W36
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 049   ----------------------------------------
mus_one_more_time_2_049:
	.byte		N12   , Gn1 , v048
	.byte		N12   , Gn3 
	.byte	W48
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs3 
	.byte	W36
	.byte	PEND
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 072   ----------------------------------------
	.byte		N96   , Gn1 , v048
	.byte		N96   , Gn3 
	.byte	W96
@ 073   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 074   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 077   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 079   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 080   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 081   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 082   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 083   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 085   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 086   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 087   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 088   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 089   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 090   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 091   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 092   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 093   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 094   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 095   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 096   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 097   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 098   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 099   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 100   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 101   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 102   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 103   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 104   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 106   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 107   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 108   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 109   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 110   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 111   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 112   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 113   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 114   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 115   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 116   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 117   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 118   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 119   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 120   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 121   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 122   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 123   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 124   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 125   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 126   ----------------------------------------
	.byte		        En1 
	.byte		N96   , En3 
	.byte	W96
@ 127   ----------------------------------------
	.byte		        An1 
	.byte		N96   , An3 
	.byte	W96
@ 128   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Gn3 
	.byte	W96
@ 129   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs3 
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_006
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_007
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_006
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_007
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_001
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_002
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_049
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_006
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_2_007
@ 164   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_one_more_time_3:
	.byte		VOL   , 127*mus_one_more_time_mvl/mxv
	.byte	KEYSH , mus_one_more_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		N12   , Gn1 , v044
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W30
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W30
@ 001   ----------------------------------------
mus_one_more_time_3_001:
	.byte		N12   , Gn1 , v044
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W42
	.byte		N36   , Cs3 
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
mus_one_more_time_3_002:
	.byte		N12   , Gn1 , v044
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W30
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W30
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 006   ----------------------------------------
mus_one_more_time_3_006:
	.byte		N12   , An1 , v044
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_one_more_time_3_007:
	.byte		N12   , An1 , v044
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W18
	.byte		N36   , Cs3 
	.byte	W36
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_007
@ 064   ----------------------------------------
mus_one_more_time_3_064:
	.byte		N12   , Gn2 , v036
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 065   ----------------------------------------
mus_one_more_time_3_065:
	.byte		N12   , Gn2 , v036
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W36
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_064
@ 067   ----------------------------------------
mus_one_more_time_3_067:
	.byte		N12   , Gn2 , v036
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W36
	.byte	PEND
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_065
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_064
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_067
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
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_006
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_007
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_006
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_007
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_002
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_001
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_006
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_3_007
@ 164   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_one_more_time_4:
	.byte		VOL   , 127*mus_one_more_time_mvl/mxv
	.byte	KEYSH , mus_one_more_time_key+0
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
mus_one_more_time_4_015:
	.byte	W48
	.byte		N12   , An3 , v072
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_one_more_time_4_016:
	.byte		N12   , Dn3 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W84
	.byte	PEND
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
	.byte	PATT
	 .word	mus_one_more_time_4_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_016
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
mus_one_more_time_4_032:
	.byte	W48
	.byte		N12   , Fs3 , v072
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_one_more_time_4_033:
	.byte	W12
	.byte		N12   , Bn2 , v072
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_one_more_time_4_034:
	.byte	W24
	.byte		N12   , En3 , v072
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_one_more_time_4_035:
	.byte		N12   , Dn3 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_032
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_035
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_032
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_032
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_033
@ 046   ----------------------------------------
	.byte	W24
	.byte		N12   , En3 , v072
	.byte	W24
	.byte		        Dn3 
	.byte	W48
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_016
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
	 .word	mus_one_more_time_4_032
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_033
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_034
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_032
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_033
@ 070   ----------------------------------------
	.byte	W24
	.byte		N12   , En3 , v072
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 072   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W72
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 073   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W48
	.byte		        Bn2 
	.byte	W48
@ 074   ----------------------------------------
	.byte	W60
	.byte		        An2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte	W60
	.byte		        Fs2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 076   ----------------------------------------
	.byte	W18
	.byte		N12   
	.byte	W48
	.byte		        An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
@ 077   ----------------------------------------
	.byte	W06
	.byte		        Fs2 
	.byte	W66
	.byte		N12   
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 078   ----------------------------------------
	.byte	W84
	.byte		N12   , An2 
	.byte	W12
@ 079   ----------------------------------------
	.byte		        Bn2 
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W36
@ 080   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 081   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 082   ----------------------------------------
mus_one_more_time_4_082:
	.byte		N12   , Bn2 , v072
	.byte	W12
	.byte		        Dn3 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Bn2 
	.byte	W36
	.byte	PEND
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_082
@ 085   ----------------------------------------
mus_one_more_time_4_085:
	.byte	W12
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
mus_one_more_time_4_087:
	.byte	W48
	.byte		N12   , Bn2 , v072
	.byte	W12
	.byte		        Dn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 088   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_015
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_016
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 092   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn2 , v072
	.byte	W60
	.byte		        An2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 093   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W72
	.byte		N12   
	.byte	W12
@ 094   ----------------------------------------
mus_one_more_time_4_094:
	.byte		N12   , Bn2 , v072
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 095   ----------------------------------------
	.byte	W12
	.byte		        Bn2 
	.byte	W60
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 096   ----------------------------------------
	.byte	W12
	.byte		        Bn2 
	.byte	W24
	.byte		        Fs3 
	.byte	W48
	.byte		        Dn3 
	.byte	W12
@ 097   ----------------------------------------
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W60
	.byte		        En3 
	.byte	W12
@ 098   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 099   ----------------------------------------
	.byte	W84
	.byte		        Fs3 
	.byte	W12
@ 100   ----------------------------------------
	.byte	W84
	.byte		        En3 
	.byte	W12
@ 101   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W60
	.byte		        Fs3 
	.byte	W12
@ 102   ----------------------------------------
	.byte		N12   
	.byte	W60
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_085
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 105   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn2 , v072
	.byte	W84
@ 106   ----------------------------------------
mus_one_more_time_4_106:
	.byte		N12   , Bn2 , v072
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 113   ----------------------------------------
mus_one_more_time_4_113:
	.byte	W12
	.byte		N12   , Bn2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_015
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_015
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_087
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_094
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_113
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_4_106
@ 163   ----------------------------------------
	.byte	W96
@ 164   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_one_more_time_5:
	.byte		VOL   , 127*mus_one_more_time_mvl/mxv
	.byte	KEYSH , mus_one_more_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte	W12
	.byte		N06   , Dn4 , v032
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 001   ----------------------------------------
mus_one_more_time_5_001:
	.byte	W12
	.byte		N06   , Dn4 , v032
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		        Cs4 
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_one_more_time_5_002:
	.byte	W12
	.byte		N06   , Dn4 , v032
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 006   ----------------------------------------
mus_one_more_time_5_006:
	.byte	W12
	.byte		N06   , En4 , v032
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_one_more_time_5_007:
	.byte	W12
	.byte		N06   , En4 , v032
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		        Cs4 
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_007
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
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_006
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_007
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_006
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_007
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_002
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_001
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_006
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_5_007
@ 164   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_one_more_time_6:
	.byte		VOL   , 127*mus_one_more_time_mvl/mxv
	.byte	KEYSH , mus_one_more_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		N24   , Gn1 , v112
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte		N12   
	.byte	W12
@ 001   ----------------------------------------
mus_one_more_time_6_001:
	.byte		N24   , Gn1 , v112
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   , An1 
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
mus_one_more_time_6_002:
	.byte		N24   , Gn1 , v112
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_001
@ 006   ----------------------------------------
mus_one_more_time_6_006:
	.byte		N24   , Fs1 , v112
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
mus_one_more_time_6_007:
	.byte		N24   , Fs1 , v112
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N36   , An1 
	.byte	W36
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_007
@ 016   ----------------------------------------
mus_one_more_time_6_016:
	.byte		N24   , Gn1 , v120
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_one_more_time_6_017:
	.byte		N24   , Gn1 , v120
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   , An1 
	.byte	W36
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 022   ----------------------------------------
mus_one_more_time_6_022:
	.byte		N24   , Fs1 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
mus_one_more_time_6_023:
	.byte		N24   , Fs1 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N36   , An1 
	.byte	W36
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_022
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_023
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_022
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_023
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_002
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_001
@ 072   ----------------------------------------
	.byte		N96   , Gn1 , v112
	.byte	W96
@ 073   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 074   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 077   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 079   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 080   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 081   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 082   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 083   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 085   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 086   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 087   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 088   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 089   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 090   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 091   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 092   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 093   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 094   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 095   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 096   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 097   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 098   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 099   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 100   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 101   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 102   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 103   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 104   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 106   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 107   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 108   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 109   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 110   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 111   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 112   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 113   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 114   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 115   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 116   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 117   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 118   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 119   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 120   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 121   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 122   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 123   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 124   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 125   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 126   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 127   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 128   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 129   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_022
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_023
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_022
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_023
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_016
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_017
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_022
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_6_023
@ 164   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_one_more_time_7:
	.byte		VOL   , 127*mus_one_more_time_mvl/mxv
	.byte	KEYSH , mus_one_more_time_key+0
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
mus_one_more_time_7_046:
	.byte		N06   , Fs2 , v040
	.byte	W06
	.byte		        Fs2 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 , v040
	.byte	W06
	.byte		        Fs2 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 , v040
	.byte	W06
	.byte		        Fs2 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 , v040
	.byte	W06
	.byte		        Fs2 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
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
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
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
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
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
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_7_046
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
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte	W96
@ 164   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_one_more_time_8:
	.byte		VOL   , 127*mus_one_more_time_mvl/mxv
	.byte	KEYSH , mus_one_more_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
@ 001   ----------------------------------------
mus_one_more_time_8_001:
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_one_more_time_8_002:
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_001
@ 006   ----------------------------------------
mus_one_more_time_8_006:
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_006
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_006
@ 016   ----------------------------------------
mus_one_more_time_8_016:
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 024   ----------------------------------------
mus_one_more_time_8_024:
	.byte		N12   , Bn0 , v056
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , As1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte		N12   , Dn1 
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , As1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , As1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte		N12   , Dn1 
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , As1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_006
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 064   ----------------------------------------
mus_one_more_time_8_064:
	.byte		N12   , Bn0 , v056
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        As1 , v052
	.byte	W12
	.byte		        Bn0 , v056
	.byte		N12   , Dn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        As1 , v052
	.byte	W12
	.byte		        Bn0 , v056
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        As1 , v052
	.byte	W12
	.byte		        Bn0 , v056
	.byte		N12   , Dn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        As1 , v052
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_064
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_064
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_064
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_064
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_064
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_064
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
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 117   ----------------------------------------
mus_one_more_time_8_117:
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 , v056
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_117
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_117
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_117
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_117
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_117
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_016
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_117
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_one_more_time_8_024
@ 164   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_one_more_time:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_one_more_time_pri	@ Priority
	.byte	mus_one_more_time_rev	@ Reverb.

	.word	mus_one_more_time_grp

	.word	mus_one_more_time_1
	.word	mus_one_more_time_2
	.word	mus_one_more_time_3
	.word	mus_one_more_time_4
	.word	mus_one_more_time_5
	.word	mus_one_more_time_6
	.word	mus_one_more_time_7
	.word	mus_one_more_time_8

	.end
