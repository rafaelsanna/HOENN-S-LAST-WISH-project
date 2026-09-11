	.include "MPlayDef.s"

	.equ	mus_halo_beyonce_grp, voicegroup_pink_and_white
	.equ	mus_halo_beyonce_pri, 0
	.equ	mus_halo_beyonce_rev, reverb_set+10
	.equ	mus_halo_beyonce_mvl, 82
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
	.byte		VOICE , 0
	.byte		N06   , Cs4 , v072
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
@ 002   ----------------------------------------
mus_halo_beyonce_1_002:
	.byte		N06   , Dn4 , v072
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
	.byte		        Cs4 , v064
	.byte	W03
	.byte		N06   , Bn3 , v072
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_halo_beyonce_1_003:
	.byte		N06   , An3 , v072
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
@ 004   ----------------------------------------
mus_halo_beyonce_1_004:
	.byte		N06   , Fs3 , v072
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
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
mus_halo_beyonce_1_006:
	.byte		N12   , Dn3 , v072
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
@ 007   ----------------------------------------
	.byte		N12   , Fs2 
	.byte	W96
@ 008   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W84
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_006
@ 011   ----------------------------------------
	.byte	W24
	.byte		N12   , Fs2 , v072
	.byte	W72
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
mus_halo_beyonce_1_013:
	.byte		N12   , Cs3 , v072
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
@ 014   ----------------------------------------
mus_halo_beyonce_1_014:
	.byte		N12   , Dn3 , v072
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
@ 015   ----------------------------------------
mus_halo_beyonce_1_015:
	.byte		N12   , An2 , v072
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
@ 016   ----------------------------------------
mus_halo_beyonce_1_016:
	.byte		N06   , Fs2 , v072
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
	.byte		N12   , Fs2 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_006
@ 035   ----------------------------------------
	.byte		N12   , Fs2 , v072
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_015
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_016
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
	.byte		N06   , Cs4 , v072
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
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_1_004
@ 061   ----------------------------------------
	.byte		N06   , Cs4 , v072
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
@ 062   ----------------------------------------
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
@ 063   ----------------------------------------
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
@ 064   ----------------------------------------
	.byte		        En3 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N12   
	.byte	W24
@ 065   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_halo_beyonce_2:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N96   , An2 , v060
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        An2 
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
	.byte	W24
	.byte		N72   , An2 
	.byte	W72
@ 009   ----------------------------------------
	.byte		N96   , Bn2 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 012   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 013   ----------------------------------------
	.byte		        Bn2 
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
	.byte	W96
@ 065   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Dn2 
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
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_halo_beyonce_3:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
	.byte		N12   , Fs2 , v060
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N96   , An1 , v072
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 008   ----------------------------------------
	.byte	W24
	.byte		N48   , An1 
	.byte	W72
@ 009   ----------------------------------------
	.byte		N96   , Bn1 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 012   ----------------------------------------
	.byte		        An1 , v060
	.byte	W96
@ 013   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 015   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 016   ----------------------------------------
	.byte		        An1 , v072
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
	.byte		        An1 
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
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W48
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 060   ----------------------------------------
	.byte		N96   , Cs3 
	.byte	W96
@ 061   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 062   ----------------------------------------
	.byte		N96   , Cs3 
	.byte	W96
@ 063   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W48
	.byte		        An2 
	.byte	W48
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte		N96   , An1 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 069   ----------------------------------------
	.byte		        An1 
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
	.byte	FINE

@**************** Track 4 (Midi-Chn.7) ****************@

mus_halo_beyonce_4:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
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
	.byte	W48
	.byte		N06   , Cs3 , v076
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
@ 005   ----------------------------------------
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
@ 006   ----------------------------------------
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
@ 007   ----------------------------------------
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
@ 008   ----------------------------------------
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
@ 009   ----------------------------------------
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
@ 010   ----------------------------------------
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
@ 011   ----------------------------------------
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
@ 012   ----------------------------------------
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
@ 013   ----------------------------------------
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
	.byte		        Gs3 , v068
	.byte	W03
	.byte		N12   , An3 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
