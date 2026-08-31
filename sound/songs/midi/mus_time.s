	.include "MPlayDef.s"

	.equ	mus_time_grp, voicegroup_hlw_classic_rock
	.equ	mus_time_pri, 0
	.equ	mus_time_rev, reverb_set+28
	.equ	mus_time_mvl, 96
	.equ	mus_time_key, 0
	.equ	mus_time_tbs, 1
	.equ	mus_time_exg, 1
	.equ	mus_time_cmp, 1

	.section .rodata
	.global	mus_time
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_time_1:
	.byte		VOL   , 127*mus_time_mvl/mxv
	.byte	KEYSH , mus_time_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 140*mus_time_tbs/2
	.byte		VOICE , 25
	.byte	W96
@ 001   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 , v092
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 002   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 005   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 006   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 008   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 009   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 010   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 013   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 014   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 015   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 016   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 017   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 018   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 019   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 020   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 021   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 022   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 023   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 024   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 025   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 026   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 027   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 028   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Bn2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 030   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 031   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 032   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
@ 033   ----------------------------------------
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 034   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 035   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   
	.byte	W12
@ 036   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 037   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 038   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 039   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 040   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 041   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 042   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   
	.byte	W12
@ 044   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 045   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 046   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 047   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 048   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 049   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 050   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 051   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 052   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 053   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 054   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 055   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 056   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 057   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 058   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 059   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 060   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 061   ----------------------------------------
	.byte		        Bn2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 062   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 063   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 064   ----------------------------------------
	.byte		N96   , Cn3 
	.byte	W96
@ 065   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 066   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 067   ----------------------------------------
	.byte		N96   , Cs3 
	.byte	W96
@ 068   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte	W24
@ 069   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 070   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 071   ----------------------------------------
	.byte		N72   , Cs3 
	.byte	W72
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 072   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
@ 073   ----------------------------------------
	.byte		N84   , Gn2 
	.byte	W84
	.byte		N60   
	.byte	W12
@ 074   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 075   ----------------------------------------
	.byte		N48   , An2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 076   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N36   
	.byte	W36
@ 077   ----------------------------------------
	.byte		N48   , Gn2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 078   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 079   ----------------------------------------
	.byte		N96   , An2 
	.byte	W96
@ 080   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 081   ----------------------------------------
	.byte		TIE   , Bn2 
	.byte	W96
@ 082   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 083   ----------------------------------------
	.byte		N48   , Cs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 084   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W36
@ 085   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 086   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N36   , Gn2 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 087   ----------------------------------------
	.byte		N96   , An2 
	.byte	W96
@ 088   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W36
@ 089   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 090   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N36   
	.byte	W36
@ 091   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 092   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   , Bn2 
	.byte	W36
@ 093   ----------------------------------------
	.byte		N48   , An2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 094   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 095   ----------------------------------------
	.byte		N48   , Gn2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 096   ----------------------------------------
	.byte		        Fs2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 097   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 098   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_time_2:
	.byte		VOL   , 127*mus_time_mvl/mxv
	.byte	KEYSH , mus_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 25
	.byte	W96
@ 001   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs3 , v092
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 002   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 005   ----------------------------------------
	.byte	W24
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 006   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	W24
@ 008   ----------------------------------------
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 009   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 010   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 013   ----------------------------------------
	.byte	W24
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 014   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 015   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	W24
@ 016   ----------------------------------------
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 017   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 018   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 019   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 020   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 021   ----------------------------------------
	.byte		        Fs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 022   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 023   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 024   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 025   ----------------------------------------
	.byte		        Fs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 026   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 027   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 028   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Dn3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 030   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 031   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 032   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
@ 033   ----------------------------------------
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 034   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 035   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   
	.byte	W12
@ 036   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 037   ----------------------------------------
	.byte	W24
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 038   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 039   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	W24
@ 040   ----------------------------------------
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 041   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 042   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   
	.byte	W12
@ 044   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 045   ----------------------------------------
	.byte	W24
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 046   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 047   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	W24
@ 048   ----------------------------------------
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 049   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 050   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 051   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 052   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 053   ----------------------------------------
	.byte		        Fs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 054   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 055   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 056   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 057   ----------------------------------------
	.byte		        Fs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 058   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 059   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 060   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 061   ----------------------------------------
	.byte		        Dn3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 062   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 063   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 064   ----------------------------------------
	.byte		N96   , Fn3 
	.byte	W96
