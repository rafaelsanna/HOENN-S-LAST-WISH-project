	.include "MPlayDef.s"

	.equ	mus_halo_beyonce_grp, voicegroup_pink_and_white
	.equ	mus_halo_beyonce_pri, 0
	.equ	mus_halo_beyonce_rev, reverb_set+12
	.equ	mus_halo_beyonce_mvl, 84
	.equ	mus_halo_beyonce_key, 0
	.equ	mus_halo_beyonce_tbs, 1
	.equ	mus_halo_beyonce_exg, 1
	.equ	mus_halo_beyonce_cmp, 1

	.section .rodata
	.global	mus_halo_beyonce
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_halo_beyonce_1:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 80*mus_halo_beyonce_tbs/2
	.byte		VOICE , 5
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_halo_beyonce_1_005:
	.byte		N06   , Cs4 , v080
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_halo_beyonce_1_006:
	.byte		N06   , Dn4 , v080
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W03
	.byte		        Cs4 , v072
	.byte	W03
	.byte		N06   , Bn3 , v080
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_halo_beyonce_1_007:
	.byte		N06   , An3 , v080
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_halo_beyonce_1_008:
	.byte		N06   , Fs3 , v080
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
mus_halo_beyonce_1_010:
	.byte		N12   , Dn3 , v080
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N06   , An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte		N12   , Fs2 
	.byte	W96
@ 012   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W84
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_010
@ 015   ----------------------------------------
	.byte	W24
	.byte		N12   , Fs2 , v080
	.byte	W72
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
mus_halo_beyonce_1_017:
	.byte		N12   , Cs3 , v080
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_halo_beyonce_1_018:
	.byte		N12   , Dn3 , v080
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_halo_beyonce_1_019:
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_halo_beyonce_1_020:
	.byte		N06   , Fs2 , v080
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	PEND
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
	.byte		N12   , Fs2 
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_010
@ 039   ----------------------------------------
	.byte		N12   , Fs2 , v080
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_020
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
	.byte	PATT
	 .word	mus_halo_beyonce_1_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_008
@ 065   ----------------------------------------
	.byte		N06   , Cs4 , v080
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 067   ----------------------------------------
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
@ 068   ----------------------------------------
	.byte		        En3 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N12   
	.byte	W24
@ 069   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_halo_beyonce_2:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		N96   , An2 , v080
	.byte		N96   , Cs3 
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Bn2 
	.byte		N96   , Dn3 
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Fs2 
	.byte		N96   , An2 
	.byte	W96
@ 003   ----------------------------------------
	.byte		N48   , Dn2 
	.byte	W96
@ 004   ----------------------------------------
	.byte		N96   , An2 
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 008   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 009   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 012   ----------------------------------------
	.byte	W24
	.byte		N72   , An2 
	.byte	W72
@ 013   ----------------------------------------
	.byte		N96   , Bn2 
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 015   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 016   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 020   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 021   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 023   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 024   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 036   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 037   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 040   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 041   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 042   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 050   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 052   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 053   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 054   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 056   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 057   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 058   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 060   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 061   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 062   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 063   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 064   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 065   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 070   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 071   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 072   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 073   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 074   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 077   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 079   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 080   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 081   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 082   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 083   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 085   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_halo_beyonce_3:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
	.byte	W48
	.byte		N12   , Fs2 , v080
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N96   , An1 , v096
	.byte	W96
@ 009   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 012   ----------------------------------------
	.byte	W24
	.byte		N48   , An1 
	.byte	W72
@ 013   ----------------------------------------
	.byte		N96   , Bn1 
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 015   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 016   ----------------------------------------
	.byte		        An1 , v080
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 020   ----------------------------------------
	.byte		        An1 , v096
	.byte	W96
@ 021   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 023   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 024   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 036   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 037   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 040   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 041   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 042   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 050   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 052   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 053   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 054   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 056   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 057   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 058   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W48
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N96   , Cs3 
	.byte	W96
@ 065   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 066   ----------------------------------------
	.byte		N96   , Cs3 
	.byte	W96
@ 067   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W48
	.byte		        An2 
	.byte	W48
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte		N96   , An1 
	.byte	W96
