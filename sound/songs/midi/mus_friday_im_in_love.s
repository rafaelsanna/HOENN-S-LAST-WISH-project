	.include "MPlayDef.s"

	.equ	mus_friday_im_in_love_grp, voicegroup_hlw_indie_guitar
	.equ	mus_friday_im_in_love_pri, 0
	.equ	mus_friday_im_in_love_rev, reverb_set+35
	.equ	mus_friday_im_in_love_mvl, 94
	.equ	mus_friday_im_in_love_key, 0
	.equ	mus_friday_im_in_love_tbs, 1
	.equ	mus_friday_im_in_love_exg, 1
	.equ	mus_friday_im_in_love_cmp, 1

	.section .rodata
	.global	mus_friday_im_in_love
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_friday_im_in_love_1:
	.byte		VOL   , 127*mus_friday_im_in_love_mvl/mxv
	.byte	KEYSH , mus_friday_im_in_love_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 132*mus_friday_im_in_love_tbs/2
	.byte		VOICE , 27
	.byte	W24
	.byte		N12   , Dn4 , v088
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 002   ----------------------------------------
mus_friday_im_in_love_1_002:
	.byte		N18   , Dn3 , v088
	.byte		N18   , An3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_friday_im_in_love_1_003:
	.byte	W12
	.byte		N12   , Gn3 , v088
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_friday_im_in_love_1_004:
	.byte		N18   , Dn3 , v088
	.byte		N18   , An3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   , En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_friday_im_in_love_1_005:
	.byte	W12
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_friday_im_in_love_1_006:
	.byte		N18   , Bn2 , v088
	.byte		N18   , Fs3 
	.byte		N18   , Dn4 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 008   ----------------------------------------
mus_friday_im_in_love_1_008:
	.byte		N18   , Dn3 , v088
	.byte		N18   , An3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_friday_im_in_love_1_009:
	.byte	W12
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 034   ----------------------------------------
	.byte		N36   , Gn2 , v088
	.byte		N36   , Dn3 
	.byte		N36   , Gn4 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   , En3 
	.byte		N12   , Cs4 
	.byte	W12
@ 035   ----------------------------------------
mus_friday_im_in_love_1_035:
	.byte	W12
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte		N18   , Bn2 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_005
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_006
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_005
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_006
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_002
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_005
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_006
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 064   ----------------------------------------
mus_friday_im_in_love_1_064:
	.byte		N18   , Bn2 , v088
	.byte		N18   , Fs3 
	.byte		N18   , Dn4 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_friday_im_in_love_1_065:
	.byte	W12
	.byte		N12   , Gn3 , v088
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_065
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_035
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_064
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_065
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 075   ----------------------------------------
	.byte	W12
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_064
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_065
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_005
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_006
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_002
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_005
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_006
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_002
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_005
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_006
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_002
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_004
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_005
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_006
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_003
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_008
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_1_009
@ 112   ----------------------------------------
	.byte	W84
	.byte		N12   , En4 , v088
	.byte	W12
@ 113   ----------------------------------------
	.byte	W12
	.byte		N18   , Bn4 
	.byte	W24
	.byte		N48   , An4 
	.byte	W60
@ 114   ----------------------------------------
	.byte		N18   , Dn4 
	.byte		N18   , Fs4 
	.byte		N18   , Dn5 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N12   , En4 
	.byte		N12   , An4 
	.byte		N12   , Cs5 
	.byte	W12
