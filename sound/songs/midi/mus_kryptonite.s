	.include "MPlayDef.s"

	.equ	mus_kryptonite_grp, voicegroup_hlw_rock_metal
	.equ	mus_kryptonite_pri, 0
	.equ	mus_kryptonite_rev, reverb_set+26
	.equ	mus_kryptonite_mvl, 100
	.equ	mus_kryptonite_key, 0
	.equ	mus_kryptonite_tbs, 1
	.equ	mus_kryptonite_exg, 1
	.equ	mus_kryptonite_cmp, 1

	.section .rodata
	.global	mus_kryptonite
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_kryptonite_1:
	.byte	KEYSH , mus_kryptonite_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 99*mus_kryptonite_tbs/2
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_kryptonite_mvl/mxv
	.byte		N90   , Bn1 , v112, gtp1
	.byte		N90   , Fs2 , v112, gtp1
	.byte		N90   , Bn2 , v112, gtp1
	.byte	W96
@ 001   ----------------------------------------
mus_kryptonite_1_001:
	.byte		N44   , Gn1 , v112, gtp1
	.byte		N44   , Dn2 , v112, gtp1
	.byte		N44   , Gn2 , v112, gtp1
	.byte	W48
	.byte		        An1 , v112, gtp1
	.byte		N44   , En2 , v112, gtp1
	.byte		N44   , An2 , v112, gtp1
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
mus_kryptonite_1_002:
	.byte		N90   , Bn1 , v112, gtp1
	.byte		N90   , Fs2 , v112, gtp1
	.byte		N90   , Bn2 , v112, gtp1
	.byte	W96
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 024   ----------------------------------------
mus_kryptonite_1_024:
	.byte		N09   , Bn1 , v112
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N01   , Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N01   , Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N01   , Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N01   , Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
mus_kryptonite_1_025:
	.byte		N09   , Gn1 , v112
	.byte		N09   , Dn2 
	.byte		N09   , Gn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N01   , Gn1 
	.byte		N01   , Dn2 
	.byte		N01   , Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte		N01   , Dn2 
	.byte		N01   , Gn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N01   , Gn1 
	.byte		N01   , Dn2 
	.byte		N01   , Gn2 
	.byte	W06
	.byte		N09   , An1 
	.byte		N09   , En2 
	.byte		N09   , An2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N01   , An1 
	.byte		N01   , En2 
	.byte		N01   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N01   , En2 
	.byte		N01   , An2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N01   , An1 
	.byte		N01   , En2 
	.byte		N01   , An2 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_024
@ 027   ----------------------------------------
mus_kryptonite_1_027:
	.byte		N09   , En1 , v112
	.byte		N01   , Bn1 
	.byte		N09   , En2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		N01   , En1 
	.byte		N01   , Bn1 
	.byte		N01   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N01   , Bn1 
	.byte		N01   , En2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		N01   , En1 
	.byte		N01   , Bn1 
	.byte		N01   , En2 
	.byte	W06
	.byte		N09   , Fs1 
	.byte		N09   , Cs2 
	.byte		N09   , Fs2 
	.byte	W12
	.byte		N06   , Fs1 
	.byte		N06   , Cs2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N01   , Fs1 
	.byte		N01   , Cs2 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N01   , Cs2 
	.byte		N01   , Fs2 
	.byte	W12
	.byte		N06   , Fs1 
	.byte		N06   , Cs2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N01   , Fs1 
	.byte		N01   , Cs2 
	.byte		N01   , Fs2 
	.byte	W06
	.byte	PEND
@ 028   ----------------------------------------
mus_kryptonite_1_028:
	.byte		N09   , Bn1 , v112
	.byte		N01   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N01   , Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N01   , Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N01   , Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N01   , Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_024
@ 031   ----------------------------------------
mus_kryptonite_1_031:
	.byte		N09   , En1 , v112
	.byte		N01   , Bn1 
	.byte		N09   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N09   , Bn1 
	.byte		N09   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N09   , Bn1 
	.byte		N09   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N09   , Bn1 
	.byte		N09   , En2 
	.byte	W12
	.byte		        Fs1 
	.byte		N09   , Cs2 
	.byte		N09   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N09   , Cs2 
	.byte		N09   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N09   , Cs2 
	.byte		N09   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N09   , Cs2 
	.byte		N09   , Fs2 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_024
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_025
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_024
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_027
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_028
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_024
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_031
@ 052   ----------------------------------------
	.byte		N06   , Bn1 , v112
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N01   , Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N01   , Fs2 
	.byte		N01   , Bn2 
	.byte	W12
	.byte		N09   , Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