@ 070   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 071   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 072   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 073   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 074   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 077   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 079   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 080   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 081   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 082   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 083   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 085   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.7) ****************@

mus_halo_beyonce_4:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
	.byte	W48
	.byte		N06   , Cs3 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 009   ----------------------------------------
	.byte	W48
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 010   ----------------------------------------
	.byte	W42
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 011   ----------------------------------------
	.byte	W42
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 012   ----------------------------------------
	.byte	W42
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 013   ----------------------------------------
	.byte	W48
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
@ 014   ----------------------------------------
	.byte	W42
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 015   ----------------------------------------
	.byte	W06
	.byte		N24   , Cs3 
	.byte	W36
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 016   ----------------------------------------
	.byte		N24   , An2 
	.byte	W42
	.byte		N06   , En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 017   ----------------------------------------
	.byte	W36
	.byte		N06   , En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        Gs3 , v072
	.byte	W03
	.byte		N12   , An3 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
@ 018   ----------------------------------------
	.byte	W36
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W42
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 020   ----------------------------------------
mus_halo_beyonce_4_020:
	.byte	W42
	.byte		N06   , An3 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_halo_beyonce_4_021:
	.byte	W36
	.byte		N06   , Bn3 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W18
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_halo_beyonce_4_022:
	.byte	W12
	.byte		N24   , Fs3 , v080
	.byte	W36
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_halo_beyonce_4_023:
	.byte	W06
	.byte		N24   , Dn3 , v080
	.byte	W36
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
mus_halo_beyonce_4_024:
	.byte	W36
	.byte		N06   , An3 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
mus_halo_beyonce_4_025:
	.byte	W36
	.byte		N06   , Bn3 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
mus_halo_beyonce_4_026:
	.byte	W06
	.byte		N24   , Fs3 , v080
	.byte	W42
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 027   ----------------------------------------
mus_halo_beyonce_4_027:
	.byte	W06
	.byte		N24   , Dn3 , v080
	.byte	W42
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Gs3 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 028   ----------------------------------------
mus_halo_beyonce_4_028:
	.byte		N24   , An3 , v080
	.byte	W48
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , An3 
	.byte	W36
	.byte	PEND
@ 029   ----------------------------------------
mus_halo_beyonce_4_029:
	.byte	W48
	.byte		N12   , Dn4 , v080
	.byte	W12
	.byte		N24   , An3 
	.byte	W36
	.byte	PEND
@ 030   ----------------------------------------
mus_halo_beyonce_4_030:
	.byte	W48
	.byte		N12   , Cs4 , v080
	.byte	W12
	.byte		N24   , An3 
	.byte	W36
	.byte	PEND
@ 031   ----------------------------------------
mus_halo_beyonce_4_031:
	.byte	W48
	.byte		N12   , Bn3 , v080
	.byte	W12
	.byte		N24   , An3 
	.byte	W36
	.byte	PEND
@ 032   ----------------------------------------
	.byte		N06   , En4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W18
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 033   ----------------------------------------
	.byte	W42
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W18
@ 034   ----------------------------------------
	.byte		N24   , Fs3 
	.byte	W42
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 035   ----------------------------------------
	.byte		N24   , An3 
	.byte	W30
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 036   ----------------------------------------
	.byte	W42
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 037   ----------------------------------------
	.byte	W42
	.byte		N06   
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Cs4 
	.byte	W18
	.byte		        An3 
	.byte	W30
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 039   ----------------------------------------
	.byte	W36
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W18
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 040   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		N24   , Cs3 
	.byte	W36
	.byte		N06   , En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 041   ----------------------------------------
	.byte	W36
	.byte		N06   , En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W24
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 043   ----------------------------------------
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W30
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_024
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_026
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_027
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_028
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_029
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_030
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_031
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_030
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_029
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_030
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_031
@ 060   ----------------------------------------
	.byte		N06   , En4 , v080
	.byte	W06
	.byte		N24   , Cs4 
	.byte	W90
@ 061   ----------------------------------------
	.byte	W48
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
@ 062   ----------------------------------------
	.byte		N24   , Fs4 
	.byte	W96
