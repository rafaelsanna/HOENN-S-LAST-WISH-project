	.include "MPlayDef.s"

	.equ	mus_my_god_is_the_sun_grp, voicegroup_hlw_rock_metal
	.equ	mus_my_god_is_the_sun_pri, 0
	.equ	mus_my_god_is_the_sun_rev, reverb_set+25
	.equ	mus_my_god_is_the_sun_mvl, 99
	.equ	mus_my_god_is_the_sun_key, 0
	.equ	mus_my_god_is_the_sun_tbs, 1
	.equ	mus_my_god_is_the_sun_exg, 1
	.equ	mus_my_god_is_the_sun_cmp, 1

	.section .rodata
	.global	mus_my_god_is_the_sun
	.align	2

@**************** Track 1 (Midi-Chn.16) ****************@

mus_my_god_is_the_sun_1:
	.byte	KEYSH , mus_my_god_is_the_sun_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 165*mus_my_god_is_the_sun_tbs/2
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_my_god_is_the_sun_mvl/mxv
	.byte	W72
@ 002   ----------------------------------------
mus_my_god_is_the_sun_1_002:
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W72
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_002
@ 005   ----------------------------------------
	.byte	W72
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_002
@ 007   ----------------------------------------
	.byte	W72
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_002
@ 009   ----------------------------------------
	.byte	W24
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 010   ----------------------------------------
mus_my_god_is_the_sun_1_010:
	.byte		N12   , Gn2 , v096
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_my_god_is_the_sun_1_011:
	.byte		N12   , En2 , v096
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_011
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_010
@ 015   ----------------------------------------
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 017   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 018   ----------------------------------------
mus_my_god_is_the_sun_1_018:
	.byte		N12   , Fs3 , v096
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
@ 019   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	TEMPO , 162*mus_my_god_is_the_sun_tbs/2
	.byte	W48
@ 020   ----------------------------------------
	.byte	W72
@ 021   ----------------------------------------
	.byte	W72
@ 022   ----------------------------------------
	.byte	W72
@ 023   ----------------------------------------
	.byte	W72
@ 024   ----------------------------------------
	.byte	W72
@ 025   ----------------------------------------
	.byte	W72
@ 026   ----------------------------------------
	.byte	W72
@ 027   ----------------------------------------
	.byte	W72
@ 028   ----------------------------------------
	.byte	W72
@ 029   ----------------------------------------
	.byte	W72
@ 030   ----------------------------------------
	.byte	W72
@ 031   ----------------------------------------
	.byte	W72
@ 032   ----------------------------------------
	.byte	W72
@ 033   ----------------------------------------
	.byte	W72
@ 034   ----------------------------------------
	.byte	W72
@ 035   ----------------------------------------
	.byte	W72
@ 036   ----------------------------------------
	.byte	W72
@ 037   ----------------------------------------
	.byte	W72
@ 038   ----------------------------------------
	.byte	W72
@ 039   ----------------------------------------
	.byte	W72
@ 040   ----------------------------------------
	.byte	W72
@ 041   ----------------------------------------
	.byte	W72
@ 042   ----------------------------------------
	.byte	W72
@ 043   ----------------------------------------
	.byte	W24
@ 044   ----------------------------------------
mus_my_god_is_the_sun_1_044:
	.byte		N12   , Cs3 , v096
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	PEND
@ 045   ----------------------------------------
mus_my_god_is_the_sun_1_045:
	.byte		N12   , Dn3 , v096
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte	PEND
@ 046   ----------------------------------------
mus_my_god_is_the_sun_1_046:
	.byte		N12   , Ds3 , v096
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
mus_my_god_is_the_sun_1_047:
	.byte		N12   , En3 , v096
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_044
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_045
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_046
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_047
@ 052   ----------------------------------------
mus_my_god_is_the_sun_1_052:
	.byte		N12   , Cs4 , v096
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
mus_my_god_is_the_sun_1_053:
	.byte		N12   , Dn4 , v096
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
@ 054   ----------------------------------------
mus_my_god_is_the_sun_1_054:
	.byte		N12   , Ds4 , v096
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
@ 055   ----------------------------------------
mus_my_god_is_the_sun_1_055:
	.byte		N12   , En4 , v096
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
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_052
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_053
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_054
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_055
@ 060   ----------------------------------------
	.byte	W72
@ 061   ----------------------------------------
	.byte	W06
	.byte	TEMPO , 161*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 161*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 161*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 160*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 160*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 160*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 159*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 159*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 159*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 158*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 158*mus_my_god_is_the_sun_tbs/2
	.byte	W06
@ 062   ----------------------------------------
	.byte	TEMPO , 158*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 157*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 157*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 157*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 156*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 156*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 156*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 155*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 155*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 155*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 154*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 154*mus_my_god_is_the_sun_tbs/2
	.byte	W06
@ 063   ----------------------------------------
	.byte	TEMPO , 154*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 153*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 153*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 153*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 152*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 152*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 152*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 151*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 151*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 151*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 150*mus_my_god_is_the_sun_tbs/2
	.byte	W06
	.byte	TEMPO , 150*mus_my_god_is_the_sun_tbs/2
	.byte	W06
@ 064   ----------------------------------------
	.byte	TEMPO , 150*mus_my_god_is_the_sun_tbs/2
	.byte	W72
@ 065   ----------------------------------------
	.byte	W72
@ 066   ----------------------------------------
	.byte	W72
@ 067   ----------------------------------------
	.byte	W72
@ 068   ----------------------------------------
	.byte	TEMPO , 165*mus_my_god_is_the_sun_tbs/2
	.byte		N12   , Dn3 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 069   ----------------------------------------
mus_my_god_is_the_sun_1_069:
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 070   ----------------------------------------
mus_my_god_is_the_sun_1_070:
	.byte		N12   , Dn3 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_069
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_070
@ 073   ----------------------------------------
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 074   ----------------------------------------
mus_my_god_is_the_sun_1_074:
	.byte		N12   , An2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 075   ----------------------------------------
	.byte		        Gn2 
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
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_018
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_018
@ 078   ----------------------------------------
	.byte	W72
@ 079   ----------------------------------------
	.byte	W72
@ 080   ----------------------------------------
mus_my_god_is_the_sun_1_080:
	.byte		N12   , Gs1 , v096
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte	PEND
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_080
@ 082   ----------------------------------------
	.byte		N24   , Gs1 , v096
	.byte		N24   , Ds2 
	.byte		N24   , Gs2 
	.byte	W72
@ 083   ----------------------------------------
	.byte	W72
@ 084   ----------------------------------------
mus_my_god_is_the_sun_1_084:
	.byte		N12   , Gs1 , v096
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte	PEND
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_084
@ 086   ----------------------------------------
	.byte	W72
