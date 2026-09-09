	.include "MPlayDef.s"

	.equ	mus_alejandro_lady_gaga_grp, voicegroup_littleroot_test
	.equ	mus_alejandro_lady_gaga_pri, 0
	.equ	mus_alejandro_lady_gaga_rev, reverb_set+12
	.equ	mus_alejandro_lady_gaga_mvl, 86
	.equ	mus_alejandro_lady_gaga_key, 0
	.equ	mus_alejandro_lady_gaga_tbs, 1
	.equ	mus_alejandro_lady_gaga_exg, 1
	.equ	mus_alejandro_lady_gaga_cmp, 1

	.section .rodata
	.global	mus_alejandro_lady_gaga
	.align	2

@**************** Track 1 (Midi-Chn.9) ****************@

mus_alejandro_lady_gaga_1:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 96*mus_alejandro_lady_gaga_tbs/2
	.byte		VOICE , 45
	.byte	W96
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W48
@ 010   ----------------------------------------
@ 011   ----------------------------------------
	.byte	TEMPO , 99*mus_alejandro_lady_gaga_tbs/2
	.byte	W24
@ 012   ----------------------------------------
@ 013   ----------------------------------------
	.byte	TEMPO , 96*mus_alejandro_lady_gaga_tbs/2
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte	W48
@ 019   ----------------------------------------
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
@ 021   ----------------------------------------
@ 022   ----------------------------------------
	.byte	TEMPO , 99*mus_alejandro_lady_gaga_tbs/2
	.byte	W24
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
mus_alejandro_lady_gaga_1_027:
	.byte		N12   , Bn2 , v080
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W48
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_027
@ 030   ----------------------------------------
	.byte		N06   , Fs3 , v080
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte		        Cs3 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 031   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N24   , Bn2 
	.byte	W66
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 032   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   , An2 
	.byte	W72
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 033   ----------------------------------------
mus_alejandro_lady_gaga_1_033:
	.byte	W12
	.byte		N12   , An3 , v080
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N18   , En3 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 034   ----------------------------------------
mus_alejandro_lady_gaga_1_034:
	.byte	W06
	.byte		N24   , Dn3 , v080
	.byte	W42
	.byte		        Cs3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_alejandro_lady_gaga_1_035:
	.byte		N18   , Cs3 , v080
	.byte	W18
	.byte		N24   , Bn2 
	.byte	W54
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 036   ----------------------------------------
mus_alejandro_lady_gaga_1_036:
	.byte	W12
	.byte		N24   , An2 , v080
	.byte	W66
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
mus_alejandro_lady_gaga_1_037:
	.byte		N12   , Bn2 , v080
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N18   , En3 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 038   ----------------------------------------
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W90
@ 039   ----------------------------------------
mus_alejandro_lady_gaga_1_039:
	.byte		N09   , Fs2 , v080
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 040   ----------------------------------------
mus_alejandro_lady_gaga_1_040:
	.byte		N09   , Fs2 , v080
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N09   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 041   ----------------------------------------
mus_alejandro_lady_gaga_1_041:
	.byte		N09   , Fs2 , v080
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N09   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
mus_alejandro_lady_gaga_1_042:
	.byte		N12   , Fs2 , v080
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte	W42
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
@ 043   ----------------------------------------
mus_alejandro_lady_gaga_1_043:
	.byte	W12
	.byte		N12   , Gn3 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W42
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	PEND
@ 044   ----------------------------------------
mus_alejandro_lady_gaga_1_044:
	.byte		N18   , En3 , v080
	.byte	W18
	.byte		N24   , Cs3 
	.byte	W42
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
@ 045   ----------------------------------------
mus_alejandro_lady_gaga_1_045:
	.byte	W12
	.byte		N12   , Gn3 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W48
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_044
@ 047   ----------------------------------------
mus_alejandro_lady_gaga_1_047:
	.byte	W12
	.byte		N12   , Gn3 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Dn3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 048   ----------------------------------------