@ 065   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte	W96
@ 066   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 067   ----------------------------------------
	.byte		N96   , En3 
	.byte	W96
@ 068   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte	W24
@ 069   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte	W96
@ 070   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 071   ----------------------------------------
	.byte		N72   , En3 
	.byte	W72
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 072   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
@ 073   ----------------------------------------
	.byte		N84   , Bn2 
	.byte	W84
	.byte		N60   
	.byte	W12
@ 074   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 075   ----------------------------------------
	.byte		N48   , Cs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 076   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N36   , Cs3 
	.byte	W36
@ 077   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 078   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 079   ----------------------------------------
	.byte		N96   , Cs3 
	.byte	W96
@ 080   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 081   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 082   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N36   , Fs3 
	.byte	W36
@ 083   ----------------------------------------
	.byte		N48   , En3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 084   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 085   ----------------------------------------
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 086   ----------------------------------------
	.byte		N12   , En3 
	.byte	W12
	.byte		N36   , Bn2 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 087   ----------------------------------------
	.byte		N96   , Cs3 
	.byte	W96
@ 088   ----------------------------------------
	.byte		N12   , En3 
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 089   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 090   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 091   ----------------------------------------
	.byte		N48   , Dn3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 092   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W36
@ 093   ----------------------------------------
	.byte		N48   , Cn3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 094   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 095   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 096   ----------------------------------------
	.byte		        Cn3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 097   ----------------------------------------
	.byte		N96   , Bn2 
	.byte	W96
@ 098   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_time_3:
	.byte		VOL   , 127*mus_time_mvl/mxv
	.byte	KEYSH , mus_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 25
	.byte	W96
@ 001   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 , v092
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 002   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 003   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 005   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 006   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	W24
@ 008   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 009   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 010   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 011   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 013   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 014   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 015   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	W24
@ 016   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 017   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 018   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 019   ----------------------------------------
	.byte		        Gs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 020   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 021   ----------------------------------------
	.byte		        An3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 022   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 023   ----------------------------------------
	.byte		        Gs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 024   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 025   ----------------------------------------
	.byte		        An3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 026   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 027   ----------------------------------------
	.byte		        Gs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 028   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Fs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 030   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 031   ----------------------------------------
	.byte		        Gs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 032   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	W36
@ 033   ----------------------------------------
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 034   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 035   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 037   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 038   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 039   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	W24
@ 040   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 041   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 042   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 043   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 045   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N36   
	.byte	W12
@ 046   ----------------------------------------
	.byte	W24
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 047   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	W24
@ 048   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 049   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 050   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 051   ----------------------------------------
	.byte		        Gs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 052   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 053   ----------------------------------------
	.byte		        An3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 054   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 055   ----------------------------------------
	.byte		        Gs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 056   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 057   ----------------------------------------
	.byte		        An3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 058   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 059   ----------------------------------------
	.byte		        Gs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 060   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 061   ----------------------------------------
	.byte		        Fs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 062   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 063   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 064   ----------------------------------------
	.byte		N96   , An3 
	.byte	W96
@ 065   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W96
@ 066   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 067   ----------------------------------------
	.byte		N96   , Gn3 
	.byte	W96
@ 068   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte	W24
@ 069   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W96
@ 070   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 071   ----------------------------------------
	.byte		N72   , An3 
	.byte	W72
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 072   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
@ 073   ----------------------------------------
	.byte		N84   , Dn3 
	.byte	W84
	.byte		N60   
	.byte	W12
@ 074   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 075   ----------------------------------------
	.byte		N48   , En3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 076   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N36   
	.byte	W36
@ 077   ----------------------------------------
	.byte		N48   , Dn3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 078   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 079   ----------------------------------------
	.byte		N96   , En3 
	.byte	W96
@ 080   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 081   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte	W96
@ 082   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   
	.byte	W36
@ 083   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 084   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 085   ----------------------------------------
	.byte		N48   , Gn3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 086   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N36   , En3 
	.byte	W36
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   , En3 
	.byte	W36