@ 014   ----------------------------------------
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
@ 015   ----------------------------------------
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
@ 016   ----------------------------------------
mus_halo_beyonce_4_016:
	.byte	W42
	.byte		N06   , An3 , v076
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
@ 017   ----------------------------------------
mus_halo_beyonce_4_017:
	.byte	W36
	.byte		N06   , Bn3 , v076
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
@ 018   ----------------------------------------
mus_halo_beyonce_4_018:
	.byte	W12
	.byte		N24   , Fs3 , v076
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
@ 019   ----------------------------------------
mus_halo_beyonce_4_019:
	.byte	W06
	.byte		N24   , Dn3 , v076
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
@ 020   ----------------------------------------
mus_halo_beyonce_4_020:
	.byte	W36
	.byte		N06   , An3 , v076
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
@ 021   ----------------------------------------
mus_halo_beyonce_4_021:
	.byte	W36
	.byte		N06   , Bn3 , v076
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
@ 022   ----------------------------------------
mus_halo_beyonce_4_022:
	.byte	W06
	.byte		N24   , Fs3 , v076
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
@ 023   ----------------------------------------
mus_halo_beyonce_4_023:
	.byte	W06
	.byte		N24   , Dn3 , v076
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
@ 024   ----------------------------------------
mus_halo_beyonce_4_024:
	.byte		N24   , An3 , v076
	.byte	W48
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , An3 
	.byte	W36
	.byte	PEND
@ 025   ----------------------------------------
mus_halo_beyonce_4_025:
	.byte	W48
	.byte		N12   , Dn4 , v076
	.byte	W12
	.byte		N24   , An3 
	.byte	W36
	.byte	PEND
@ 026   ----------------------------------------
mus_halo_beyonce_4_026:
	.byte	W48
	.byte		N12   , Cs4 , v076
	.byte	W12
	.byte		N24   , An3 
	.byte	W36
	.byte	PEND
@ 027   ----------------------------------------
mus_halo_beyonce_4_027:
	.byte	W48
	.byte		N12   , Bn3 , v076
	.byte	W12
	.byte		N24   , An3 
	.byte	W36
	.byte	PEND
@ 028   ----------------------------------------
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
@ 029   ----------------------------------------
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
@ 030   ----------------------------------------
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
@ 031   ----------------------------------------
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
@ 032   ----------------------------------------
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
@ 033   ----------------------------------------
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
@ 034   ----------------------------------------
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
@ 035   ----------------------------------------
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
@ 036   ----------------------------------------
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
@ 037   ----------------------------------------
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
@ 038   ----------------------------------------
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
@ 039   ----------------------------------------
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
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_019
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
	 .word	mus_halo_beyonce_4_026
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_027
@ 056   ----------------------------------------
	.byte		N06   , En4 , v076
	.byte	W06
	.byte		N24   , Cs4 
	.byte	W90
@ 057   ----------------------------------------
	.byte	W48
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
@ 058   ----------------------------------------
	.byte		N24   , Fs4 
	.byte	W96
@ 059   ----------------------------------------
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N48   , An3 
	.byte	W48
@ 060   ----------------------------------------
	.byte		N06   , En4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte	W72
	.byte		N12   , En4 
	.byte	W18
@ 061   ----------------------------------------
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
@ 062   ----------------------------------------
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
@ 063   ----------------------------------------
	.byte		N48   , En3 
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 064   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_016
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_017
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_018
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_019
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
	 .word	mus_halo_beyonce_4_026
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_025
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_026
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_4_027
@ 081   ----------------------------------------
	.byte		N06   , En4 , v076
	.byte	W06
	.byte		N24   , Cs4 
	.byte	W24
	.byte	FINE

@**************** Track 5 (Midi-Chn.9) ****************@

mus_halo_beyonce_5:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N96   , An2 , v056
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        An2 
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
	.byte	W24
	.byte		N72   , An2 
	.byte	W72
@ 009   ----------------------------------------
	.byte		N96   , Bn2 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 012   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 013   ----------------------------------------
	.byte		        Bn2 
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
	.byte	W96
@ 065   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Dn2 
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
mus_halo_beyonce_6_012:
	.byte	W72
	.byte		N06   , Bn3 , v048
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
@ 013   ----------------------------------------
	.byte		N12   , An3 
	.byte		N12   
	.byte	W96
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_012
@ 015   ----------------------------------------
	.byte		N12   , An3 , v048
	.byte		N12   
	.byte	W96
@ 016   ----------------------------------------
mus_halo_beyonce_6_016:
	.byte		N12   , Cs4 , v048
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
@ 017   ----------------------------------------
mus_halo_beyonce_6_017:
	.byte		N12   , Dn4 , v048
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
@ 018   ----------------------------------------
mus_halo_beyonce_6_018:
	.byte		N12   , An3 , v048
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
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
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
	.byte	PATT
	 .word	mus_halo_beyonce_6_012