@ 087   ----------------------------------------
	.byte	W72
@ 088   ----------------------------------------
	.byte	W72
@ 089   ----------------------------------------
	.byte	W72
@ 090   ----------------------------------------
	.byte	W72
@ 091   ----------------------------------------
	.byte	W72
@ 092   ----------------------------------------
	.byte	W72
@ 093   ----------------------------------------
	.byte	W72
@ 094   ----------------------------------------
	.byte	W72
@ 095   ----------------------------------------
	.byte	W72
@ 096   ----------------------------------------
	.byte	W72
@ 097   ----------------------------------------
	.byte	W72
@ 098   ----------------------------------------
	.byte	W72
@ 099   ----------------------------------------
	.byte	W72
@ 100   ----------------------------------------
	.byte	W72
@ 101   ----------------------------------------
	.byte	W72
@ 102   ----------------------------------------
mus_my_god_is_the_sun_1_102:
	.byte		N12   , Dn2 , v096
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_102
@ 104   ----------------------------------------
mus_my_god_is_the_sun_1_104:
	.byte		N12   , Fs2 , v096
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_104
@ 106   ----------------------------------------
mus_my_god_is_the_sun_1_106:
	.byte		N12   , Cn2 , v096
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_106
@ 108   ----------------------------------------
mus_my_god_is_the_sun_1_108:
	.byte		N12   , En2 , v096
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_108
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_102
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_102
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_104
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_104
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_106
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_106
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_108
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_108
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_044
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_045
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_046
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_047
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_044
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_045
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_046
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_047
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_052
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_053
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_054
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_055
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_052
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_053
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_054
@ 133   ----------------------------------------
	.byte		N12   , En4 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 134   ----------------------------------------
mus_my_god_is_the_sun_1_134:
	.byte		N24   , Fs3 , v096
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N08   , Fs3 
	.byte	W08
	.byte		N16   , En3 
	.byte	W16
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 135   ----------------------------------------
mus_my_god_is_the_sun_1_135:
	.byte	W48
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
@ 136   ----------------------------------------
mus_my_god_is_the_sun_1_136:
	.byte		N36   , An2 , v096
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 137   ----------------------------------------
	.byte		        Fs2 
	.byte	W24
	.byte		N36   , En2 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_134
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_135
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_136
@ 141   ----------------------------------------
	.byte		N12   , Fs2 , v096
	.byte	W24
	.byte		N36   , En2 
	.byte	W36
	.byte		N12   , En3 
	.byte		N12   
	.byte	W12
@ 142   ----------------------------------------
mus_my_god_is_the_sun_1_142:
	.byte		N12   , En3 , v096
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        En3 
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
@ 143   ----------------------------------------
mus_my_god_is_the_sun_1_143:
	.byte		N12   , Fs3 , v096
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
@ 144   ----------------------------------------
	.byte		        An2 
	.byte	W48
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 145   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W60
	.byte		N12   , En3 
	.byte		N12   
	.byte	W12
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_142
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_143
@ 148   ----------------------------------------
	.byte		N48   , An3 , v096
	.byte	W48
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 149   ----------------------------------------
	.byte		N48   
	.byte		N48   , Bn3 
	.byte	W72
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_044
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_045
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_046
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_047
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_044
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_045
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_046
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_047
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_052
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_053
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_054
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_055
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_052
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_053
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_054
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_055
@ 166   ----------------------------------------
@ 167   ----------------------------------------
	.byte	TEMPO , 65*mus_my_god_is_the_sun_tbs/2
	.byte		N12   , An2 , v096
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 168   ----------------------------------------
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N36   , Bn2 
	.byte	W36
@ 169   ----------------------------------------
	.byte		N12   , En3 
	.byte	W36
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
@ 170   ----------------------------------------
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fs2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
@ 171   ----------------------------------------
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N06   , As2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W20
	.byte		N04   , As2 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 172   ----------------------------------------
	.byte		N18   , Fs2 
	.byte	W18
	.byte		N04   , An2 
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 173   ----------------------------------------
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W04
@ 174   ----------------------------------------
	.byte	TEMPO , 29*mus_my_god_is_the_sun_tbs/2
	.byte		N72   , An3 
	.byte	W72
@ 175   ----------------------------------------
@ 176   ----------------------------------------
	.byte	TEMPO , 170*mus_my_god_is_the_sun_tbs/2
	.byte	W48
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 177   ----------------------------------------
mus_my_god_is_the_sun_1_177:
	.byte		N12   , Gn3 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 178   ----------------------------------------
mus_my_god_is_the_sun_1_178:
	.byte		N12   , En2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte	PEND
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_177
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_178
@ 181   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_177
@ 182   ----------------------------------------
	.byte		N12   , En2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 183   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_1_074
@ 184   ----------------------------------------
	.byte		N24   , En1 , v096
	.byte		N24   , Bn1 
	.byte		N24   , En2 
	.byte	W24
	.byte	FINE

@**************** Track 2 (Midi-Chn.4) ****************@

mus_my_god_is_the_sun_2:
	.byte	KEYSH , mus_my_god_is_the_sun_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_my_god_is_the_sun_mvl/mxv
	.byte		N12   , Bn1 , v096
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 001   ----------------------------------------
mus_my_god_is_the_sun_2_001:
	.byte		N12   , En2 , v096
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_my_god_is_the_sun_2_002:
	.byte		N12   , Bn1 , v096
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_002
@ 013   ----------------------------------------
	.byte		N12   , En2 , v096
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 016   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 017   ----------------------------------------
mus_my_god_is_the_sun_2_017:
	.byte		N12   , Ds2 , v096
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
@ 018   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W60
@ 019   ----------------------------------------
	.byte	W72
@ 020   ----------------------------------------
	.byte	W72
@ 021   ----------------------------------------
	.byte	W72
@ 022   ----------------------------------------
	.byte	W72
@ 023   ----------------------------------------
	.byte	W72
@ 024   ----------------------------------------
	.byte	W72
@ 025   ----------------------------------------
	.byte	W72
@ 026   ----------------------------------------
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 027   ----------------------------------------
mus_my_god_is_the_sun_2_027:
	.byte		N12   , En1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_my_god_is_the_sun_2_028:
	.byte		N12   , Ds2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_my_god_is_the_sun_2_029:
	.byte		N12   , Gs2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte		        Bn2 
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_029
@ 034   ----------------------------------------
	.byte		N12   , Bn2 , v096
	.byte	W24
	.byte		        Gs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_029
@ 036   ----------------------------------------
mus_my_god_is_the_sun_2_036:
	.byte		N12   , As2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_028