@ 087   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 088   ----------------------------------------
	.byte		N12   , An3 
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 089   ----------------------------------------
	.byte		N48   , Gn3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 090   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , An3 
	.byte	W36
@ 091   ----------------------------------------
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 092   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Fs3 
	.byte	W36
@ 093   ----------------------------------------
	.byte		N48   , En3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 094   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 095   ----------------------------------------
	.byte		N48   , Dn3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 096   ----------------------------------------
	.byte		        Fn3 
	.byte	W48
	.byte		        Ds3 
	.byte	W48
@ 097   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 098   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_time_4:
	.byte		VOL   , 127*mus_time_mvl/mxv
	.byte	KEYSH , mus_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte	W96
@ 001   ----------------------------------------
	.byte		N72   , Fs0 , v092
	.byte	W72
	.byte		N24   , En0 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N48   , Fs0 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	W12
	.byte		        Gs0 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N24   , An0 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
@ 004   ----------------------------------------
	.byte		N24   , An0 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs0 
	.byte	W24
@ 005   ----------------------------------------
	.byte		N48   , En0 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		        Dn0 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N24   , En0 
	.byte	W24
	.byte	W12
	.byte		N12   , Dn0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 007   ----------------------------------------
	.byte		N36   , Fs0 
	.byte	W36
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N48   , Fs0 
	.byte	W48
	.byte		N12   , En0 
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte	W12
	.byte		        En0 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N72   , Fs0 
	.byte	W72
	.byte		N24   , En0 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N48   , Fs0 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	W12
	.byte		        Gs0 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N24   , An0 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
@ 012   ----------------------------------------
	.byte		N24   , An0 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs0 
	.byte	W24
@ 013   ----------------------------------------
	.byte		N48   , En0 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		        Dn0 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N24   , En0 
	.byte	W24
	.byte	W12
	.byte		N12   , Dn0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 015   ----------------------------------------
	.byte		N36   , Fs0 
	.byte	W36
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N48   , Fs0 
	.byte	W48
	.byte	W48
@ 017   ----------------------------------------
	.byte		N96   , Dn1 
	.byte	W96
@ 018   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 019   ----------------------------------------
	.byte		N96   , An0 
	.byte	W96
@ 020   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N48   
	.byte	W48
	.byte		N24   , En1 
	.byte	W24
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
	.byte	W72
	.byte		N18   , Gn1 
	.byte	W18
	.byte		N06   , Fs1 
	.byte	W06
@ 031   ----------------------------------------
	.byte		N48   , En1 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 032   ----------------------------------------
	.byte	W72
	.byte		N24   , Bn1 
	.byte	W24
@ 033   ----------------------------------------
	.byte		N72   , Fs0 
	.byte	W72
	.byte		N24   , En0 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N48   , Fs0 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	W12
	.byte		        Gs0 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N24   , An0 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
@ 036   ----------------------------------------
	.byte		N24   , An0 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs0 
	.byte	W24
@ 037   ----------------------------------------
	.byte		N48   , En0 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		        Dn0 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N24   , En0 
	.byte	W24
	.byte	W12
	.byte		N12   , Dn0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 039   ----------------------------------------
	.byte		N36   , Fs0 
	.byte	W36
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N48   , Fs0 
	.byte	W48
	.byte		N12   , En0 
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte	W12
	.byte		        En0 
	.byte	W12
@ 041   ----------------------------------------
	.byte		N72   , Fs0 
	.byte	W72
	.byte		N24   , En0 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N48   , Fs0 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	W12
	.byte		        Gs0 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N24   , An0 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
@ 044   ----------------------------------------
	.byte		N24   , An0 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs0 
	.byte	W24
@ 045   ----------------------------------------
	.byte		N48   , En0 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		        Dn0 
	.byte	W12
@ 046   ----------------------------------------
	.byte		N24   , En0 
	.byte	W24
	.byte	W12
	.byte		N12   , Dn0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 047   ----------------------------------------
	.byte		N36   , Fs0 
	.byte	W36
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs0 
	.byte	W12
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 048   ----------------------------------------
	.byte		N48   , Fs0 
	.byte	W48
	.byte	W48
@ 049   ----------------------------------------
	.byte		N96   , Dn1 
	.byte	W96
@ 050   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 051   ----------------------------------------
	.byte		N96   , An0 
	.byte	W96