@ 063   ----------------------------------------
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N48   , An3 
	.byte	W48
@ 064   ----------------------------------------
	.byte		N06   , En4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte	W72
	.byte		N12   , En4 
	.byte	W18
@ 065   ----------------------------------------
	.byte		N24   , Dn4 
	.byte	W48
	.byte		N12   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 066   ----------------------------------------
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
@ 067   ----------------------------------------
	.byte		N48   , En3 
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 068   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_020
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_021
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_022
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_023
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_024
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_025
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_026
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_027
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_028
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_029
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_030
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_031
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_030
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_029
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_030
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_031
@ 085   ----------------------------------------
	.byte		N06   , En4 , v080
	.byte	W06
	.byte		N24   , Cs4 
	.byte	W24
	.byte	FINE

@**************** Track 5 (Midi-Chn.9) ****************@

mus_halo_beyonce_5:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		N96   , An2 , v080
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 003   ----------------------------------------
	.byte		N48   , Dn2 
	.byte	W96
@ 004   ----------------------------------------
	.byte		N96   , An2 
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 008   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 009   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 012   ----------------------------------------
	.byte	W24
	.byte		N72   , An2 
	.byte	W72
@ 013   ----------------------------------------
	.byte		N96   , Bn2 
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 015   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 016   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 020   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 021   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 023   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 024   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 036   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 037   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 040   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 041   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 042   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 050   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 052   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 053   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 054   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 056   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 057   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 058   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 060   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 061   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 062   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 063   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 064   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 065   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 070   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 071   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 072   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 073   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 074   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 077   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 079   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 080   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 081   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 082   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 083   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 085   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.12) ****************@

mus_halo_beyonce_6:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
mus_halo_beyonce_6_016:
	.byte	W72
	.byte		N06   , Bn3 , v080
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
	.byte		N12   , An3 
	.byte		N12   
	.byte	W96
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 019   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
	.byte	W96
@ 020   ----------------------------------------
mus_halo_beyonce_6_020:
	.byte		N12   , Cs4 , v080
	.byte	W12
	.byte		N06   , An3 
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An3 
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_halo_beyonce_6_021:
	.byte		N12   , Dn4 , v080
	.byte	W12
	.byte		N06   , Bn3 
	.byte		N06   
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn3 
	.byte		N06   
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_halo_beyonce_6_022:
	.byte		N12   , An3 , v080
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N12   , An3 
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs3 
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N12   , An3 
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
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
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 041   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 043   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_020
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_021
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_021
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_020
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_021
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
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
	.byte	PATT
	 .word	mus_halo_beyonce_6_020
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_021
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_020
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_021
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_020
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_021
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_020
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_021
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_022
@ 085   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.14) ****************@

mus_halo_beyonce_7:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
mus_halo_beyonce_7_021:
	.byte	W72
	.byte		N06   , Bn3 , v080
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
	.byte		N12   , An3 
	.byte		N12   
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 026   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 030   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
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
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 046   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 050   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 054   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 058   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
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
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 071   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 075   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 079   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 083   ----------------------------------------
	.byte		N12   , An3 , v080
	.byte		N12   
	.byte	W12
	.byte	FINE

@**************** Track 8 (Midi-Chn.16) ****************@

mus_halo_beyonce_8:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
mus_halo_beyonce_8_020:
	.byte	W42
	.byte		N06   , An2 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_halo_beyonce_8_021:
	.byte	W36
	.byte		N06   , Bn2 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_halo_beyonce_8_022:
	.byte	W12
	.byte		N24   , Fs2 , v080
	.byte	W36
	.byte		N06   , An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_halo_beyonce_8_023:
	.byte	W06
	.byte		N24   , Dn2 , v080
	.byte	W36
	.byte		N06   , An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
mus_halo_beyonce_8_024:
	.byte	W36
	.byte		N06   , An2 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
mus_halo_beyonce_8_025:
	.byte	W36
	.byte		N06   , Bn2 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
mus_halo_beyonce_8_026:
	.byte	W06
	.byte		N24   , Fs2 , v080
	.byte	W42
	.byte		N06   , An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 027   ----------------------------------------