@ 038   ----------------------------------------
mus_my_god_is_the_sun_2_038:
	.byte		N12   , Gs2 , v096
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
	 .word	mus_my_god_is_the_sun_2_029
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_028
@ 042   ----------------------------------------
	.byte		N12   , Gs2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
@ 043   ----------------------------------------
mus_my_god_is_the_sun_2_043:
	.byte		N12   , Cs3 , v096
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
@ 044   ----------------------------------------
mus_my_god_is_the_sun_2_044:
	.byte		N12   , Dn3 , v096
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
@ 045   ----------------------------------------
mus_my_god_is_the_sun_2_045:
	.byte		N12   , Ds3 , v096
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
@ 046   ----------------------------------------
mus_my_god_is_the_sun_2_046:
	.byte		N12   , En3 , v096
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
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 058   ----------------------------------------
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 059   ----------------------------------------
mus_my_god_is_the_sun_2_059:
	.byte		N12   , Gn2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
mus_my_god_is_the_sun_2_060:
	.byte		N12   , En1 , v096
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_059
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_060
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_059
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_059
@ 066   ----------------------------------------
	.byte	W72
@ 067   ----------------------------------------
mus_my_god_is_the_sun_2_067:
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_my_god_is_the_sun_2_068:
	.byte		N12   , En1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_067
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_068
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_067
@ 072   ----------------------------------------
	.byte		N12   , En1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 073   ----------------------------------------
mus_my_god_is_the_sun_2_073:
	.byte		N12   , An1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_017
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_017
@ 077   ----------------------------------------
	.byte	W72
@ 078   ----------------------------------------
	.byte	W72
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_017
@ 080   ----------------------------------------
mus_my_god_is_the_sun_2_080:
	.byte		N12   , Ds2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	PEND
@ 081   ----------------------------------------
	.byte		N24   , Ds2 
	.byte	W72
@ 082   ----------------------------------------
	.byte	W72
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_017
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_080
@ 085   ----------------------------------------
mus_my_god_is_the_sun_2_085:
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
	.byte	PEND
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_017
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_038
@ 088   ----------------------------------------
	.byte		N12   , As2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_085
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_017
@ 091   ----------------------------------------
	.byte		N12   , Bn1 , v096
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
@ 092   ----------------------------------------
	.byte		        As1 
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
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_038
@ 094   ----------------------------------------
mus_my_god_is_the_sun_2_094:
	.byte		N12   , As2 , v096
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
@ 095   ----------------------------------------
	.byte		        En2 
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
@ 096   ----------------------------------------
	.byte		        Gs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_038
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_094
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_017
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_038
@ 101   ----------------------------------------
mus_my_god_is_the_sun_2_101:
	.byte		N12   , Dn2 , v096
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
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_101
@ 103   ----------------------------------------
mus_my_god_is_the_sun_2_103:
	.byte		N12   , Fs2 , v096
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_103
@ 105   ----------------------------------------
mus_my_god_is_the_sun_2_105:
	.byte		N12   , Cn2 , v096
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
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_105
@ 107   ----------------------------------------
mus_my_god_is_the_sun_2_107:
	.byte		N12   , En2 , v096
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_107
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_101
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_101
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_103
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_103
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_105
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_105
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_107
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_107
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 141   ----------------------------------------
mus_my_god_is_the_sun_2_141:
	.byte		N12   , Cn3 , v096
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
@ 142   ----------------------------------------
mus_my_god_is_the_sun_2_142:
	.byte		N12   , Bn2 , v096
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
@ 143   ----------------------------------------
mus_my_god_is_the_sun_2_143:
	.byte		N12   , An2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
@ 144   ----------------------------------------
mus_my_god_is_the_sun_2_144:
	.byte		N48   , Gn2 , v096
	.byte	W48
	.byte		N12   
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_141
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_142
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_143
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_144
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_043
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_044
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_045
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_046
@ 165   ----------------------------------------
mus_my_god_is_the_sun_2_165:
	.byte		N12   , An1 , v096
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte	PEND
@ 166   ----------------------------------------
mus_my_god_is_the_sun_2_166:
	.byte		N12   , Fs1 , v096
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_165
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_166
@ 169   ----------------------------------------
mus_my_god_is_the_sun_2_169:
	.byte		N12   , An1 , v096
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 170   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N08   , En3 
	.byte	W08
	.byte		N04   , Ds3 
	.byte	W04
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_169
@ 172   ----------------------------------------
	.byte		N72   , Fs1 , v096
	.byte	W72
@ 173   ----------------------------------------
	.byte	W48
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 174   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_059
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_060
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_059
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_060
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_059
@ 179   ----------------------------------------
	.byte		N12   , En1 , v096
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_2_073
@ 181   ----------------------------------------
	.byte		N24   , En1 , v096
	.byte		N24   , Bn1 
	.byte	W24
	.byte	FINE

@**************** Track 3 (Midi-Chn.8) ****************@

mus_my_god_is_the_sun_3:
	.byte	KEYSH , mus_my_god_is_the_sun_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_my_god_is_the_sun_mvl/mxv
	.byte	W72
@ 001   ----------------------------------------
mus_my_god_is_the_sun_3_001:
	.byte	W24
	.byte		N12   , En1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W72
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_001
@ 004   ----------------------------------------
	.byte	W72
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_001
@ 006   ----------------------------------------
	.byte	W72
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_001
@ 008   ----------------------------------------
	.byte	W72
@ 009   ----------------------------------------
	.byte	W72
@ 010   ----------------------------------------
	.byte	W72
@ 011   ----------------------------------------
	.byte	W72
@ 012   ----------------------------------------
	.byte	W72
@ 013   ----------------------------------------
	.byte	W72
@ 014   ----------------------------------------
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 016   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 017   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 018   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W60
@ 019   ----------------------------------------
	.byte	W72
@ 020   ----------------------------------------
	.byte	W72
@ 021   ----------------------------------------
	.byte	W72
@ 022   ----------------------------------------
	.byte	W72
@ 023   ----------------------------------------
	.byte	W72
@ 024   ----------------------------------------
	.byte	W72
@ 025   ----------------------------------------
	.byte	W72
@ 026   ----------------------------------------
	.byte	W72
@ 027   ----------------------------------------
	.byte	W72
@ 028   ----------------------------------------
	.byte	W72
@ 029   ----------------------------------------
	.byte	W72
@ 030   ----------------------------------------
	.byte	W72
@ 031   ----------------------------------------
	.byte	W72
@ 032   ----------------------------------------
	.byte	W72
@ 033   ----------------------------------------
	.byte	W72
@ 034   ----------------------------------------
	.byte	W72
@ 035   ----------------------------------------
	.byte	W72
@ 036   ----------------------------------------
	.byte	W72
@ 037   ----------------------------------------
	.byte	W72
@ 038   ----------------------------------------
	.byte	W72