mus_alejandro_lady_gaga_1_048:
	.byte		N06   , En3 , v080
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		        Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
@ 049   ----------------------------------------
mus_alejandro_lady_gaga_1_049:
	.byte	W12
	.byte		N12   , Bn2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W48
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 050   ----------------------------------------
mus_alejandro_lady_gaga_1_050:
	.byte		N18   , En3 , v080
	.byte	W18
	.byte		N24   , Cs3 
	.byte	W66
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 051   ----------------------------------------
mus_alejandro_lady_gaga_1_051:
	.byte		N18   , Dn3 , v080
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N24   , Bn2 
	.byte	W30
	.byte	PEND
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
mus_alejandro_lady_gaga_1_053:
	.byte		N06   , Dn3 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Dn3 
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte	PEND
@ 054   ----------------------------------------
mus_alejandro_lady_gaga_1_054:
	.byte	W84
	.byte		N06   , Dn3 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_051
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_053
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W48
	.byte		N24   , Cs3 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
@ 063   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N24   , Bn2 
	.byte	W42
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 064   ----------------------------------------
	.byte	W12
	.byte		N24   , An2 
	.byte	W72
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_033
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_034
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_036
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_037
@ 070   ----------------------------------------
	.byte	W06
	.byte		N24   , Dn3 , v080
	.byte	W90
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_039
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_040
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_041
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_042
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_043
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_044
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_045
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_044
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_047
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_048
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_049
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_050
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_051
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_053
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_054
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_051
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_053
@ 090   ----------------------------------------
mus_alejandro_lady_gaga_1_090:
	.byte	W60
	.byte		N12   , Gn3 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_043
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_044
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_045
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_044
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_043
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_044
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_045
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_044
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_043
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_044
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_045
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_044
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_047
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_048
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_049
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_050
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_051
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_053
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_054
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_051
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_053
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_090
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_043
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_044
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_045
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_044
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_047
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_048
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_049
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_050
@ 123   ----------------------------------------
	.byte		N18   , Dn3 , v080
	.byte	W18
	.byte		N48   , Bn2 
	.byte	W48
	.byte	FINE

@**************** Track 2 (Midi-Chn.16) ****************@

mus_alejandro_lady_gaga_2:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W24
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte	W24
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
mus_alejandro_lady_gaga_2_110:
	.byte	W84
	.byte		N06   , Dn3 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 111   ----------------------------------------
mus_alejandro_lady_gaga_2_111:
	.byte		N18   , Dn3 , v080
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N24   , Bn2 
	.byte	W30
	.byte	PEND
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
mus_alejandro_lady_gaga_2_113:
	.byte		N06   , Dn3 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Dn3 
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte	PEND
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_2_110
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_2_111
@ 116   ----------------------------------------
	.byte	W96
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_2_113
@ 118   ----------------------------------------
	.byte	W96
@ 119   ----------------------------------------
	.byte	W66
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_alejandro_lady_gaga_3:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W24
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 , v080
	.byte	W12
@ 019   ----------------------------------------
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
@ 022   ----------------------------------------
mus_alejandro_lady_gaga_3_022:
	.byte		N12   , Fs4 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W54
	.byte	PEND