@ 037   ----------------------------------------
	.byte		N12   , An3 , v048
	.byte		N12   
	.byte	W96
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_012
@ 039   ----------------------------------------
	.byte		N12   , An3 , v048
	.byte		N12   
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
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
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_017
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_017
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_017
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_016
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_017
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_6_018
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.16) ****************@

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
mus_halo_beyonce_7_016:
	.byte	W42
	.byte		N06   , An2 , v048
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
@ 017   ----------------------------------------
mus_halo_beyonce_7_017:
	.byte	W36
	.byte		N06   , Bn2 , v048
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
@ 018   ----------------------------------------
mus_halo_beyonce_7_018:
	.byte	W12
	.byte		N24   , Fs2 , v048
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
@ 019   ----------------------------------------
mus_halo_beyonce_7_019:
	.byte	W06
	.byte		N24   , Dn2 , v048
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
@ 020   ----------------------------------------
mus_halo_beyonce_7_020:
	.byte	W36
	.byte		N06   , An2 , v048
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
@ 021   ----------------------------------------
mus_halo_beyonce_7_021:
	.byte	W36
	.byte		N06   , Bn2 , v048
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
@ 022   ----------------------------------------
mus_halo_beyonce_7_022:
	.byte	W06
	.byte		N24   , Fs2 , v048
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
@ 023   ----------------------------------------
mus_halo_beyonce_7_023:
	.byte	W06
	.byte		N24   , Dn2 , v048
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
@ 024   ----------------------------------------
mus_halo_beyonce_7_024:
	.byte		N12   , Cs4 , v048
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
@ 025   ----------------------------------------
mus_halo_beyonce_7_025:
	.byte		N12   , Dn4 , v048
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
@ 026   ----------------------------------------
mus_halo_beyonce_7_026:
	.byte		N12   , Cs4 , v048
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
@ 027   ----------------------------------------
mus_halo_beyonce_7_027:
	.byte		N12   , Cs4 , v048
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
	.byte	PATT
	 .word	mus_halo_beyonce_7_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_024
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_026
@ 051   ----------------------------------------
mus_halo_beyonce_7_051:
	.byte		N12   , Cs4 , v048
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
	.byte		N06   , Fs3 , v040
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_027
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
	.byte	PATT
	 .word	mus_halo_beyonce_7_016
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_017
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_018
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_019
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_020
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_021
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_022
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_023
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_024
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_025
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_026
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_051
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_024
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_025
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_7_026
@ 080   ----------------------------------------
	.byte		N12   , Cs4 , v048
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

@**************** Track 8 (Midi-Chn.10) ****************@

mus_halo_beyonce_8:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte	W24
	.byte		N24   , En1 , v048
	.byte	W48
	.byte		N12   
	.byte	W24
@ 001   ----------------------------------------
mus_halo_beyonce_8_001:
	.byte	W24
	.byte		N24   , En1 , v048
	.byte	W48
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_halo_beyonce_8_002:
	.byte	W24
	.byte		N24   , En1 , v048
	.byte	W48
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_002
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_8_001
@ 081   ----------------------------------------
	.byte	W24
	.byte		N24   , En1 , v048
	.byte	W48
	.byte		N06   
	.byte	W06
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_halo_beyonce_9:
	.byte		VOL   , 127*mus_halo_beyonce_mvl/mxv
	.byte	KEYSH , mus_halo_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte		N24   , Cn1 , v052
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		N12   
	.byte	W12
@ 001   ----------------------------------------
mus_halo_beyonce_9_001:
	.byte		N18   , Cn1 , v052
	.byte	W18
	.byte		N06   
	.byte	W30
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_halo_beyonce_9_002:
	.byte		N24   , Cn1 , v052
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_halo_beyonce_9_003:
	.byte		N18   , Cn1 , v052
	.byte	W18
	.byte		N06   
	.byte	W30
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_halo_beyonce_9_004:
	.byte		N24   , Cn1 , v052
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 008   ----------------------------------------
	.byte	W48
	.byte		N24   , Cn1 , v052
	.byte	W36
	.byte		N12   
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_004
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_001
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_002
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_halo_beyonce_9_003
@ 081   ----------------------------------------
	.byte		N18   , Cn1 , v052
	.byte	W18
	.byte		N06   
	.byte	W48
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 082   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

mus_halo_beyonce:
	.byte	9	@ NumTrks
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

	.end