@ 039   ----------------------------------------
	.byte	W72
@ 040   ----------------------------------------
	.byte	W72
@ 041   ----------------------------------------
	.byte	W72
@ 042   ----------------------------------------
	.byte	W24
@ 043   ----------------------------------------
mus_my_god_is_the_sun_3_043:
	.byte		N12   , Cs3 , v096
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
@ 044   ----------------------------------------
mus_my_god_is_the_sun_3_044:
	.byte		N12   , Dn3 , v096
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
@ 045   ----------------------------------------
mus_my_god_is_the_sun_3_045:
	.byte		N12   , Ds3 , v096
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
@ 046   ----------------------------------------
mus_my_god_is_the_sun_3_046:
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_043
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_044
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_045
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_046
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_043
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_044
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_045
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_046
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_043
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_044
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_045
@ 058   ----------------------------------------
mus_my_god_is_the_sun_3_058:
	.byte		N12   , En3 , v096
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
@ 059   ----------------------------------------
	.byte	W72
@ 060   ----------------------------------------
	.byte	W72
@ 061   ----------------------------------------
	.byte	W72
@ 062   ----------------------------------------
	.byte	W72
@ 063   ----------------------------------------
	.byte	W72
@ 064   ----------------------------------------
	.byte	W72
@ 065   ----------------------------------------
	.byte	W72
@ 066   ----------------------------------------
	.byte	W72
@ 067   ----------------------------------------
	.byte	W72
@ 068   ----------------------------------------
	.byte	W72
@ 069   ----------------------------------------
	.byte	W72
@ 070   ----------------------------------------
	.byte	W72
@ 071   ----------------------------------------
	.byte	W72
@ 072   ----------------------------------------
mus_my_god_is_the_sun_3_072:
	.byte	W48
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
@ 073   ----------------------------------------
mus_my_god_is_the_sun_3_073:
	.byte		N12   , An2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
	.byte		        Dn2 
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
@ 075   ----------------------------------------
	.byte		        Fs2 
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
@ 076   ----------------------------------------
	.byte		        An2 
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
@ 077   ----------------------------------------
	.byte	W72
@ 078   ----------------------------------------
	.byte	W72
@ 079   ----------------------------------------
mus_my_god_is_the_sun_3_079:
	.byte		N12   , Gs1 , v096
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_079
@ 081   ----------------------------------------
	.byte		N24   , Gs1 , v096
	.byte		N24   , Ds2 
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W72
@ 082   ----------------------------------------
	.byte	W72
@ 083   ----------------------------------------
mus_my_god_is_the_sun_3_083:
	.byte		N12   , Gs1 , v096
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte	PEND
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_083
@ 085   ----------------------------------------
	.byte	W72
@ 086   ----------------------------------------
	.byte	W72
@ 087   ----------------------------------------
	.byte	W72
@ 088   ----------------------------------------
	.byte	W72
@ 089   ----------------------------------------
	.byte	W72
@ 090   ----------------------------------------
	.byte	W72
@ 091   ----------------------------------------
	.byte	W72
@ 092   ----------------------------------------
	.byte	W72
@ 093   ----------------------------------------
	.byte	W72
@ 094   ----------------------------------------
	.byte	W72
@ 095   ----------------------------------------
	.byte	W72
@ 096   ----------------------------------------
	.byte	W72
@ 097   ----------------------------------------
	.byte	W72
@ 098   ----------------------------------------
	.byte	W72
@ 099   ----------------------------------------
	.byte	W72
@ 100   ----------------------------------------
	.byte	W72
@ 101   ----------------------------------------
	.byte	W72
@ 102   ----------------------------------------
	.byte	W72
@ 103   ----------------------------------------
mus_my_god_is_the_sun_3_103:
	.byte		N24   , Fs2 , v096
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 104   ----------------------------------------
mus_my_god_is_the_sun_3_104:
	.byte		N24   , Fs2 , v096
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 105   ----------------------------------------
	.byte		N48   , Fs2 
	.byte		N48   , Fs3 
	.byte	W72
@ 106   ----------------------------------------
	.byte	W72
@ 107   ----------------------------------------
mus_my_god_is_the_sun_3_107:
	.byte		N24   , En2 , v096
	.byte		N24   , En3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , En3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_107
@ 109   ----------------------------------------
	.byte	W72
@ 110   ----------------------------------------
	.byte	W72
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_103
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_104
@ 113   ----------------------------------------
	.byte		N48   , Fs2 , v096
	.byte		N48   , Fs3 
	.byte	W72
@ 114   ----------------------------------------
	.byte	W72
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_107
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_107
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_043
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_044
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_045
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_046
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_043
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_044
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_045
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_046
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_043
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_044
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_045
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_046
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_043
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_044
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_045
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_058
@ 133   ----------------------------------------
mus_my_god_is_the_sun_3_133:
	.byte		N12   , An1 , v096
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
@ 134   ----------------------------------------
mus_my_god_is_the_sun_3_134:
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
	.byte	PEND
@ 135   ----------------------------------------
mus_my_god_is_the_sun_3_135:
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
	.byte	PEND
@ 136   ----------------------------------------
mus_my_god_is_the_sun_3_136:
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
	.byte	PEND
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_133
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_134
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_135
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_136
@ 141   ----------------------------------------
	.byte	W72
@ 142   ----------------------------------------
	.byte	W72
@ 143   ----------------------------------------
	.byte	W72
@ 144   ----------------------------------------
	.byte	W72
@ 145   ----------------------------------------
	.byte	W72
@ 146   ----------------------------------------
	.byte	W72
@ 147   ----------------------------------------
	.byte	W72
@ 148   ----------------------------------------
	.byte	W72
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_043
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_044
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_045
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_046
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_043
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_044
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_045
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_046
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_043
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_044
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_045
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_046
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_043
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_044
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_045
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_058
@ 165   ----------------------------------------
	.byte	W72
@ 166   ----------------------------------------
	.byte	W72
@ 167   ----------------------------------------
	.byte	W72
@ 168   ----------------------------------------
	.byte	W72
@ 169   ----------------------------------------
	.byte	W72
@ 170   ----------------------------------------
	.byte	W72
@ 171   ----------------------------------------
	.byte	W72
@ 172   ----------------------------------------
	.byte	W72
@ 173   ----------------------------------------
	.byte	W72
@ 174   ----------------------------------------
	.byte	W72
@ 175   ----------------------------------------
	.byte	W72
@ 176   ----------------------------------------
	.byte	W72
@ 177   ----------------------------------------
	.byte	W72
@ 178   ----------------------------------------
	.byte	W72
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_072
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_3_073
@ 181   ----------------------------------------
	.byte		N24   , En2 , v096
	.byte	W24
	.byte	FINE