@ 023   ----------------------------------------
mus_alejandro_lady_gaga_3_023:
	.byte		N12   , Bn3 , v080
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_023
@ 026   ----------------------------------------
	.byte		N06   , Fs4 , v080
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
mus_alejandro_lady_gaga_3_028:
	.byte	W48
	.byte		N06   , Cs4 , v080
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
mus_alejandro_lady_gaga_3_030:
	.byte	W36
	.byte		N06   , Bn3 , v080
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	PEND
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
mus_alejandro_lady_gaga_3_032:
	.byte	W48
	.byte		N06   , Cs4 , v080
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N24   , An3 
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
mus_alejandro_lady_gaga_3_034:
	.byte	W36
	.byte		N06   , Bn3 , v080
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N24   , Fs4 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_alejandro_lady_gaga_3_035:
	.byte		N12   , Bn3 , v080
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_alejandro_lady_gaga_3_036:
	.byte		N12   , Fs4 , v080
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W48
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 042   ----------------------------------------
mus_alejandro_lady_gaga_3_042:
	.byte		N12   , Fs4 , v080
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 055   ----------------------------------------
	.byte		N12   , Bn3 , v080
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_022
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_028
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_030
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_032
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_034
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_022
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 102   ----------------------------------------
	.byte		N12   , Fs4 , v080
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W60
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 106   ----------------------------------------
	.byte		N12   , Fs4 , v080
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 , v064
	.byte	W06
@ 107   ----------------------------------------
	.byte		N24   , Dn4 , v080
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_036
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 115   ----------------------------------------
	.byte		N12   , Bn3 , v080
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		N24   , An4 
	.byte	W32
	.byte	W01
@ 116   ----------------------------------------
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_035
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_042
@ 119   ----------------------------------------
	.byte	W66
	.byte	FINE

@**************** Track 4 (Midi-Chn.1) ****************@

mus_alejandro_lady_gaga_4:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte	W96
@ 001   ----------------------------------------
mus_alejandro_lady_gaga_4_001:
	.byte		N18   , Fs3 , v080
	.byte	W18
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_alejandro_lady_gaga_4_002:
	.byte		N36   , Fs4 , v080
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_alejandro_lady_gaga_4_003:
	.byte		N12   , Dn4 , v080
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N03   , Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_alejandro_lady_gaga_4_004:
	.byte		N36   , Gn4 , v080
	.byte	W36
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_alejandro_lady_gaga_4_005:
	.byte		N12   , Gn3 , v080
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_alejandro_lady_gaga_4_006:
	.byte		N12   , En4 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
mus_alejandro_lady_gaga_4_007:
	.byte		N12   , As3 , v080
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte	PEND
@ 008   ----------------------------------------
mus_alejandro_lady_gaga_4_008:
	.byte		N12   , Bn3 , v080
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W18
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs3 
	.byte	W12
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_003
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_006
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_007
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_008
@ 018   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs3 , v080
	.byte	W12
@ 019   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
@ 020   ----------------------------------------
mus_alejandro_lady_gaga_4_020:
	.byte		N12   , Dn4 , v080
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N36   , Gn4 
	.byte	W36
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        Cs4 
	.byte	W48
	.byte	W03
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
mus_alejandro_lady_gaga_4_039:
	.byte		N12   , Fs3 , v080
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 041   ----------------------------------------
mus_alejandro_lady_gaga_4_041:
	.byte		N12   , Gn3 , v080
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
mus_alejandro_lady_gaga_4_042:
	.byte		N12   , Cs4 , v080
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N24   , Dn4 
	.byte	W36
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_039
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_041
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_042
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_039
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_041
@ 054   ----------------------------------------
mus_alejandro_lady_gaga_4_054:
	.byte		N12   , Cs4 , v080
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N24   , Dn4 
	.byte	W48
	.byte	PEND
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
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_039
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_041
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_042
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_039
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_041
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_042
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_041
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_042
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_039
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_041
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_054
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
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_039
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_041
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_042
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_039
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_041
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_054
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_039
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_041
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_042
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_039
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_041
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_042
@ 119   ----------------------------------------
	.byte	W66
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_alejandro_lady_gaga_5:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W24
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte	W24
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W72
	.byte		N24   , Fs0 , v080
	.byte	W24
@ 023   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W24
@ 024   ----------------------------------------
	.byte		        Fs1 
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 025   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 026   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N24   , As1 
	.byte	W24