@ 052   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N48   
	.byte	W48
	.byte		N24   , En1 
	.byte	W24
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
	.byte		N48   , An3 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte		TIE   , Dn4 
	.byte	W96
@ 066   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 067   ----------------------------------------
	.byte	W84
	.byte		N12   , Gn1 
	.byte	W12
@ 068   ----------------------------------------
	.byte		N36   , An1 
	.byte	W36
	.byte		        Bn1 
	.byte	W36
	.byte		N24   , An1 
	.byte	W24
@ 069   ----------------------------------------
	.byte	W48
	.byte		N48   , Bn1 
	.byte	W48
@ 070   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte		N84   , Fs3 
	.byte	W84
	.byte		N60   
	.byte	W12
@ 074   ----------------------------------------
	.byte	W48
	.byte	W48
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 078   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W36
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W96
@ 082   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte		N96   , Gn1 
	.byte	W96
@ 090   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_time_5:
	.byte		VOL   , 127*mus_time_mvl/mxv
	.byte	KEYSH , mus_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte	W96
@ 001   ----------------------------------------
	.byte		N72   , Fs1 , v092
	.byte	W72
	.byte		N24   , En1 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N48   , Fs1 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
@ 004   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
@ 005   ----------------------------------------
	.byte		N48   , En1 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		        Dn1 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N24   , En1 
	.byte	W24
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 007   ----------------------------------------
	.byte		N36   , Fs1 
	.byte	W36
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	W24
@ 008   ----------------------------------------
	.byte	W48
	.byte		        En1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N72   , Fs1 
	.byte	W72
	.byte		N24   , En1 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N48   , Fs1 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
@ 012   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
@ 013   ----------------------------------------
	.byte		N48   , En1 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		        Dn1 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N24   , En1 
	.byte	W24
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 015   ----------------------------------------
	.byte		N36   , Fs1 
	.byte	W36
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	W24
@ 016   ----------------------------------------
	.byte	W48
	.byte		        En1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N96   , An1 
	.byte	W96
@ 018   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 019   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 020   ----------------------------------------
	.byte		N72   
	.byte	W72
	.byte	W24
@ 021   ----------------------------------------
	.byte		N96   , Dn1 
	.byte	W96
@ 022   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 023   ----------------------------------------
	.byte		N96   , An0 
	.byte	W96
@ 024   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 025   ----------------------------------------
	.byte		N96   , Dn1 
	.byte	W96
@ 026   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N96   , Cs1 
	.byte	W96
@ 028   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 029   ----------------------------------------
	.byte		N96   , Bn0 
	.byte	W96
@ 030   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N48   
	.byte	W48
	.byte		N18   , Gn0 
	.byte	W18
	.byte		N06   , Fs0 
	.byte	W06
@ 031   ----------------------------------------
	.byte		N48   , En0 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 032   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs0 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N24   , En1 
	.byte	W24
@ 033   ----------------------------------------
	.byte		N72   , Fs1 
	.byte	W72
	.byte		N24   , En1 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N48   , Fs1 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
@ 036   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
@ 037   ----------------------------------------
	.byte		N48   , En1 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		        Dn1 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N24   , En1 
	.byte	W24
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 039   ----------------------------------------
	.byte		N36   , Fs1 
	.byte	W36
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	W24
@ 040   ----------------------------------------
	.byte	W48
	.byte		        En1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 041   ----------------------------------------
	.byte		N72   , Fs1 
	.byte	W72
	.byte		N24   , En1 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N48   , Fs1 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
@ 044   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
@ 045   ----------------------------------------
	.byte		N48   , En1 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		        Dn1 
	.byte	W12
@ 046   ----------------------------------------
	.byte		N24   , En1 
	.byte	W24
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
@ 047   ----------------------------------------
	.byte		N36   , Fs1 
	.byte	W36
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	W24
@ 048   ----------------------------------------
	.byte	W48
	.byte		        En1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 049   ----------------------------------------
	.byte		N96   , An1 
	.byte	W96
@ 050   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 051   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 052   ----------------------------------------
	.byte		N72   
	.byte	W72
	.byte	W24
@ 053   ----------------------------------------
	.byte		N96   , Dn1 
	.byte	W96
@ 054   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 055   ----------------------------------------
	.byte		N96   , An0 
	.byte	W96