@**************** Track 4 (Midi-Chn.11) ****************@

mus_my_god_is_the_sun_4:
	.byte	KEYSH , mus_my_god_is_the_sun_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte		VOL   , 108*mus_my_god_is_the_sun_mvl/mxv
	.byte	W72
@ 001   ----------------------------------------
	.byte	W72
@ 002   ----------------------------------------
	.byte	W72
@ 003   ----------------------------------------
	.byte	W72
@ 004   ----------------------------------------
	.byte	W72
@ 005   ----------------------------------------
	.byte	W72
@ 006   ----------------------------------------
	.byte	W72
@ 007   ----------------------------------------
	.byte	W72
@ 008   ----------------------------------------
	.byte	W72
@ 009   ----------------------------------------
	.byte	W72
@ 010   ----------------------------------------
	.byte	W72
@ 011   ----------------------------------------
	.byte	W72
@ 012   ----------------------------------------
	.byte	W72
@ 013   ----------------------------------------
	.byte	W72
@ 014   ----------------------------------------
	.byte	W72
@ 015   ----------------------------------------
	.byte	W72
@ 016   ----------------------------------------
	.byte	W72
@ 017   ----------------------------------------
	.byte	W72
@ 018   ----------------------------------------
	.byte	W72
@ 019   ----------------------------------------
	.byte	W72
@ 020   ----------------------------------------
	.byte	W72
@ 021   ----------------------------------------
	.byte	W72
@ 022   ----------------------------------------
	.byte	W72
@ 023   ----------------------------------------
	.byte	W72
@ 024   ----------------------------------------
	.byte	W72
@ 025   ----------------------------------------
	.byte	W72
@ 026   ----------------------------------------
	.byte	W72
@ 027   ----------------------------------------
	.byte	W72
@ 028   ----------------------------------------
	.byte	W72
@ 029   ----------------------------------------
	.byte	W72
@ 030   ----------------------------------------
	.byte	W72
@ 031   ----------------------------------------
	.byte	W72
@ 032   ----------------------------------------
	.byte	W72
@ 033   ----------------------------------------
	.byte	W72
@ 034   ----------------------------------------
	.byte	W72
@ 035   ----------------------------------------
	.byte	W72
@ 036   ----------------------------------------
	.byte	W72
@ 037   ----------------------------------------
	.byte	W72
@ 038   ----------------------------------------
	.byte	W72
@ 039   ----------------------------------------
	.byte	W72
@ 040   ----------------------------------------
	.byte	W72
@ 041   ----------------------------------------
	.byte	W72
@ 042   ----------------------------------------
	.byte	W24
@ 043   ----------------------------------------
	.byte	W72
@ 044   ----------------------------------------
	.byte	W72
@ 045   ----------------------------------------
	.byte	W72
@ 046   ----------------------------------------
	.byte	W72
@ 047   ----------------------------------------
	.byte	W72
@ 048   ----------------------------------------
	.byte	W72
@ 049   ----------------------------------------
	.byte	W72
@ 050   ----------------------------------------
	.byte	W72
@ 051   ----------------------------------------
	.byte	W72
@ 052   ----------------------------------------
	.byte	W72
@ 053   ----------------------------------------
	.byte	W72
@ 054   ----------------------------------------
	.byte	W72
@ 055   ----------------------------------------
	.byte	W72
@ 056   ----------------------------------------
	.byte	W72
@ 057   ----------------------------------------
	.byte	W72
@ 058   ----------------------------------------
	.byte	W72
@ 059   ----------------------------------------
	.byte		N72   , Gn3 , v088
	.byte	W72
@ 060   ----------------------------------------
	.byte	W72
@ 061   ----------------------------------------
	.byte		N72   
	.byte	W72
@ 062   ----------------------------------------
	.byte	W72
@ 063   ----------------------------------------
	.byte		N72   
	.byte	W72
@ 064   ----------------------------------------
	.byte	W72
@ 065   ----------------------------------------
	.byte		N72   
	.byte	W72
@ 066   ----------------------------------------
	.byte	W72
@ 067   ----------------------------------------
	.byte	W72
@ 068   ----------------------------------------
	.byte	W72
@ 069   ----------------------------------------
	.byte	W72
@ 070   ----------------------------------------
	.byte	W72
@ 071   ----------------------------------------
	.byte	W72
@ 072   ----------------------------------------
	.byte	W72
@ 073   ----------------------------------------
	.byte	W72
@ 074   ----------------------------------------
	.byte	W72
@ 075   ----------------------------------------
	.byte	W72
@ 076   ----------------------------------------
	.byte	W72
@ 077   ----------------------------------------
	.byte	W72
@ 078   ----------------------------------------
	.byte	W72
@ 079   ----------------------------------------
	.byte	W72
@ 080   ----------------------------------------
	.byte	W72
@ 081   ----------------------------------------
	.byte	W72
@ 082   ----------------------------------------
	.byte	W72
@ 083   ----------------------------------------
	.byte	W72
@ 084   ----------------------------------------
	.byte	W72
@ 085   ----------------------------------------
	.byte	W72
@ 086   ----------------------------------------
	.byte	W72
@ 087   ----------------------------------------
	.byte	W72
@ 088   ----------------------------------------
	.byte	W72
@ 089   ----------------------------------------
	.byte	W72
@ 090   ----------------------------------------
	.byte	W72
@ 091   ----------------------------------------
	.byte	W72
@ 092   ----------------------------------------
	.byte	W72
@ 093   ----------------------------------------
	.byte	W72
@ 094   ----------------------------------------
	.byte	W72
@ 095   ----------------------------------------
	.byte	W72
@ 096   ----------------------------------------
	.byte	W72
@ 097   ----------------------------------------
	.byte	W72
@ 098   ----------------------------------------
	.byte	W72
@ 099   ----------------------------------------
	.byte	W72
@ 100   ----------------------------------------
	.byte	W72
@ 101   ----------------------------------------
	.byte	W72
@ 102   ----------------------------------------
	.byte	W72
@ 103   ----------------------------------------
	.byte	W72
@ 104   ----------------------------------------
	.byte	W72
@ 105   ----------------------------------------
	.byte	W72
@ 106   ----------------------------------------
	.byte	W72
@ 107   ----------------------------------------
	.byte	W72
@ 108   ----------------------------------------
	.byte	W72
@ 109   ----------------------------------------
	.byte	W72
@ 110   ----------------------------------------
	.byte	W72
@ 111   ----------------------------------------
	.byte	W72
@ 112   ----------------------------------------
	.byte	W72
@ 113   ----------------------------------------
	.byte	W72
@ 114   ----------------------------------------
	.byte	W72
@ 115   ----------------------------------------
	.byte	W72