@ 115   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
@ 116   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 117   ----------------------------------------
	.byte	W12
	.byte		N18   , An3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 118   ----------------------------------------
	.byte		N12   
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Dn4 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Dn4 
	.byte		N18   , Gn4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 119   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_friday_im_in_love_2:
	.byte		VOL   , 127*mus_friday_im_in_love_mvl/mxv
	.byte	KEYSH , mus_friday_im_in_love_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte	W24
	.byte		N12   , Dn4 , v088
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 001   ----------------------------------------
mus_friday_im_in_love_2_001:
	.byte		N12   , En4 , v088
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_friday_im_in_love_2_002:
	.byte	W12
	.byte		N48   , Dn4 , v088
	.byte	W72
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_friday_im_in_love_2_003:
	.byte		N12   , En4 , v088
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_friday_im_in_love_2_004:
	.byte	W12
	.byte		N12   , An4 , v088
	.byte	W12
	.byte		N18   , Gn4 
	.byte	W24
	.byte		N36   , Fs4 
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
mus_friday_im_in_love_2_005:
	.byte		N18   , En4 , v088
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_friday_im_in_love_2_006:
	.byte	W12
	.byte		N18   , Fs4 , v088
	.byte	W24
	.byte		N24   , En4 
	.byte	W24
	.byte		N18   , Dn4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_friday_im_in_love_2_007:
	.byte		N18   , Dn4 , v088
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Bn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_friday_im_in_love_2_008:
	.byte	W12
	.byte		N24   , Gn3 , v088
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_001
@ 010   ----------------------------------------
mus_friday_im_in_love_2_010:
	.byte	W12
	.byte		N18   , Dn4 , v088
	.byte	W24
	.byte		N24   , En4 
	.byte	W24
	.byte		N18   , Dn4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_004
@ 013   ----------------------------------------
mus_friday_im_in_love_2_013:
	.byte		N18   , En4 , v088
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N12   , En4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_friday_im_in_love_2_014:
	.byte	W12
	.byte		N18   , Dn4 , v088
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_008
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
	.byte	PATT
	 .word	mus_friday_im_in_love_2_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_008
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_005
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_006
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_007
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_008
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
	.byte	PATT
	 .word	mus_friday_im_in_love_2_008
@ 047   ----------------------------------------
	.byte	W84
	.byte		N12   , En4 , v088
	.byte	W12
@ 048   ----------------------------------------
	.byte	W12
	.byte		N18   , Bn4 
	.byte	W24
	.byte		N48   , An4 
	.byte	W60
@ 049   ----------------------------------------
	.byte		N18   , Dn4 
	.byte		N18   , Fs4 
	.byte		N18   , Dn5 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N12   , En4 
	.byte		N12   , An4 
	.byte		N12   , Cs5 
	.byte	W12
@ 050   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
@ 051   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 052   ----------------------------------------
	.byte	W12
	.byte		N18   , An3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 053   ----------------------------------------
	.byte		N12   
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Dn4 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Dn4 
	.byte		N18   , Gn4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 054   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gn4 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N18   , An3 
	.byte		N18   , Dn4 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N48   , An3 
	.byte		N48   , Dn4 
	.byte		N48   , Fs4 
	.byte	W60
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
mus_friday_im_in_love_2_063:
	.byte	W24
	.byte		N12   , Bn4 , v088
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn4 , v096
	.byte	W12
	.byte		        An4 , v088
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
mus_friday_im_in_love_2_064:
	.byte		N12   , An4 , v096
	.byte	W12
	.byte		        Gn4 , v088
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn4 , v096
	.byte	W12
	.byte		        Fs4 , v088
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_friday_im_in_love_2_065:
	.byte		N48   , Fs4 , v088
	.byte	W84
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
mus_friday_im_in_love_2_066:
	.byte		N12   , Dn4 , v088
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N48   , An3 
	.byte	W72
	.byte	PEND
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_063
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_065
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_066
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_063
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_064
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_065
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_066
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_063
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_064
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_065
@ 078   ----------------------------------------
	.byte		N12   , An3 , v088
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte	W24
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_001
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_003
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_004
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_005
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_006
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_007
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_008
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_010
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_003
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_004
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_013
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_014
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_007
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_008
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_002
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_003
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_004
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_005
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_006
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_007
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_008
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_001
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_010
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_003
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_004
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_013
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_014
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_007
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_008
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_001
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_002
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_003
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_004
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_005
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_006
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_2_007
@ 118   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_friday_im_in_love_3:
	.byte		VOL   , 127*mus_friday_im_in_love_mvl/mxv
	.byte	KEYSH , mus_friday_im_in_love_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
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
	.byte		N12   , Dn3 , v088
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , An3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N18   , Bn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W12
	.byte		N18   , Gn3 
	.byte	W24
	.byte		N24   
	.byte	W60