@ 056   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 057   ----------------------------------------
	.byte		N96   , Dn1 
	.byte	W96
@ 058   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
@ 059   ----------------------------------------
	.byte		N96   , Cs1 
	.byte	W96
@ 060   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 061   ----------------------------------------
	.byte		N96   , Bn0 
	.byte	W96
@ 062   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 063   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 064   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 065   ----------------------------------------
	.byte		TIE   , En0 
	.byte	W96
@ 066   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N72   
	.byte	W72
@ 067   ----------------------------------------
	.byte		N96   , An0 
	.byte	W96
@ 068   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 069   ----------------------------------------
	.byte		N96   , En0 
	.byte	W96
@ 070   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 071   ----------------------------------------
	.byte		N96   , An0 
	.byte	W96
@ 072   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 073   ----------------------------------------
	.byte		N96   , En0 
	.byte	W96
@ 074   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N24   , Gn0 
	.byte	W24
	.byte		N12   , En0 
	.byte	W12
@ 075   ----------------------------------------
	.byte		N96   , An0 
	.byte	W96
@ 076   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 077   ----------------------------------------
	.byte		N96   , En0 
	.byte	W96
@ 078   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N24   , Gn0 
	.byte	W24
	.byte		N12   , En0 
	.byte	W12
@ 079   ----------------------------------------
	.byte		N96   , An0 
	.byte	W96
@ 080   ----------------------------------------
	.byte		N48   , Cs0 
	.byte	W48
	.byte		N24   , Dn0 
	.byte	W24
	.byte		        Ds0 
	.byte	W24
@ 081   ----------------------------------------
	.byte		N96   , En0 
	.byte	W96
@ 082   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 083   ----------------------------------------
	.byte		N96   , An0 
	.byte	W96
@ 084   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N36   , Bn0 
	.byte	W36
@ 085   ----------------------------------------
	.byte		N96   , En0 
	.byte	W96
@ 086   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 087   ----------------------------------------
	.byte		N48   , An0 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 088   ----------------------------------------
	.byte		N12   , An1 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N24   , Cs1 
	.byte	W24
@ 089   ----------------------------------------
	.byte		N96   , Cn1 
	.byte	W96
@ 090   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N36   , Cn1 
	.byte	W36
@ 091   ----------------------------------------
	.byte		N96   , Bn0 
	.byte	W96
@ 092   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N36   , Bn0 
	.byte	W36
@ 093   ----------------------------------------
	.byte		N96   , Fn1 
	.byte	W96
@ 094   ----------------------------------------
	.byte		N24   , Fn0 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , An0 
	.byte	W12
	.byte		N36   , Cn1 
	.byte	W36
@ 095   ----------------------------------------
	.byte		N96   , Gn0 
	.byte	W96
@ 096   ----------------------------------------
	.byte		N48   , Dn0 
	.byte	W48
	.byte		        Ds0 
	.byte	W48
@ 097   ----------------------------------------
	.byte		N96   , BnM1
	.byte	W96
@ 098   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_time_6:
	.byte		VOL   , 127*mus_time_mvl/mxv
	.byte	KEYSH , mus_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 41
	.byte	W96
@ 001   ----------------------------------------
	.byte		N12   , Fs4 , v092
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N36   , En4 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W48
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N36   , En4 
	.byte	W36
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N48   , En4 
	.byte	W12
@ 006   ----------------------------------------
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N18   , Fs4 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N24   , Fs4 
	.byte	W24
	.byte	W60
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N36   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N24   , En4 
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W48
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N18   , Fs4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W06
	.byte		N06   , En4 
	.byte	W06
	.byte		N24   , Fs4 
	.byte	W24
	.byte	W60
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N24   , Dn4 
	.byte	W24
@ 019   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte	W48
@ 021   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W24
	.byte		N12   
	.byte	W12
@ 023   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W12
@ 024   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	W60
@ 025   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 026   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte	W36
@ 027   ----------------------------------------
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N24   , Dn4 
	.byte	W24
@ 029   ----------------------------------------
	.byte		        Bn3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W36
	.byte	W24
@ 031   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W12
@ 032   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 033   ----------------------------------------
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N06   , En4 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W12
@ 034   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N36   , En4 
	.byte	W12