@ 116   ----------------------------------------
	.byte	W72
@ 117   ----------------------------------------
	.byte	W72
@ 118   ----------------------------------------
	.byte	W72
@ 119   ----------------------------------------
	.byte	W72
@ 120   ----------------------------------------
	.byte	W72
@ 121   ----------------------------------------
	.byte	W72
@ 122   ----------------------------------------
	.byte	W72
@ 123   ----------------------------------------
	.byte	W72
@ 124   ----------------------------------------
	.byte	W72
@ 125   ----------------------------------------
	.byte	W72
@ 126   ----------------------------------------
	.byte	W72
@ 127   ----------------------------------------
	.byte	W72
@ 128   ----------------------------------------
	.byte	W72
@ 129   ----------------------------------------
	.byte	W72
@ 130   ----------------------------------------
	.byte	W72
@ 131   ----------------------------------------
	.byte	W72
@ 132   ----------------------------------------
	.byte	W72
@ 133   ----------------------------------------
	.byte	W72
@ 134   ----------------------------------------
	.byte	W72
@ 135   ----------------------------------------
	.byte	W72
@ 136   ----------------------------------------
	.byte	W72
@ 137   ----------------------------------------
	.byte	W72
@ 138   ----------------------------------------
	.byte	W72
@ 139   ----------------------------------------
	.byte	W72
@ 140   ----------------------------------------
	.byte	W72
@ 141   ----------------------------------------
	.byte	W72
@ 142   ----------------------------------------
	.byte	W72
@ 143   ----------------------------------------
	.byte	W72
@ 144   ----------------------------------------
	.byte	W72
@ 145   ----------------------------------------
	.byte	W72
@ 146   ----------------------------------------
	.byte	W72
@ 147   ----------------------------------------
	.byte	W72
@ 148   ----------------------------------------
	.byte	W72
@ 149   ----------------------------------------
	.byte	W72
@ 150   ----------------------------------------
	.byte	W72
@ 151   ----------------------------------------
	.byte	W72
@ 152   ----------------------------------------
	.byte	W72
@ 153   ----------------------------------------
	.byte	W72
@ 154   ----------------------------------------
	.byte	W72
@ 155   ----------------------------------------
	.byte	W72
@ 156   ----------------------------------------
	.byte	W72
@ 157   ----------------------------------------
	.byte	W72
@ 158   ----------------------------------------
	.byte	W72
@ 159   ----------------------------------------
	.byte	W72
@ 160   ----------------------------------------
	.byte	W72
@ 161   ----------------------------------------
	.byte	W72
@ 162   ----------------------------------------
	.byte	W72
@ 163   ----------------------------------------
	.byte	W72
@ 164   ----------------------------------------
	.byte	W72
@ 165   ----------------------------------------
	.byte	W72
@ 166   ----------------------------------------
	.byte	W72
@ 167   ----------------------------------------
	.byte	W72
@ 168   ----------------------------------------
	.byte	W72
@ 169   ----------------------------------------
	.byte	W72
@ 170   ----------------------------------------
	.byte	W72
@ 171   ----------------------------------------
	.byte	W72
@ 172   ----------------------------------------
	.byte	W72
@ 173   ----------------------------------------
	.byte	W72
@ 174   ----------------------------------------
	.byte	W72
@ 175   ----------------------------------------
	.byte		N72   
	.byte	W72
@ 176   ----------------------------------------
	.byte	W72
@ 177   ----------------------------------------
	.byte		N72   
	.byte	W72
@ 178   ----------------------------------------
	.byte	W72
@ 179   ----------------------------------------
	.byte	W72
@ 180   ----------------------------------------
	.byte	W72
@ 181   ----------------------------------------
	.byte	W24
	.byte	FINE

@**************** Track 5 (Midi-Chn.1) ****************@

mus_my_god_is_the_sun_5:
	.byte	KEYSH , mus_my_god_is_the_sun_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 118*mus_my_god_is_the_sun_mvl/mxv
	.byte	W72
@ 001   ----------------------------------------
mus_my_god_is_the_sun_5_001:
	.byte	W24
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W72
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_001
@ 004   ----------------------------------------
	.byte	W72
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_001
@ 006   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn1 , v096
	.byte	W24
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_001
@ 008   ----------------------------------------
	.byte	W24
	.byte		N12   , Gn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 009   ----------------------------------------
mus_my_god_is_the_sun_5_009:
	.byte		N12   , En1 , v096
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_my_god_is_the_sun_5_010:
	.byte		N12   , Bn0 , v096
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_009
@ 014   ----------------------------------------
	.byte		N12   , Bn1 , v096
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 016   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 017   ----------------------------------------
mus_my_god_is_the_sun_5_017:
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
	.byte	PEND
@ 018   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 019   ----------------------------------------
mus_my_god_is_the_sun_5_019:
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_my_god_is_the_sun_5_020:
	.byte		N12   , Bn0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_my_god_is_the_sun_5_021:
	.byte		N12   , Gs0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_my_god_is_the_sun_5_022:
	.byte		N12   , Ds1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_020
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_021
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_022
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_021
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_019
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_020
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_021
@ 042   ----------------------------------------
	.byte		N12   , Ds1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
@ 043   ----------------------------------------
mus_my_god_is_the_sun_5_043:
	.byte		N12   , An1 , v096
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
@ 044   ----------------------------------------
mus_my_god_is_the_sun_5_044:
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
	.byte	PEND
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 046   ----------------------------------------
mus_my_god_is_the_sun_5_046:
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
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 059   ----------------------------------------
	.byte		N48   , Gn1 , v096
	.byte	W72
@ 060   ----------------------------------------
	.byte		N72   , En0 
	.byte	W72
@ 061   ----------------------------------------
	.byte		N48   , Gn1 
	.byte	W72
@ 062   ----------------------------------------
	.byte		N72   , En0 
	.byte	W72
@ 063   ----------------------------------------
	.byte		N48   , Gn1 
	.byte	W72
@ 064   ----------------------------------------
	.byte		N72   , En0 
	.byte	W72
@ 065   ----------------------------------------
	.byte		N48   , Gn1 
	.byte	W72
@ 066   ----------------------------------------
	.byte		N24   , En0 
	.byte	W72
@ 067   ----------------------------------------
mus_my_god_is_the_sun_5_067:
	.byte		N12   , Gn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_my_god_is_the_sun_5_068:
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_067
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_068
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_067
@ 072   ----------------------------------------
mus_my_god_is_the_sun_5_072:
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 073   ----------------------------------------
mus_my_god_is_the_sun_5_073:
	.byte		N12   , An1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 077   ----------------------------------------
	.byte	W72
@ 078   ----------------------------------------
	.byte	W72