@ 053   ----------------------------------------
mus_kryptonite_1_053:
	.byte		N09   , Gn1 , v112
	.byte		N09   , Dn2 
	.byte		N09   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N09   , Dn2 
	.byte		N09   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N09   , Dn2 
	.byte		N09   , Gn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N01   , Gn1 
	.byte		N01   , Dn2 
	.byte		N01   , Gn2 
	.byte	W06
	.byte		N09   , An1 
	.byte		N09   , En2 
	.byte		N09   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N09   , En2 
	.byte		N09   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N09   , En2 
	.byte		N09   , An2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N01   , An1 
	.byte		N01   , En2 
	.byte		N01   , An2 
	.byte	W06
	.byte	PEND
@ 054   ----------------------------------------
mus_kryptonite_1_054:
	.byte		N09   , Bn1 , v112
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Fs2 
	.byte		N09   , Bn2 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_053
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_053
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 059   ----------------------------------------
	.byte		N09   , Gn1 , v112
	.byte		N09   , Dn2 
	.byte		N09   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N09   , Dn2 
	.byte		N09   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N09   , Dn2 
	.byte		N09   , Gn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N01   , Gn1 
	.byte		N01   , Dn2 
	.byte		N01   , Gn2 
	.byte	W06
	.byte		N09   , An1 
	.byte		N09   , En2 
	.byte		N09   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N09   , En2 
	.byte		N09   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N09   , En2 
	.byte		N09   , An2 
	.byte	W12
	.byte		N10   , An1 
	.byte		N10   , En2 
	.byte		N10   , An2 
	.byte	W12
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 061   ----------------------------------------
mus_kryptonite_1_061:
	.byte		N09   , Gn1 , v112
	.byte		N09   , Dn2 
	.byte		N09   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N09   , Dn2 
	.byte		N09   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N09   , Dn2 
	.byte		N09   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N09   , Dn2 
	.byte		N09   , Gn2 
	.byte	W12
	.byte		        An1 
	.byte		N09   , En2 
	.byte		N09   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N09   , En2 
	.byte		N09   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N09   , En2 
	.byte		N09   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N09   , En2 
	.byte		N09   , An2 
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_061
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_061
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_061
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_061
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_061
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_024
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_025
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_024
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_028
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_025
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_024
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_031
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_061
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_061
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_061
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_054
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_1_061
@ 088   ----------------------------------------
	.byte		TIE   , Bn1 , v112
	.byte		TIE   , Fs2 
	.byte		TIE   , Bn2 
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W76
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
	.byte	FINE

@**************** Track 2 (Midi-Chn.7) ****************@

mus_kryptonite_2:
	.byte	KEYSH , mus_kryptonite_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 122*mus_kryptonite_mvl/mxv
	.byte		N90   , Bn0 , v108, gtp1
	.byte	W90
	.byte	W01
	.byte	W05
@ 001   ----------------------------------------
mus_kryptonite_2_001:
	.byte		N44   , Gn0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	PEND
	.byte	W03
	.byte		        An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 002   ----------------------------------------
mus_kryptonite_2_002:
	.byte		N90   , Bn0 , v108, gtp1
	.byte	W90
	.byte	W01
	.byte	PEND
	.byte	W05
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 024   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 025   ----------------------------------------
	.byte		N09   , Gn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , An0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 026   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 027   ----------------------------------------
	.byte		N09   , En0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , Fs0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 028   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 029   ----------------------------------------
	.byte		N09   , Gn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , An0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 030   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 031   ----------------------------------------
	.byte		N09   , En0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Fs0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_002
	.byte	W05
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_2_001
	.byte	W03
	.byte		N44   , An0 , v108, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
@ 044   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 045   ----------------------------------------
	.byte		N09   , Gn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , An0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 046   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 047   ----------------------------------------
	.byte		N09   , En0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , Fs0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 048   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 049   ----------------------------------------
	.byte		N09   , Gn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , An0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 050   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 051   ----------------------------------------
	.byte		N09   , En0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Fs0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 052   ----------------------------------------
	.byte		N04   , Bn0 
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 053   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 054   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 055   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 056   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 057   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 058   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 059   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N10   
	.byte	W10
	.byte	W02
@ 060   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 061   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 062   ----------------------------------------
	.byte		        Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 063   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 064   ----------------------------------------
	.byte		        Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 065   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 066   ----------------------------------------
	.byte		        Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 067   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 068   ----------------------------------------
	.byte		        Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 069   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 070   ----------------------------------------
	.byte		        Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 071   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 072   ----------------------------------------
	.byte		        Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 073   ----------------------------------------
	.byte		N09   , Gn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , An0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 074   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 075   ----------------------------------------
	.byte		N09   , En0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , Fs0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 076   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 077   ----------------------------------------
	.byte		N09   , Gn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   , An0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 078   ----------------------------------------
	.byte		N09   , Bn0 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 079   ----------------------------------------
	.byte		N09   , En0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Fs0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 080   ----------------------------------------
	.byte		        Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 081   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 082   ----------------------------------------
	.byte		        Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 083   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 084   ----------------------------------------
	.byte		        Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 085   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 086   ----------------------------------------
	.byte		        Bn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 087   ----------------------------------------
	.byte		        Gn0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        An0 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