@ 027   ----------------------------------------
mus_alejandro_lady_gaga_5_027:
	.byte		N48   , Bn0 , v080
	.byte	W48
	.byte		        Dn1 
	.byte	W48
	.byte	PEND
@ 028   ----------------------------------------
	.byte		N96   , Fs0 
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 030   ----------------------------------------
	.byte		N96   , Fs0 , v080
	.byte	W96
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 032   ----------------------------------------
	.byte		N96   , Fs0 , v080
	.byte	W96
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 034   ----------------------------------------
	.byte		N96   , Fs0 , v080
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 036   ----------------------------------------
	.byte		N96   , Fs1 , v080
	.byte	W96
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 038   ----------------------------------------
	.byte		N48   , Fs0 , v080
	.byte	W96
@ 039   ----------------------------------------
mus_alejandro_lady_gaga_5_039:
	.byte		N12   , Gn1 , v080
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_alejandro_lady_gaga_5_040:
	.byte		N12   , An1 , v080
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
mus_alejandro_lady_gaga_5_041:
	.byte		N12   , Gn1 , v080
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
mus_alejandro_lady_gaga_5_042:
	.byte		N12   , An1 , v080
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_039
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_040
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_041
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_042
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_039
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_040
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_041
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_042
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 056   ----------------------------------------
	.byte		N72   , Fs1 , v080
	.byte	W96
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 058   ----------------------------------------
	.byte		N48   , Fs1 , v080
	.byte	W96
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 060   ----------------------------------------
	.byte		N96   , Fs0 , v080
	.byte	W96
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 062   ----------------------------------------
	.byte		N96   , Fs0 , v080
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 064   ----------------------------------------
	.byte		N96   , Fs0 , v080
	.byte	W96
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 066   ----------------------------------------
	.byte		N96   , Fs0 , v080
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 068   ----------------------------------------
	.byte		N96   , Fs1 , v080
	.byte	W96
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 070   ----------------------------------------
	.byte		N48   , Fs0 , v080
	.byte	W96
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_039
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_040
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_041
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_042
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_039
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_040
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_041
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_042
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_040
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_041
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_042
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_039
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_040
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_041
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_042
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 092   ----------------------------------------
mus_alejandro_lady_gaga_5_092:
	.byte		N48   , An0 , v080
	.byte	W48
	.byte		        Cn1 
	.byte	W48
	.byte	PEND
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_027
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_092
@ 095   ----------------------------------------
	.byte		N12   , Bn1 , v080
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N18   , Bn1 
	.byte	W18
@ 096   ----------------------------------------
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N18   , An1 
	.byte	W18
@ 097   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Bn0 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N18   , Gn1 
	.byte	W18
@ 098   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   , As0 
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N18   , Fs1 
	.byte	W18
@ 099   ----------------------------------------
mus_alejandro_lady_gaga_5_099:
	.byte		N12   , Bn1 , v080
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N18   , An1 
	.byte	W18
	.byte	PEND
@ 100   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N18   , An1 
	.byte	W18
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_099
@ 102   ----------------------------------------
	.byte		N12   , Bn1 , v080
	.byte	W18
	.byte		        An1 
	.byte	W18
	.byte		N12   
	.byte	W60
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_039
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_040
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_041
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_042
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_039
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_040
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_041
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_042
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_039
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_040
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_041
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_042
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_039
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_040
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_041
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_042
@ 119   ----------------------------------------
	.byte	W66
	.byte	FINE

@**************** Track 6 (Midi-Chn.7) ****************@