@ 019   ----------------------------------------
	.byte		N12   , An3 
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		N18   , Cs4 
	.byte	W24
	.byte		N24   , An3 
	.byte	W60
@ 021   ----------------------------------------
mus_friday_im_in_love_3_021:
	.byte		N18   , Bn3 , v088
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N18   , An3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte	W06
	.byte		N24   , Gn3 
	.byte	W30
	.byte		N24   
	.byte	W24
	.byte		N18   , Fs3 
	.byte	W24
	.byte		N12   
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W36
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , Dn3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte		N18   , An3 
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N18   , Bn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
@ 026   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N36   
	.byte	W72
@ 027   ----------------------------------------
mus_friday_im_in_love_3_027:
	.byte		N18   , An3 , v088
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_friday_im_in_love_3_028:
	.byte	W12
	.byte		N18   , Cs4 , v088
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte		N18   , Bn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N18   , An3 
	.byte	W24
	.byte		N12   
	.byte	W12
@ 030   ----------------------------------------
mus_friday_im_in_love_3_030:
	.byte	W12
	.byte		N18   , Gn3 , v088
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N18   , Fs3 
	.byte	W24
	.byte		N12   
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_friday_im_in_love_3_031:
	.byte	W12
	.byte		N24   , Dn3 , v088
	.byte		N24   , Fs4 
	.byte	W36
	.byte		N12   , Dn3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , Dn3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte		        Dn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N36   , Dn3 
	.byte		N36   , Gn4 
	.byte	W36
	.byte		N12   , Cs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An2 
	.byte		N12   , En4 
	.byte	W12
@ 034   ----------------------------------------
	.byte	W84
	.byte		        An2 
	.byte		N12   , En4 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N18   , Dn3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        Dn3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Dn3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , Dn3 
	.byte		N18   , Gn4 
	.byte	W24
	.byte		N12   , Dn3 
	.byte		N12   , En4 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W12
	.byte		N18   , Gn2 
	.byte		N18   , Dn4 
	.byte	W24
	.byte		N24   , Gn2 
	.byte		N24   , Dn4 
	.byte	W48
	.byte		N12   , Gn3 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N18   , Dn3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        Dn3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Dn3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , Dn3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   , Gn4 
	.byte	W12
@ 038   ----------------------------------------
	.byte	W12
	.byte		N18   , An2 
	.byte		N18   , Gn4 
	.byte	W24
	.byte		N24   , An2 
	.byte		N24   , Dn4 
	.byte	W60
@ 039   ----------------------------------------
mus_friday_im_in_love_3_039:
	.byte		N12   , Dn4 , v088
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N18   , Cs4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_friday_im_in_love_3_040:
	.byte	W12
	.byte		N18   , Bn3 , v088
	.byte	W24
	.byte		N24   
	.byte	W60
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_027
@ 042   ----------------------------------------
mus_friday_im_in_love_3_042:
	.byte	W12
	.byte		N18   , Cs4 , v088
	.byte	W24
	.byte		N48   , An3 
	.byte	W60
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_021
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_030
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_031
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
	.byte		N18   , Dn4 , v088
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N18   , Cs4 
	.byte	W24
	.byte		N12   
	.byte	W12
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_040
@ 057   ----------------------------------------
	.byte		N18   , Dn4 , v088
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N18   , An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_028
@ 059   ----------------------------------------
	.byte	W12
	.byte		N24   , Fs3 , v088
	.byte	W36
	.byte		N18   , Bn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 060   ----------------------------------------
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N12   , Fs3 
	.byte		N12   , En4 
	.byte	W12
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_031
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W24
	.byte		N18   , Dn4 , v088
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 064   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 065   ----------------------------------------
	.byte	W12
	.byte		N18   , Bn3 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Fs4 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   , Fs3 
	.byte		N12   , Dn4 
	.byte	W12