@ 088   ----------------------------------------
	.byte		TIE   , Bn0 
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	FINE

@**************** Track 3 (Midi-Chn.10) ****************@

mus_kryptonite_3:
	.byte	KEYSH , mus_kryptonite_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 118*mus_kryptonite_mvl/mxv
	.byte	W12
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
@ 001   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
@ 002   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
@ 003   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
@ 004   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
@ 005   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
@ 006   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
@ 007   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
@ 008   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
@ 009   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
@ 010   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
@ 011   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        Bn1 , v112
	.byte	W03
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W01
	.byte		        Gn1 
	.byte	W03
	.byte	W01
	.byte		        Bn1 
	.byte	W03
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W01
	.byte		        Gn1 
	.byte	W03
	.byte	W01
@ 012   ----------------------------------------
mus_kryptonite_3_012:
	.byte		N09   , Bn0 , v120
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	PEND
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 013   ----------------------------------------
mus_kryptonite_3_013:
	.byte		N09   , Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	PEND
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N03   , En1 , v116
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W01
	.byte		        Gn1 
	.byte	W03
	.byte	W01
	.byte		N19   , Fn1 
	.byte	W12
@ 016   ----------------------------------------
mus_kryptonite_3_016:
	.byte		N09   , Bn0 , v120
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W07
	.byte	PEND
	.byte	W02
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N03   , En1 , v116
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        Fn1 , v112
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        Bn1 
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W01
	.byte		        Bn1 
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W01
@ 024   ----------------------------------------
mus_kryptonite_3_024:
	.byte		N09   , Bn0 , v120
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	PEND
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N03   , En1 , v116
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        Bn1 , v112
	.byte	W03
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W01
	.byte		        Gn1 
	.byte	W03
	.byte	W01
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N03   , En1 , v116
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W01
	.byte		        Gn1 
	.byte	W03
	.byte	W01
	.byte		N19   , Fn1 
	.byte	W12
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_016
	.byte	W02
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N03   , En1 , v116
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        Fn1 , v112
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        Bn1 
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W01
	.byte		        Bn1 
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W01
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N03   , En1 , v116
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W01
	.byte		        Gn1 
	.byte	W03
	.byte	W01
	.byte		N19   , Fn1 
	.byte	W12
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_016
	.byte	W02
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   , An2 
	.byte	W09
	.byte	W03
	.byte		N06   , Ds2 
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 060   ----------------------------------------
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte		N03   , Cs2 , v072
	.byte	W03
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
@ 061   ----------------------------------------
mus_kryptonite_3_061:
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	PEND
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_061
	.byte	W01
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_061
	.byte	W01
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_061
	.byte	W01
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_061
	.byte	W01
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_061
	.byte	W01
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_061
	.byte	W01
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_061
	.byte	W01
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_061
	.byte	W01
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_061
	.byte	W01
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   , Bn0 , v120
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_061
	.byte	W01
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte	W09
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte	W01
	.byte		        En1 , v116
	.byte		N03   , An1 , v112
	.byte	W03
	.byte	W01
	.byte		        En1 , v116
	.byte		N03   , Gn1 , v112
	.byte	W03
	.byte	W01
	.byte		        En1 , v116
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte	W01
	.byte		        En1 , v116
	.byte		N03   , An1 , v112
	.byte	W03
	.byte	W01
	.byte		        En1 , v116
	.byte		N03   , Gn1 , v112
	.byte	W03
	.byte	W01
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   , Bn0 , v120
	.byte		N06   , Ds2 , v072
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte		N09   
	.byte	W09
	.byte	W03
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_024
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte		N09   
	.byte	W09
	.byte	W03
@ 079   ----------------------------------------
	.byte		N03   , Fs1 , v076
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        Bn1 , v112
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		        Gn1 
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W01
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_013
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_kryptonite_3_012
	.byte	W03
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		        Bn0 , v120
	.byte		N09   , Cs2 , v072
	.byte		N09   , Ds2 
	.byte	W09
	.byte	W03
	.byte		        En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
	.byte		N06   , Cs2 
	.byte		N06   , Ds2 
	.byte	W06
	.byte	W02
	.byte		N03   , Bn0 , v120
	.byte	W03
	.byte	W01
	.byte		N09   , En1 , v116
	.byte		N09   , Ds2 , v072
	.byte	W09
	.byte	W03
@ 088   ----------------------------------------
	.byte		N76   , Bn0 , v120
	.byte		N76   , Cs2 , v072
	.byte	W76
	.byte	FINE

@******************************************************@
	.align	2

mus_kryptonite:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_kryptonite_pri	@ Priority
	.byte	mus_kryptonite_rev	@ Reverb.

	.word	mus_kryptonite_grp

	.word	mus_kryptonite_1
	.word	mus_kryptonite_2
	.word	mus_kryptonite_3

	.end