mus_alejandro_lady_gaga_6:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W24
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte	W24
@ 019   ----------------------------------------
mus_alejandro_lady_gaga_6_019:
	.byte		N12   , Bn1 , v080
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
mus_alejandro_lady_gaga_6_020:
	.byte		N12   , Fs1 , v080
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_019
@ 022   ----------------------------------------
	.byte		N12   , Fs1 , v080
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W72
@ 023   ----------------------------------------
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W18
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W24
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_020
@ 025   ----------------------------------------
	.byte		N12   , Bn1 , v080
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W18
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W18
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_020
@ 027   ----------------------------------------
mus_alejandro_lady_gaga_6_027:
	.byte	W12
	.byte		N12   , Bn1 , v080
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_alejandro_lady_gaga_6_028:
	.byte	W12
	.byte		N12   , Fs1 , v080
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_027
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_028
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_028
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
mus_alejandro_lady_gaga_6_039:
	.byte		N48   , Gn1 , v080
	.byte		N48   , Dn2 
	.byte		N48   , Gn2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , Dn2 
	.byte	W48
	.byte	PEND
@ 040   ----------------------------------------
mus_alejandro_lady_gaga_6_040:
	.byte		N48   , An1 , v080
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Cs2 
	.byte		N48   , Fs2 
	.byte	W48
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_027
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_028
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_027
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_027
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_028
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
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
	.byte		N72   , Bn1 , v080
	.byte		N72   , Fs2 
	.byte		N72   , Bn2 
	.byte		N72   , Dn3 
	.byte	W96
@ 096   ----------------------------------------
	.byte		        An1 
	.byte		N72   , En2 
	.byte		N72   , An2 
	.byte		N72   , Cs3 
	.byte	W96
@ 097   ----------------------------------------
	.byte		        Gn1 
	.byte		N72   , Dn2 
	.byte		N72   , Gn2 
	.byte		N72   , Bn2 
	.byte	W96
@ 098   ----------------------------------------
	.byte		        Fs1 
	.byte		N72   , Fs2 
	.byte		N72   , As2 
	.byte		N72   , Cs3 
	.byte	W96
@ 099   ----------------------------------------
mus_alejandro_lady_gaga_6_099:
	.byte		N48   , Gn1 , v080
	.byte		N48   , Dn2 
	.byte		N48   , Gn2 
	.byte		N48   , Bn2 
	.byte	W48
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte		N48   , Dn3 
	.byte	W48
	.byte	PEND
@ 100   ----------------------------------------
	.byte		        An1 
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Fs2 
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte	W48
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_099
@ 102   ----------------------------------------
	.byte		N18   , Bn1 , v080
	.byte		N18   , En2 
	.byte		N18   , An2 
	.byte		N18   , Cs3 
	.byte	W18
	.byte		        An1 
	.byte		N18   , En2 
	.byte		N18   , An2 
	.byte		N18   , Cs3 
	.byte	W18
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W60
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_039
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_040
@ 119   ----------------------------------------
	.byte	W66
	.byte	FINE

@**************** Track 7 (Midi-Chn.14) ****************@

mus_alejandro_lady_gaga_7:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte	W96
@ 001   ----------------------------------------
	.byte		N48   , Dn3 , v080
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte		        En3 
	.byte		N48   , Gn3 
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte		        En3 
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte		        Dn3 
	.byte		N48   , Fs3 
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W24
@ 010   ----------------------------------------
	.byte		        Dn3 
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte		        En3 
	.byte		N48   , Gn3 
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte		        En3 
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte		        Dn3 
	.byte		N48   , Fs3 
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte	W24
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W84
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
	.byte	W60
	.byte		N36   
	.byte	W36
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W60
	.byte		N36   
	.byte	W36
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
	.byte	W48
	.byte		N48   
	.byte	W48
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
	.byte	W60
	.byte		N36   
	.byte	W36
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W60
	.byte		N36   
	.byte	W36
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
	.byte	W48
	.byte		N48   
	.byte	W48
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
	.byte	W66
	.byte	FINE

@**************** Track 8 (Midi-Chn.12) ****************@

mus_alejandro_lady_gaga_8:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W24
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte	W24
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
mus_alejandro_lady_gaga_8_039:
	.byte		N48   , Gn3 , v080
	.byte		N48   , Bn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , An3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte	PEND