@ 079   ----------------------------------------
mus_my_god_is_the_sun_5_079:
	.byte		N12   , Gs1 , v096
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
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_079
@ 081   ----------------------------------------
	.byte		N24   , Gs1 , v096
	.byte	W72
@ 082   ----------------------------------------
	.byte	W72
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_079
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_079
@ 085   ----------------------------------------
mus_my_god_is_the_sun_5_085:
	.byte		N12   , En0 , v096
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
@ 086   ----------------------------------------
mus_my_god_is_the_sun_5_086:
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
	.byte	PEND
@ 087   ----------------------------------------
mus_my_god_is_the_sun_5_087:
	.byte		N12   , Gs0 , v096
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
@ 088   ----------------------------------------
mus_my_god_is_the_sun_5_088:
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
	.byte	PEND
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_085
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_086
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_087
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_088
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_085
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_086
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_087
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_088
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_085
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_086
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_087
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_088
@ 101   ----------------------------------------
mus_my_god_is_the_sun_5_101:
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
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 102   ----------------------------------------
mus_my_god_is_the_sun_5_102:
	.byte		N12   , Bn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 105   ----------------------------------------
mus_my_god_is_the_sun_5_105:
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
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 106   ----------------------------------------
mus_my_god_is_the_sun_5_106:
	.byte		N12   , An1 , v096
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_101
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_102
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_105
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_106
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 116   ----------------------------------------
	.byte		N12   , Fs1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , An1 
	.byte	W24
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 132   ----------------------------------------
	.byte		N12   , En1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 141   ----------------------------------------
mus_my_god_is_the_sun_5_141:
	.byte		N12   , An0 , v096
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 142   ----------------------------------------
mus_my_god_is_the_sun_5_142:
	.byte		N12   , Gn0 , v096
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 143   ----------------------------------------
mus_my_god_is_the_sun_5_143:
	.byte		N12   , Fs0 , v096
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_085
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_141
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_142
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_143
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_085
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_043
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_044
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_017
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_046
@ 165   ----------------------------------------
mus_my_god_is_the_sun_5_165:
	.byte		N12   , An1 , v096
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte	PEND
@ 166   ----------------------------------------
mus_my_god_is_the_sun_5_166:
	.byte		N12   , Fs1 , v096
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N12   , En1 
	.byte	W12
	.byte	PEND
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_165
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_166
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_165
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_166
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_165
@ 172   ----------------------------------------
	.byte		N72   , Fs1 , v096
	.byte	W72
@ 173   ----------------------------------------
	.byte	W72
@ 174   ----------------------------------------
	.byte	W72
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_068
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_067
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_068
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_067
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_072
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_5_073
@ 181   ----------------------------------------
	.byte		N24   , En1 , v096
	.byte	W24
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_my_god_is_the_sun_6:
	.byte	KEYSH , mus_my_god_is_the_sun_key+0
@ 000   ----------------------------------------
	.byte		VOL   , 120*mus_my_god_is_the_sun_mvl/mxv
	.byte	W72
@ 001   ----------------------------------------
mus_my_god_is_the_sun_6_001:
	.byte	W24
	.byte		N12   , Cn1 , v104
	.byte		N12   , Dn1 
	.byte		N12   , Gn1 , v088
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Dn1 
	.byte		N12   , Gn1 , v088
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Dn1 
	.byte		N12   , Gn1 , v088
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Dn1 
	.byte		N12   , Gn1 , v088
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W72
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_001
@ 004   ----------------------------------------
	.byte	W72
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_001
@ 006   ----------------------------------------
	.byte	W72
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_001
@ 008   ----------------------------------------
	.byte	W24
	.byte		N12   , Dn1 , v104
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
@ 009   ----------------------------------------
mus_my_god_is_the_sun_6_009:
	.byte		N12   , Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_my_god_is_the_sun_6_010:
	.byte		N12   , Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_009
@ 016   ----------------------------------------
	.byte		N12   , Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
@ 017   ----------------------------------------
mus_my_god_is_the_sun_6_017:
	.byte		N12   , Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		N24   , Cn1 , v096
	.byte		N24   , Cs2 , v072
	.byte	W24
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
@ 019   ----------------------------------------
mus_my_god_is_the_sun_6_019:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   
	.byte		N24   , As1 , v068
	.byte	W24
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 022   ----------------------------------------
mus_my_god_is_the_sun_6_022:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   
	.byte		N24   , Cs2 , v072
	.byte	W24
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 025   ----------------------------------------
mus_my_god_is_the_sun_6_025:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N22   
	.byte		N22   , As1 , v068
	.byte	W22
	.byte		N01   , Dn1 , v092
	.byte	W02
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        An1 , v080
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_my_god_is_the_sun_6_026:
	.byte		N12   , Gn1 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   
	.byte		N24   , Cs2 , v072
	.byte	W24
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_019
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_025
@ 042   ----------------------------------------
	.byte		N12   , Gn1 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
@ 043   ----------------------------------------
mus_my_god_is_the_sun_6_043:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 046   ----------------------------------------
mus_my_god_is_the_sun_6_046:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 050   ----------------------------------------
mus_my_god_is_the_sun_6_050:
	.byte		N04   , Cn1 , v096
	.byte		N04   , Dn1 , v092
	.byte		N04   , Fs1 , v068
	.byte		N04   , Cs2 , v072
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W05
	.byte		        An1 , v080
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		        Fs1 , v068
	.byte		N04   , Bn1 , v080
	.byte	W04
	.byte		        Gn1 
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		        Fs1 , v068
	.byte		N04   , Gn1 , v080
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte	PEND
@ 051   ----------------------------------------
mus_my_god_is_the_sun_6_051:
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_051
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_051
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_046
@ 055   ----------------------------------------
mus_my_god_is_the_sun_6_055:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte	PEND
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_055
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_055
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_050
@ 059   ----------------------------------------
mus_my_god_is_the_sun_6_059:
	.byte		N72   , Cn1 , v116
	.byte		N72   , Gn1 , v096
	.byte	W72
	.byte	PEND
@ 060   ----------------------------------------
mus_my_god_is_the_sun_6_060:
	.byte		N48   , Cn1 , v116
	.byte		N48   , Dn1 , v112
	.byte		N48   , As1 , v080
	.byte	W72
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_059
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_060
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_059
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_059
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_060
@ 067   ----------------------------------------
mus_my_god_is_the_sun_6_067:
	.byte		N12   , Dn1 , v104
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_my_god_is_the_sun_6_068:
	.byte		N12   , Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_067
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_068
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_067
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_068
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_067
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_068
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_017
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_017
@ 077   ----------------------------------------
	.byte	W72
@ 078   ----------------------------------------
	.byte	W72