@ 067   ----------------------------------------
	.byte	W48
	.byte		N06   
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Dn4 
	.byte	W24
	.byte		N06   
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 069   ----------------------------------------
	.byte	W48
	.byte		        An3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , En4 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N18   , An3 
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   , Fs3 
	.byte		N12   , Dn4 
	.byte	W12
@ 071   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 072   ----------------------------------------
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Gn4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 073   ----------------------------------------
	.byte	W36
	.byte		        An3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , En4 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , En4 
	.byte	W24
	.byte		N06   , Bn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N12   , Bn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Dn4 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W24
	.byte		        Bn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 076   ----------------------------------------
	.byte	W36
	.byte		        Bn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Gn4 
	.byte	W24
@ 077   ----------------------------------------
	.byte		        Dn4 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Gn4 
	.byte	W24
	.byte		N24   , En4 
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , En4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N18   , Fs4 
	.byte	W24
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_040
@ 081   ----------------------------------------
	.byte		N18   , An3 , v088
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N18   , An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_042
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_021
@ 084   ----------------------------------------
	.byte	W06
	.byte		N06   , Gn3 , v088
	.byte	W06
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N18   , Fs3 
	.byte	W24
	.byte		N12   
	.byte		N12   , En4 
	.byte	W12
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_3_031
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte		N18   , Dn4 , v088
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
@ 088   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Bn3 
	.byte		N36   , Dn4 
	.byte	W72
@ 089   ----------------------------------------
	.byte		N18   
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        An3 
	.byte		N18   , Dn4 
	.byte	W24
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Dn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , En4 
	.byte	W12
@ 090   ----------------------------------------
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N24   , An3 
	.byte		N24   , Gn4 
	.byte	W60
@ 091   ----------------------------------------
	.byte		N18   , Bn3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , Fs4 
	.byte	W12
@ 092   ----------------------------------------
	.byte	W12
	.byte		N18   , Gn3 
	.byte		N18   , Dn4 
	.byte	W24
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N18   , Fs3 
	.byte		N18   , Bn3 
	.byte	W24
	.byte		N12   , Fs3 
	.byte		N12   , Bn3 
	.byte	W12
@ 093   ----------------------------------------
	.byte	W12
	.byte		N24   , Dn3 
	.byte		N24   , An3 
	.byte	W36
	.byte		N12   , Dn3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , Dn3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
@ 094   ----------------------------------------
	.byte	W36
	.byte		N48   , Dn4 
	.byte	W60
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
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_friday_im_in_love_4:
	.byte		VOL   , 127*mus_friday_im_in_love_mvl/mxv
	.byte	KEYSH , mus_friday_im_in_love_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
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
	.byte	W96
@ 111   ----------------------------------------
	.byte		N18   , Dn3 , v088
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Gn4 
	.byte	W12
@ 112   ----------------------------------------
mus_friday_im_in_love_4_112:
	.byte	W12
	.byte		N12   , Gn3 , v088
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 113   ----------------------------------------
	.byte		N18   , Dn3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   , Cs4 
	.byte	W12
@ 114   ----------------------------------------
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 115   ----------------------------------------
	.byte		N18   , Bn2 
	.byte		N18   , Dn4 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn4 
	.byte	W12
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_friday_im_in_love_4_112
@ 117   ----------------------------------------
	.byte		N18   , Dn3 , v088
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   , En4 
	.byte	W12
@ 118   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_friday_im_in_love:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_friday_im_in_love_pri	@ Priority
	.byte	mus_friday_im_in_love_rev	@ Reverb.

	.word	mus_friday_im_in_love_grp

	.word	mus_friday_im_in_love_1
	.word	mus_friday_im_in_love_2
	.word	mus_friday_im_in_love_3
	.word	mus_friday_im_in_love_4

	.end