@ 040   ----------------------------------------
mus_alejandro_lady_gaga_8_040:
	.byte		N48   , En3 , v080
	.byte		N48   , An3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , An3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 042   ----------------------------------------
mus_alejandro_lady_gaga_8_042:
	.byte		N48   , An3 , v080
	.byte		N48   , Cs4 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , An3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_040
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_042
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_040
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_042
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
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_040
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_042
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_040
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_042
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_040
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_042
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_040
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_042
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
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_040
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_042
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_040
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_042
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_040
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_042
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_040
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_039
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_042
@ 119   ----------------------------------------
	.byte	W66
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_alejandro_lady_gaga_9:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W24
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte	W24
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
mus_alejandro_lady_gaga_9_027:
	.byte	W24
	.byte		N12   , Ds1 , v080
	.byte	W48
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
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
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_027
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
	.byte	W66
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_alejandro_lady_gaga_10:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W24
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte	W24
@ 019   ----------------------------------------
mus_alejandro_lady_gaga_10_019:
	.byte		N24   , Ds5 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_10_019
@ 021   ----------------------------------------
	.byte		N24   , Ds5 , v080
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
mus_alejandro_lady_gaga_10_055:
	.byte		N18   , Ds5 , v080
	.byte	W48
	.byte		N18   
	.byte	W48
	.byte	PEND
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_10_055
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
	.byte	W66
	.byte	FINE

@**************** Track 11 (Midi-Chn.10) ****************@

mus_alejandro_lady_gaga_11:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N24   , Cs1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W24
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte	W24
@ 019   ----------------------------------------
mus_alejandro_lady_gaga_11_019:
	.byte		N24   , Bn0 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_019
@ 021   ----------------------------------------
	.byte		N24   , Bn0 , v080
	.byte	W24
	.byte		        Dn1 
	.byte	W48
	.byte		N24   
	.byte	W24
@ 022   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N36   , Bn0 
	.byte		N36   , Dn1 
	.byte	W48
@ 023   ----------------------------------------
mus_alejandro_lady_gaga_11_023:
	.byte		N18   , Bn0 , v080
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 027   ----------------------------------------
mus_alejandro_lady_gaga_11_027:
	.byte		N18   , Bn0 , v080
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 038   ----------------------------------------
mus_alejandro_lady_gaga_11_038:
	.byte		N18   , Bn0 , v080
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N48   
	.byte		N48   , Dn1 
	.byte	W48
	.byte	PEND
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 055   ----------------------------------------
mus_alejandro_lady_gaga_11_055:
	.byte	W24
	.byte		N12   , Cs1 , v080
	.byte	W48
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_055
@ 057   ----------------------------------------
	.byte		N18   , Bn0 , v080
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 058   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W60
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_027
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_038
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
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
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 102   ----------------------------------------
	.byte		N18   , Bn0 , v080
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn1 
	.byte	W48
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_11_023
@ 119   ----------------------------------------
	.byte	W66
	.byte	FINE

@******************************************************@
	.align	2

mus_alejandro_lady_gaga:
	.byte	11	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_alejandro_lady_gaga_pri	@ Priority
	.byte	mus_alejandro_lady_gaga_rev	@ Reverb.

	.word	mus_alejandro_lady_gaga_grp

	.word	mus_alejandro_lady_gaga_1
	.word	mus_alejandro_lady_gaga_2
	.word	mus_alejandro_lady_gaga_3
	.word	mus_alejandro_lady_gaga_4
	.word	mus_alejandro_lady_gaga_5
	.word	mus_alejandro_lady_gaga_6
	.word	mus_alejandro_lady_gaga_7
	.word	mus_alejandro_lady_gaga_8
	.word	mus_alejandro_lady_gaga_9
	.word	mus_alejandro_lady_gaga_10
	.word	mus_alejandro_lady_gaga_11

	.end