@ 079   ----------------------------------------
mus_my_god_is_the_sun_6_079:
	.byte		N12   , Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v104
	.byte	W12
	.byte	PEND
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 081   ----------------------------------------
mus_my_god_is_the_sun_6_081:
	.byte		N24   , Cn1 , v096
	.byte		N24   , Cs2 , v072
	.byte	W24
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 082   ----------------------------------------
mus_my_god_is_the_sun_6_082:
	.byte		N24   , Cn1 , v096
	.byte		N24   , As1 , v068
	.byte	W24
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 084   ----------------------------------------
	.byte		N12   , Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		N10   , Cn1 , v104
	.byte	W10
	.byte		N01   , Dn1 , v092
	.byte	W02
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        An1 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Gn1 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_081
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_082
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_082
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_082
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_081
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_082
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_082
@ 092   ----------------------------------------
mus_my_god_is_the_sun_6_092:
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N10   , Cn1 , v096
	.byte	W10
	.byte		N01   , Dn1 , v092
	.byte	W02
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        An1 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Gn1 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_081
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_082
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_082
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_082
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_081
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_082
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_082
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_092
@ 101   ----------------------------------------
mus_my_god_is_the_sun_6_101:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte	PEND
@ 102   ----------------------------------------
mus_my_god_is_the_sun_6_102:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte	PEND
@ 103   ----------------------------------------
mus_my_god_is_the_sun_6_103:
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 104   ----------------------------------------
mus_my_god_is_the_sun_6_104:
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Cn1 , v116
	.byte		N24   , Gn1 , v096
	.byte	W24
	.byte	PEND
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_101
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_102
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_103
@ 108   ----------------------------------------
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N10   , Cn1 , v096
	.byte	W10
	.byte		N01   , Dn1 , v076
	.byte	W02
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Cn1 , v116
	.byte		N24   , An1 , v096
	.byte	W24
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_101
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_102
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_103
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_104
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_101
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_102
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_103
@ 116   ----------------------------------------
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N10   , Cn1 , v096
	.byte	W10
	.byte		N01   , Dn1 , v076
	.byte	W02
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Dn1 , v112
	.byte		N24   , Gn1 , v096
	.byte	W24
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_067
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_068
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_067
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_068
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_067
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_068
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_067
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_050
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 132   ----------------------------------------
	.byte		N24   , Cn1 , v096
	.byte		N24   , Cn2 , v080
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N24   , An1 , v080
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 136   ----------------------------------------
mus_my_god_is_the_sun_6_136:
	.byte		N24   , Cn1 , v096
	.byte		N24   , Dn1 , v092
	.byte		N24   , Fs1 , v068
	.byte		N24   , Cs2 , v072
	.byte	W24
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N04   , Fs1 , v068
	.byte		N04   , Bn1 , v080
	.byte	W04
	.byte		        An1 
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte	PEND
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 140   ----------------------------------------
	.byte		N04   , Cn1 , v096
	.byte		N04   , Dn1 , v092
	.byte		N04   , Fs1 , v068
	.byte		N04   , Cs2 , v072
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W05
	.byte		        An1 , v080
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		        Fs1 , v068
	.byte		N04   , Bn1 , v080
	.byte	W04
	.byte		        Gn1 
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		        Cn1 , v096
	.byte	W05
	.byte		        Fs1 , v068
	.byte		N04   , Gn1 , v080
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_136
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_043
@ 148   ----------------------------------------
	.byte		N04   , Cn1 , v096
	.byte		N04   , Dn1 , v092
	.byte		N04   , Fs1 , v068
	.byte		N04   , Cs2 , v072
	.byte	W04
	.byte		        Gn1 , v080
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		        Cn1 , v096
	.byte		N04   , Dn1 , v092
	.byte		N04   , Fs1 , v068
	.byte	W04
	.byte		        Gn1 , v080
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		        Cn1 , v096
	.byte		N04   , Dn1 , v092
	.byte		N04   , Fs1 , v068
	.byte	W04
	.byte		        Gn1 , v080
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 164   ----------------------------------------
	.byte		N08   , Dn1 , v104
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        An1 , v088
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
@ 165   ----------------------------------------
mus_my_god_is_the_sun_6_165:
	.byte		N12   , Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte	W12
	.byte	PEND
@ 166   ----------------------------------------
mus_my_god_is_the_sun_6_166:
	.byte		N12   , Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		N04   , Cn1 , v104
	.byte		N04   , Fs1 , v072
	.byte	W08
	.byte		        An1 , v088
	.byte	W04
	.byte		N12   , Fs1 , v072
	.byte		N12   , Gn1 , v088
	.byte	W12
	.byte	PEND
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_165
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_166
@ 169   ----------------------------------------
	.byte		N12   , Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		N08   , Fs1 , v072
	.byte	W08
	.byte		N04   , Cn1 , v104
	.byte	W04
	.byte		N12   
	.byte		N12   , Fs1 , v072
	.byte	W12
@ 170   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		N04   , Dn1 , v104
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        An1 , v088
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		N04   
	.byte	W04
@ 171   ----------------------------------------
	.byte		N12   , Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Fs1 , v072
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		N10   , Fs1 , v072
	.byte	W10
	.byte		N01   , Dn1 , v104
	.byte	W02
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 , v072
	.byte		N12   , Gn1 , v088
	.byte	W12
@ 172   ----------------------------------------
	.byte		N72   , Cn1 , v104
	.byte		N72   , Fs1 , v072
	.byte		N72   , Cs2 , v080
	.byte	W72
@ 173   ----------------------------------------
	.byte	W72
@ 174   ----------------------------------------
	.byte	W72
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_my_god_is_the_sun_6_079
@ 180   ----------------------------------------
	.byte		N04   , Cn1 , v096
	.byte		N04   , Dn1 , v092
	.byte		N04   , Fs1 , v068
	.byte		N04   , Cs2 , v072
	.byte	W04
	.byte		        Gn1 , v080
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		        Fs1 , v068
	.byte		N04   , An1 , v080
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		        Fs1 , v068
	.byte		N04   , Gn1 , v080
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
@ 181   ----------------------------------------
	.byte		N72   , Cn1 , v104
	.byte		N72   , Cs2 , v080
	.byte	W72
@ 182   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_my_god_is_the_sun:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_my_god_is_the_sun_pri	@ Priority
	.byte	mus_my_god_is_the_sun_rev	@ Reverb.

	.word	mus_my_god_is_the_sun_grp

	.word	mus_my_god_is_the_sun_1
	.word	mus_my_god_is_the_sun_2
	.word	mus_my_god_is_the_sun_3
	.word	mus_my_god_is_the_sun_4
	.word	mus_my_god_is_the_sun_5
	.word	mus_my_god_is_the_sun_6

	.end