mus_halo_beyonce_8_027:
	.byte	W06
	.byte		N24   , Dn2 , v080
	.byte	W42
	.byte		N06   , An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 028   ----------------------------------------
mus_halo_beyonce_8_028:
	.byte		N12   , Cs4 , v080
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
mus_halo_beyonce_8_029:
	.byte		N12   , Dn4 , v080
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
mus_halo_beyonce_8_030:
	.byte		N12   , Cs4 , v080
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 031   ----------------------------------------
mus_halo_beyonce_8_031:
	.byte		N12   , Cs4 , v080
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W36
	.byte	PEND
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
	.byte	PATT
	 .word	mus_halo_beyonce_8_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_024
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_026
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_027
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_028
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_029
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_030
@ 055   ----------------------------------------
mus_halo_beyonce_8_055:
	.byte		N12   , Cs4 , v080
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Fs3 , v064
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_028
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_029
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_030
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_031
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
	.byte	PATT
	 .word	mus_halo_beyonce_8_020
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_021
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_022
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_023
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_024
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_025
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_026
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_027
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_028
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_029
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_030
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_055
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_028
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_029
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_030
@ 084   ----------------------------------------
	.byte		N12   , Cs4 , v080
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_halo_beyonce_9:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_halo_beyonce_9_004:
	.byte	W24
	.byte		N24   , Ds1 , v080
	.byte	W48
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_halo_beyonce_9_005:
	.byte	W24
	.byte		N24   , Ds1 , v080
	.byte	W48
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_005
@ 085   ----------------------------------------
	.byte	W24
	.byte		N24   , Ds1 , v080
	.byte	W48
	.byte		N06   
	.byte	W06
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_halo_beyonce_10:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_halo_beyonce_10_004:
	.byte		N24   , Bn0 , v080
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		N12   
	.byte		N12   , Fn1 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_halo_beyonce_10_005:
	.byte		N18   , Bn0 , v080
	.byte	W18
	.byte		N06   
	.byte		N06   , Fn1 
	.byte	W30
	.byte		N18   , Bn0 
	.byte	W18
	.byte		N06   
	.byte		N06   , Fn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Bn0 
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Bn0 
	.byte		N06   , Fn1 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_halo_beyonce_10_006:
	.byte		N24   , Bn0 , v080
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte		N06   , Fn1 
	.byte	W18
	.byte		N12   , Bn0 
	.byte		N12   , Fn1 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_halo_beyonce_10_007:
	.byte		N18   , Bn0 , v080
	.byte	W18
	.byte		N06   
	.byte		N06   , Fn1 
	.byte	W30
	.byte		N18   , Bn0 
	.byte	W18
	.byte		N06   
	.byte		N06   , Fn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N12   , Bn0 
	.byte		N12   , Fn1 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 012   ----------------------------------------
	.byte	W48
	.byte		N24   , Bn0 , v080
	.byte	W36
	.byte		N12   
	.byte		N12   , Fn1 
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 068   ----------------------------------------
	.byte	W72
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N12   
	.byte	W12
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_004
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_005
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_006
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_10_007
@ 085   ----------------------------------------
	.byte		N18   , Bn0 , v080
	.byte	W18
	.byte		N06   
	.byte		N06   , Fn1 
	.byte	W48
	.byte		        Bn0 
	.byte		N06   , Fn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Bn0 
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Bn0 
	.byte		N06   , Fn1 
	.byte	W06
@ 086   ----------------------------------------
	.byte		N24   , Bn0 
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

mus_halo_beyonce:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_halo_beyonce_pri	@ Priority
	.byte	mus_halo_beyonce_rev	@ Reverb.

	.word	mus_halo_beyonce_grp

	.word	mus_halo_beyonce_1
	.word	mus_halo_beyonce_2
	.word	mus_halo_beyonce_3
	.word	mus_halo_beyonce_4
	.word	mus_halo_beyonce_5
	.word	mus_halo_beyonce_6
	.word	mus_halo_beyonce_7
	.word	mus_halo_beyonce_8
	.word	mus_halo_beyonce_9
	.word	mus_halo_beyonce_10

	.end