@ 035   ----------------------------------------
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W48
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N18   , Fs4 
	.byte	W12
@ 039   ----------------------------------------
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N36   , Fs4 
	.byte	W36
	.byte	W48
@ 040   ----------------------------------------
	.byte	W84
	.byte		N12   , En4 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N36   , En4 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W48
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
@ 046   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W24
	.byte	W72
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 050   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte	W12
@ 051   ----------------------------------------
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W12
@ 052   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte	W48
@ 053   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W12
@ 054   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W24
	.byte		N12   
	.byte	W12
@ 055   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N24   , Dn4 
	.byte	W24
@ 056   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte	W48
@ 057   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 058   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W12
@ 059   ----------------------------------------
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 060   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte	W24
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
@ 062   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte	W24
@ 063   ----------------------------------------
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 064   ----------------------------------------
	.byte		        Cn4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N36   , Cn4 
	.byte	W36
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs1 
	.byte	W48
@ 070   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W48
	.byte		N24   , En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 074   ----------------------------------------
	.byte		        Bn3 
	.byte	W24
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W24
	.byte	W48
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
@ 079   ----------------------------------------
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N30   , An3 
	.byte	W30
	.byte	W48
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W12
@ 082   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
@ 083   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W72
@ 084   ----------------------------------------
	.byte	W84
	.byte		        Bn3 
	.byte	W12
@ 085   ----------------------------------------
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W12
@ 086   ----------------------------------------
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N12   , En4 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W12
@ 087   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W24
	.byte	W48
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte		        Cn4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
@ 090   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte	W24
	.byte		N12   
	.byte	W12
@ 091   ----------------------------------------
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W12
@ 092   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte	W48
@ 093   ----------------------------------------
	.byte		        An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Cn4 
	.byte	W36
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
@ 094   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte	W36
	.byte		N12   
	.byte	W12
@ 095   ----------------------------------------
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N24   
	.byte	W24
@ 096   ----------------------------------------
	.byte		        An3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 097   ----------------------------------------
	.byte		N96   , Fs3 
	.byte	W96
@ 098   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_time_7:
	.byte		VOL   , 127*mus_time_mvl/mxv
	.byte	KEYSH , mus_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		        0
	.byte		        0
	.byte		N24   , Bn0 , v092
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte		N12   , Gs1 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 002   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte		N12   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 006   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 007   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 008   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte		N12   , Gs1 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 010   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 011   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 012   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte		N12   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 014   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 015   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 016   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte		N12   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N24   , Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 018   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 019   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 020   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 021   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 022   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 024   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 025   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 026   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 027   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 028   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 029   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 030   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 031   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 032   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   
	.byte		N24   , En1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 033   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 034   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 035   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 036   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte		N12   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 038   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 039   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 040   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte		N12   , Gs1 
	.byte	W12
@ 041   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 042   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 043   ----------------------------------------
	.byte		        As0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 044   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte		N12   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte	W12
@ 045   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 046   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 047   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 048   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte		N12   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte	W12
@ 049   ----------------------------------------
	.byte		N24   , Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 050   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 051   ----------------------------------------
	.byte		        As0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 052   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 053   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 054   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 055   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 056   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 057   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 058   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 059   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 060   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 061   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 062   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 063   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	W24
@ 064   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 065   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 066   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 067   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 068   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 069   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 070   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 071   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 072   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
@ 073   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 074   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte	W12
	.byte	W24
@ 075   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 076   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 077   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 078   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte	W12
	.byte	W24
@ 079   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 080   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 081   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 082   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte	W12
	.byte	W24
@ 083   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 084   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte	W12
	.byte	W24
@ 085   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 086   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N12   , Bn0 
	.byte		N12   , En1 
	.byte	W12
	.byte	W24
@ 087   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W24
@ 088   ----------------------------------------
	.byte		N12   , Bn0 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , Gs1 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , En1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N24   , Bn0 
	.byte	W24
@ 089   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_time:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_time_pri	@ Priority
	.byte	mus_time_rev	@ Reverb.

	.word	mus_time_grp

	.word	mus_time_1
	.word	mus_time_2
	.word	mus_time_3
	.word	mus_time_4
	.word	mus_time_5
	.word	mus_time_6
	.word	mus_time_7

	.end
