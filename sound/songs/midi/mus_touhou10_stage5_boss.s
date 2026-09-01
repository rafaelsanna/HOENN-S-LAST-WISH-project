	.include "MPlayDef.s"

	.equ	mus_touhou10_stage5_boss_grp, voicegroup_ancient_groover
	.equ	mus_touhou10_stage5_boss_pri, 0
	.equ	mus_touhou10_stage5_boss_rev, reverb_set+50
	.equ	mus_touhou10_stage5_boss_mvl, 100
	.equ	mus_touhou10_stage5_boss_key, 0
	.equ	mus_touhou10_stage5_boss_tbs, 1
	.equ	mus_touhou10_stage5_boss_exg, 1
	.equ	mus_touhou10_stage5_boss_cmp, 1

	.section .rodata
	.global	mus_touhou10_stage5_boss
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_touhou10_stage5_boss_1:
	.byte	KEYSH , mus_touhou10_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 165*mus_touhou10_stage5_boss_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou10_stage5_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte	W96
@ 001   ----------------------------------------
	.byte		N12   , Cs4 , v068
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
@ 002   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 003   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
@ 004   ----------------------------------------
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 008   ----------------------------------------
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
@ 010   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 011   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
@ 012   ----------------------------------------
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 013   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 016   ----------------------------------------
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 017   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
@ 018   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 019   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
@ 020   ----------------------------------------
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
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
	.byte		N42   , En3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte		N48   , En4 
	.byte	W48
@ 034   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N36   , Ds3 
	.byte		N36   , Fs3 
	.byte	W36
	.byte	W12
@ 035   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 036   ----------------------------------------
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 037   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N48   , En4 
	.byte		N48   , Gs4 
	.byte	W48
@ 038   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 039   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte	W06
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N42   , En3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N36   , Cs4 
	.byte		N36   , En4 
	.byte	W36
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , En4 
	.byte	W06
@ 042   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N24   , Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Fs3 
	.byte	W24
@ 043   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte	W06
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 044   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 045   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N36   , En4 
	.byte		N36   , Gs4 
	.byte	W36
	.byte	W12
@ 046   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 048   ----------------------------------------
	.byte		N18   , Gs4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N18   
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   
	.byte		N12   , Gs5 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 049   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
@ 050   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 051   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
@ 052   ----------------------------------------
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
@ 054   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 056   ----------------------------------------
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 057   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
@ 058   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 059   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
@ 060   ----------------------------------------
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
@ 062   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 064   ----------------------------------------
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 065   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
@ 066   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 067   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
@ 068   ----------------------------------------
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
@ 070   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 072   ----------------------------------------
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
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
	.byte		N42   , En3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte		N48   , En4 
	.byte	W48
@ 082   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N36   , Ds3 
	.byte		N36   , Fs3 
	.byte	W36
	.byte	W12
@ 083   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 084   ----------------------------------------
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 085   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N48   , En4 
	.byte		N48   , Gs4 
	.byte	W48
@ 086   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 087   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 088   ----------------------------------------
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte	W06
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
@ 089   ----------------------------------------
	.byte		N42   , En3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N36   , Cs4 
	.byte		N36   , En4 
	.byte	W36
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , En4 
	.byte	W06
@ 090   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N24   , Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Fs3 
	.byte	W24
@ 091   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte	W06
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 092   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 093   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N36   , En4 
	.byte		N36   , Gs4 
	.byte	W36
	.byte	W12
@ 094   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 095   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 096   ----------------------------------------
	.byte		N18   , Gs4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N18   
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   
	.byte		N12   , Gs5 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 097   ----------------------------------------
	.byte		N42   , Cs3 
	.byte		N42   , Fn3 
	.byte	W42
	.byte		N06   , Gs3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N48   , As3 
	.byte		N48   , Cs4 
	.byte	W48
@ 098   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N36   , Cn3 
	.byte		N36   , Ds3 
	.byte	W36
	.byte	W12
@ 099   ----------------------------------------
	.byte		N42   , Cn3 
	.byte		N42   , Fn3 
	.byte	W42
	.byte		N06   , As3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N36   , Cn4 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N06   , As3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
@ 100   ----------------------------------------
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N36   , Fn3 
	.byte		N36   , As3 
	.byte	W36
	.byte	W12
@ 101   ----------------------------------------
	.byte		N42   , Fn3 
	.byte		N42   , As3 
	.byte	W42
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte		N48   , Fn4 
	.byte	W48
@ 102   ----------------------------------------
	.byte		N24   , Cn4 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Ds4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W12
@ 103   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Cn4 
	.byte		N12   , Ds4 
	.byte	W12
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
@ 104   ----------------------------------------
	.byte		N36   , Cn4 
	.byte		N36   , Ds4 
	.byte	W36
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Cn4 
	.byte	W24
@ 105   ----------------------------------------
	.byte		N42   , Cs3 
	.byte		N42   , Fn3 
	.byte	W42
	.byte		N06   , Gs3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N36   , As3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N06   , Gs3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Cs4 
	.byte	W06
@ 106   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Fn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , As3 
	.byte	W06
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Ds3 
	.byte	W24
@ 107   ----------------------------------------
	.byte		N42   , Cs3 
	.byte		N42   , Fn3 
	.byte	W42
	.byte	W06
	.byte		N06   , As3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N30   , Cn4 
	.byte		N30   , Ds4 
	.byte	W30
	.byte		N06   , As3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
@ 108   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N12   , As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N18   , Gs3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N36   , Fn3 
	.byte		N36   , As3 
	.byte	W36
	.byte	W12
@ 109   ----------------------------------------
	.byte		N42   , Fn3 
	.byte		N42   , As3 
	.byte	W42
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N36   , Cs4 
	.byte		N36   , Fn4 
	.byte	W36
	.byte	W12
@ 110   ----------------------------------------
	.byte		N24   , Cn4 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Ds4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W12
@ 111   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Cn4 
	.byte		N12   , Ds4 
	.byte	W12
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
@ 112   ----------------------------------------
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N18   
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   
	.byte		N12   , Fn5 
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 113   ----------------------------------------
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N18   , Fn3 
	.byte	W18
@ 114   ----------------------------------------
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 115   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N18   , Ds3 
	.byte	W18
@ 116   ----------------------------------------
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 117   ----------------------------------------
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
@ 118   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 119   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 120   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 121   ----------------------------------------
	.byte	W48
@ 122   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_touhou10_stage5_boss_2:
	.byte	KEYSH , mus_touhou10_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou10_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+8
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
	.byte		N48   , Cs4 , v127
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		N12   , Gs4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N96   , Gs3 
	.byte	W24
@ 012   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 013   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		N12   , Cs4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N18   , Ds4 
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N12   , Fs4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N96   , Ds4 
	.byte	W96
@ 017   ----------------------------------------
	.byte		N48   , Cs4 
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		N12   , Gs4 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N96   , Gs3 
	.byte	W24
@ 020   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 021   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		N12   , Cs4 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N18   , Ds4 
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N12   , Fs4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N48   , An3 
	.byte		N48   , An4 
	.byte	W48
	.byte		N18   , An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		        Bn3 
	.byte		N18   , Bn4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		N18   , Fs3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N18   , An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N60   , An3 
	.byte		N60   , An4 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W48
	.byte		N18   , An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		        Bn3 
	.byte		N18   , Bn4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N48   , Cs4 
	.byte		N48   , Cs5 
	.byte	W48
	.byte		N18   , Cs4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , En4 
	.byte		N12   , En5 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N24   , En4 
	.byte		N24   , En5 
	.byte	W24
	.byte		        Ds4 
	.byte		N24   , Ds5 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        En4 
	.byte		N24   , En5 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N18   , Fs4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		        Fs4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N24   , Gs4 
	.byte		N24   , Gs5 
	.byte	W24
	.byte		N03   
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
@ 033   ----------------------------------------
	.byte		N42   , En3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte		N48   , En4 
	.byte	W48
@ 034   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N36   , Ds3 
	.byte		N36   , Fs3 
	.byte	W36
	.byte	W12
@ 035   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 036   ----------------------------------------
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 037   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N48   , En4 
	.byte		N48   , Gs4 
	.byte	W48
@ 038   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 039   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte	W06
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N42   , En3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N36   , Cs4 
	.byte		N36   , En4 
	.byte	W36
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , En4 
	.byte	W06
@ 042   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N24   , Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Fs3 
	.byte	W24
@ 043   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte	W06
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 044   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 045   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N36   , En4 
	.byte		N36   , Gs4 
	.byte	W36
	.byte	W12
@ 046   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 048   ----------------------------------------
	.byte		N18   , Gs4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N18   
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   
	.byte		N12   , Gs5 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
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
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 057   ----------------------------------------
	.byte		N48   , Cs4 
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
@ 058   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		N12   , Gs4 
	.byte	W12
@ 059   ----------------------------------------
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N96   , Gs3 
	.byte	W24
@ 060   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 061   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		N12   , Cs4 
	.byte	W12
@ 062   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
@ 063   ----------------------------------------
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N18   , Ds4 
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N12   , Fs4 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N96   , Ds4 
	.byte	W96
@ 065   ----------------------------------------
	.byte		N48   , Cs4 
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
@ 066   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		N12   , Gs4 
	.byte	W12
@ 067   ----------------------------------------
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N96   , Gs3 
	.byte	W24
@ 068   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 069   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		N12   , Cs4 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
@ 071   ----------------------------------------
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N18   , Ds4 
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N12   , Fs4 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 073   ----------------------------------------
	.byte		N48   , An3 
	.byte		N48   , An4 
	.byte	W48
	.byte		N18   , An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		        Bn3 
	.byte		N18   , Bn4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 074   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W24
@ 075   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		N18   , Fs3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
@ 076   ----------------------------------------
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N18   , An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N60   , An3 
	.byte		N60   , An4 
	.byte	W12
@ 077   ----------------------------------------
	.byte	W48
	.byte		N18   , An3 
	.byte		N18   , An4 
	.byte	W18
	.byte		        Bn3 
	.byte		N18   , Bn4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 078   ----------------------------------------
	.byte		N48   , Cs4 
	.byte		N48   , Cs5 
	.byte	W48
	.byte		N18   , Cs4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , En4 
	.byte		N12   , En5 
	.byte	W12
@ 079   ----------------------------------------
	.byte		N24   , En4 
	.byte		N24   , En5 
	.byte	W24
	.byte		        Ds4 
	.byte		N24   , Ds5 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        En4 
	.byte		N24   , En5 
	.byte	W24
@ 080   ----------------------------------------
	.byte		N18   , Fs4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		        Fs4 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N24   , Gs4 
	.byte		N24   , Gs5 
	.byte	W24
	.byte		N03   
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
@ 081   ----------------------------------------
	.byte		N42   , En3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte		N48   , En4 
	.byte	W48
@ 082   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N36   , Ds3 
	.byte		N36   , Fs3 
	.byte	W36
	.byte	W12
@ 083   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 084   ----------------------------------------
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 085   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N48   , En4 
	.byte		N48   , Gs4 
	.byte	W48
@ 086   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 087   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 088   ----------------------------------------
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte	W06
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
@ 089   ----------------------------------------
	.byte		N42   , En3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N36   , Cs4 
	.byte		N36   , En4 
	.byte	W36
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , En4 
	.byte	W06
@ 090   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N24   , Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Fs3 
	.byte	W24
@ 091   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte	W06
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 092   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 093   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N36   , En4 
	.byte		N36   , Gs4 
	.byte	W36
	.byte	W12
@ 094   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 095   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 096   ----------------------------------------
	.byte		N18   , Gs4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N18   
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   
	.byte		N12   , Gs5 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 097   ----------------------------------------
	.byte		N42   , Cs3 
	.byte		N42   , Fn3 
	.byte	W42
	.byte		N06   , Gs3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N48   , As3 
	.byte		N48   , Cs4 
	.byte	W48
@ 098   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N36   , Cn3 
	.byte		N36   , Ds3 
	.byte	W36
	.byte	W12
@ 099   ----------------------------------------
	.byte		N42   , Cn3 
	.byte		N42   , Fn3 
	.byte	W42
	.byte		N06   , As3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N36   , Cn4 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N06   , As3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
@ 100   ----------------------------------------
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N36   , Fn3 
	.byte		N36   , As3 
	.byte	W36
	.byte	W12
@ 101   ----------------------------------------
	.byte		N42   , Fn3 
	.byte		N42   , As3 
	.byte	W42
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte		N48   , Fn4 
	.byte	W48
@ 102   ----------------------------------------
	.byte		N24   , Cn4 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Ds4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W12
@ 103   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Cn4 
	.byte		N12   , Ds4 
	.byte	W12
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
@ 104   ----------------------------------------
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 105   ----------------------------------------
	.byte		N24   , Cs3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N06   , As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 106   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N03   , Cn5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 107   ----------------------------------------
	.byte		N24   , Cs3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N24   , Cn4 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 108   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N03   , As3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N48   , As3 
	.byte		N48   , Cs4 
	.byte	W48
@ 109   ----------------------------------------
	.byte		        Fn3 
	.byte		N48   , As3 
	.byte	W48
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 110   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
@ 111   ----------------------------------------
	.byte		N18   , Fn3 
	.byte		N18   , As3 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , Fn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 112   ----------------------------------------
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
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
	.byte	W48
@ 122   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_touhou10_stage5_boss_3:
	.byte	KEYSH , mus_touhou10_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou10_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
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
mus_touhou10_stage5_boss_3_009:
	.byte		N96   , Cs2 , v068
	.byte		N96   , Gs2 
	.byte		N96   , Cs3 
	.byte	W96
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_009
@ 011   ----------------------------------------
mus_touhou10_stage5_boss_3_011:
	.byte		TIE   , Bn1 , v068
	.byte		TIE   , Fs2 
	.byte		TIE   , Bn2 
	.byte	W96
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
@ 013   ----------------------------------------
mus_touhou10_stage5_boss_3_013:
	.byte		N96   , An1 , v068
	.byte		N96   , En2 
	.byte		N96   , An2 
	.byte	W96
	.byte	PEND
@ 014   ----------------------------------------
mus_touhou10_stage5_boss_3_014:
	.byte		N96   , Bn1 , v068
	.byte		N96   , Fs2 
	.byte		N96   , Bn2 
	.byte	W96
	.byte	PEND
@ 015   ----------------------------------------
mus_touhou10_stage5_boss_3_015:
	.byte		TIE   , Cn2 , v068
	.byte		TIE   , Gs2 
	.byte		TIE   , Cn3 
	.byte	W96
	.byte	PEND
@ 016   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gs2 
	.byte		        Cn3 
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_009
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_011
@ 020   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_014
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_015
@ 024   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gs2 
	.byte		        Cn3 
@ 025   ----------------------------------------
	.byte		N96   , An2 , v068
	.byte		N96   , An3 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Gs2 
	.byte		N96   , Gs3 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Fs2 
	.byte		N96   , Fs3 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        En2 
	.byte		N96   , En3 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        An2 
	.byte		N96   , An3 
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Cs3 
	.byte		N96   , Cs4 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        En3 
	.byte		N96   , En4 
	.byte	W96
@ 032   ----------------------------------------
	.byte		N18   , Fs3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N48   , Gs3 
	.byte		N48   , Gs4 
	.byte	W48
@ 033   ----------------------------------------
	.byte		N96   , En2 
	.byte		N96   , Gs2 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Fs2 
	.byte		N96   , Bn2 
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 036   ----------------------------------------
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N48   , Gs2 
	.byte		N48   , Cs3 
	.byte	W48
@ 037   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 041   ----------------------------------------
	.byte		        En2 
	.byte		N96   , Gs2 
	.byte	W96
@ 042   ----------------------------------------
	.byte		        Fs2 
	.byte		N96   , Bn2 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 044   ----------------------------------------
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N48   , Gs2 
	.byte		N48   , Cs3 
	.byte	W48
@ 045   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_009
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_011
@ 052   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_013
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_014
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_015
@ 056   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gs2 
	.byte		        Cn3 
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_009
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_011
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_013
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_014
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_015
@ 064   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gs2 
	.byte		        Cn3 
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_009
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_009
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_011
@ 068   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_013
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_014
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_015
@ 072   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gs2 
	.byte		        Cn3 
@ 073   ----------------------------------------
	.byte		N96   , An2 , v068
	.byte		N96   , An3 
	.byte	W96
@ 074   ----------------------------------------
	.byte		        Gs2 
	.byte		N96   , Gs3 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        Fs2 
	.byte		N96   , Fs3 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        En2 
	.byte		N96   , En3 
	.byte	W96
@ 077   ----------------------------------------
	.byte		        An2 
	.byte		N96   , An3 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        Cs3 
	.byte		N96   , Cs4 
	.byte	W96
@ 079   ----------------------------------------
	.byte		        En3 
	.byte		N96   , En4 
	.byte	W96
@ 080   ----------------------------------------
	.byte		N18   , Fs3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N48   , Gs3 
	.byte		N48   , Gs4 
	.byte	W48
@ 081   ----------------------------------------
mus_touhou10_stage5_boss_3_081:
	.byte		N96   , En2 , v068
	.byte		N96   
	.byte		N96   , Gs2 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 082   ----------------------------------------
mus_touhou10_stage5_boss_3_082:
	.byte		N96   , Fs2 , v068
	.byte		N96   
	.byte		N96   , Bn2 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 083   ----------------------------------------
mus_touhou10_stage5_boss_3_083:
	.byte		N96   , Ds2 , v068
	.byte		N96   
	.byte		N96   , Gs2 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 084   ----------------------------------------
mus_touhou10_stage5_boss_3_084:
	.byte		N24   , En2 , v068
	.byte		N24   
	.byte		N24   , An2 
	.byte		N24   
	.byte	W24
	.byte	PEND
	.byte		        Fs2 
	.byte		N24   
	.byte		N24   , Bn2 
	.byte		N24   
	.byte	W24
	.byte		N48   , Gs2 
	.byte		N48   
	.byte		N48   , Cs3 
	.byte		N48   
	.byte	W48
@ 085   ----------------------------------------
mus_touhou10_stage5_boss_3_085:
	.byte		N96   , Cs2 , v068
	.byte		N96   
	.byte		N96   , Fs2 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_083
@ 087   ----------------------------------------
mus_touhou10_stage5_boss_3_087:
	.byte		N96   , En2 , v068
	.byte		N96   
	.byte		N96   , An2 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_083
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_081
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_082
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_083
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_084
	.byte		N24   , Fs2 , v068
	.byte		N24   
	.byte		N24   , Bn2 
	.byte		N24   
	.byte	W24
	.byte		N48   , Gs2 
	.byte		N48   
	.byte		N48   , Cs3 
	.byte		N48   
	.byte	W48
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_085
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_083
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_087
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_083
@ 097   ----------------------------------------
	.byte		N96   , Cs2 , v068
	.byte		N96   , Fn2 
	.byte	W96
@ 098   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 099   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 100   ----------------------------------------
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        Ds2 
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N48   , Fn2 
	.byte		N48   , As2 
	.byte	W48
@ 101   ----------------------------------------
	.byte		N96   , As1 
	.byte		N96   , Ds2 
	.byte	W96
@ 102   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 103   ----------------------------------------
	.byte		        Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 104   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Cs2 
	.byte		N96   , Fn2 
	.byte	W96
@ 106   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 107   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 108   ----------------------------------------
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        Ds2 
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N48   , Fn2 
	.byte		N48   , As2 
	.byte	W48
@ 109   ----------------------------------------
	.byte		N96   , As1 
	.byte		N96   , Ds2 
	.byte	W96
@ 110   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 111   ----------------------------------------
	.byte		        Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 112   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 113   ----------------------------------------
mus_touhou10_stage5_boss_3_113:
	.byte		N96   , As1 , v068
	.byte		N96   , Fn2 
	.byte		N96   , As2 
	.byte	W96
	.byte	PEND
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_3_113
@ 115   ----------------------------------------
	.byte		TIE   , Gs1 , v068
	.byte		TIE   , Ds2 
	.byte		TIE   , Gs2 
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		        Gs2 
@ 117   ----------------------------------------
	.byte		N96   , Fs1 
	.byte		N96   , Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 118   ----------------------------------------
	.byte		        Gs1 
	.byte		N96   , Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 119   ----------------------------------------
	.byte		TIE   , An1 
	.byte		TIE   , Fn2 
	.byte		TIE   , An2 
	.byte	W96
@ 120   ----------------------------------------
	.byte	W96
	.byte		EOT   , An1 
	.byte		        Fn2 
	.byte		        An2 
@ 121   ----------------------------------------
	.byte	W48
@ 122   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_touhou10_stage5_boss_4:
	.byte	KEYSH , mus_touhou10_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_touhou10_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte		N18   , Cs1 , v112
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 002   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 003   ----------------------------------------
	.byte		N18   , Bn0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 004   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 005   ----------------------------------------
	.byte		N18   , An0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 006   ----------------------------------------
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 007   ----------------------------------------
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 008   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 009   ----------------------------------------
	.byte		N18   , Cs1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 010   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 011   ----------------------------------------
	.byte		N18   , Bn0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 012   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 013   ----------------------------------------
	.byte		N18   , An0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 014   ----------------------------------------
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 015   ----------------------------------------
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 016   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 017   ----------------------------------------
	.byte		N18   , Cs1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 018   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 019   ----------------------------------------
	.byte		N18   , Bn0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 020   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 021   ----------------------------------------
	.byte		N18   , An0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 022   ----------------------------------------
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 023   ----------------------------------------
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 024   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 025   ----------------------------------------
	.byte		N36   , Fs1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 026   ----------------------------------------
	.byte		N36   , En1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 027   ----------------------------------------
	.byte		N36   , Dn1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 028   ----------------------------------------
	.byte		N36   , Bn0 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 029   ----------------------------------------
	.byte		N12   , An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 040   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 043   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 044   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
@ 045   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 046   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 049   ----------------------------------------
	.byte		N18   , Cs1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 050   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 051   ----------------------------------------
	.byte		N18   , Bn0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 052   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 053   ----------------------------------------
	.byte		N18   , An0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 054   ----------------------------------------
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 055   ----------------------------------------
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 056   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 057   ----------------------------------------
	.byte		N18   , Cs1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 058   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 059   ----------------------------------------
	.byte		N18   , Bn0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 060   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 061   ----------------------------------------
	.byte		N18   , An0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 062   ----------------------------------------
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 063   ----------------------------------------
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 064   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 065   ----------------------------------------
	.byte		N18   , Cs1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 066   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 067   ----------------------------------------
	.byte		N18   , Bn0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 068   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 069   ----------------------------------------
	.byte		N18   , An0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 070   ----------------------------------------
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 071   ----------------------------------------
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 072   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 073   ----------------------------------------
	.byte		N36   , Fs1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 074   ----------------------------------------
	.byte		N36   , En1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 075   ----------------------------------------
	.byte		N36   , Dn1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 076   ----------------------------------------
	.byte		N36   , Bn0 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 077   ----------------------------------------
	.byte		N12   , An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 078   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 079   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 080   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 081   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 082   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 083   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 084   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
@ 085   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 086   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 087   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 088   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 089   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 090   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 091   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 092   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
@ 093   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 094   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 095   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 096   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 097   ----------------------------------------
	.byte		N96   , Fn1 
	.byte	W96
@ 098   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 099   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 100   ----------------------------------------
	.byte		N24   , Fs1 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N48   , As1 
	.byte	W48
@ 101   ----------------------------------------
	.byte		N96   , Ds1 
	.byte	W96
@ 102   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 103   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 104   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 105   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 106   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 107   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 108   ----------------------------------------
	.byte		N24   , Fs1 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
@ 109   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 110   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 111   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 112   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 113   ----------------------------------------
	.byte		N18   , As0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 114   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 115   ----------------------------------------
	.byte		N18   , Gs0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 116   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 117   ----------------------------------------
	.byte		N18   , Fs0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 118   ----------------------------------------
	.byte		N18   , Ds1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 119   ----------------------------------------
	.byte		N18   , An0 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 120   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 121   ----------------------------------------
	.byte	W48
@ 122   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_touhou10_stage5_boss_5:
	.byte	KEYSH , mus_touhou10_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou10_stage5_boss_mvl/mxv
	.byte		PAN   , c_v-16
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
	.byte		N42   , En3 , v100
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte		N48   , En4 
	.byte	W48
@ 034   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N36   , Ds3 
	.byte		N36   , Fs3 
	.byte	W36
	.byte	W12
@ 035   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 036   ----------------------------------------
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 037   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N48   , En4 
	.byte		N48   , Gs4 
	.byte	W48
@ 038   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 039   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte	W06
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N42   , En3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N36   , Cs4 
	.byte		N36   , En4 
	.byte	W36
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , En4 
	.byte	W06
@ 042   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N24   , Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Fs3 
	.byte	W24
@ 043   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte	W06
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 044   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 045   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N36   , En4 
	.byte		N36   , Gs4 
	.byte	W36
	.byte	W12
@ 046   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 048   ----------------------------------------
	.byte		N18   , Gs4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N18   
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   
	.byte		N12   , Gs5 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
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
	.byte		N42   , En3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte		N48   , En4 
	.byte	W48
@ 082   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N36   , Ds3 
	.byte		N36   , Fs3 
	.byte	W36
	.byte	W12
@ 083   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 084   ----------------------------------------
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 085   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N48   , En4 
	.byte		N48   , Gs4 
	.byte	W48
@ 086   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 087   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 088   ----------------------------------------
	.byte		N36   , Ds4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte	W06
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Ds4 
	.byte	W24
@ 089   ----------------------------------------
	.byte		N42   , En3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N36   , Cs4 
	.byte		N36   , En4 
	.byte	W36
	.byte		N06   , Bn3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , En4 
	.byte	W06
@ 090   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N24   , Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Fs3 
	.byte	W24
@ 091   ----------------------------------------
	.byte		N42   , Ds3 
	.byte		N42   , Gs3 
	.byte	W42
	.byte	W06
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N06   , Cs4 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 092   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte	W12
@ 093   ----------------------------------------
	.byte		N42   , Gs3 
	.byte		N42   , Cs4 
	.byte	W42
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N36   , En4 
	.byte		N36   , Gs4 
	.byte	W36
	.byte	W12
@ 094   ----------------------------------------
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
@ 095   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W12
	.byte		N24   , Fs4 
	.byte		N24   , Bn4 
	.byte	W24
@ 096   ----------------------------------------
	.byte		N18   , Gs4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N18   
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   
	.byte		N12   , Gs5 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
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
	.byte		N42   , Cs3 
	.byte		N42   , Fn3 
	.byte	W42
	.byte		N06   , Gs3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N36   , As3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N06   , Gs3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Cs4 
	.byte	W06
@ 106   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Fn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , As3 
	.byte	W06
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Ds3 
	.byte	W24
@ 107   ----------------------------------------
	.byte		N42   , Cn3 
	.byte		N42   , Fn3 
	.byte	W42
	.byte	W06
	.byte		N06   , As3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N30   , Cn4 
	.byte		N30   , Ds4 
	.byte	W30
	.byte		N06   , As3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
@ 108   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N12   , As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N18   , Gs3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N36   , Fn3 
	.byte		N36   , As3 
	.byte	W36
	.byte	W12
@ 109   ----------------------------------------
	.byte		N42   , Fn3 
	.byte		N42   , As3 
	.byte	W42
	.byte		N06   , Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N36   , Cs4 
	.byte		N36   , Fn4 
	.byte	W36
	.byte	W12
@ 110   ----------------------------------------
	.byte		N24   , Cn4 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Ds4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W12
@ 111   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte		N12   , Cn4 
	.byte		N12   , Ds4 
	.byte	W12
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gs4 
	.byte	W24
@ 112   ----------------------------------------
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N18   
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   
	.byte		N12   , Fn5 
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
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
	.byte	W48
@ 122   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_touhou10_stage5_boss_6:
	.byte	KEYSH , mus_touhou10_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou10_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
mus_touhou10_stage5_boss_6_001:
	.byte		BEND  , c_v+0
	.byte		N96   , Cs1 , v092
	.byte		N96   , Gs1 
	.byte		N96   , Cs2 
	.byte	W96
	.byte	PEND
@ 002   ----------------------------------------
mus_touhou10_stage5_boss_6_002:
	.byte		N96   , Cs1 , v092
	.byte		N96   , Gs1 
	.byte		N96   , Cs2 
	.byte	W96
	.byte	PEND
@ 003   ----------------------------------------
mus_touhou10_stage5_boss_6_003:
	.byte		N96   , Bn0 , v092
	.byte		N96   , Gs1 
	.byte		N96   , Bn1 
	.byte	W96
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_003
@ 005   ----------------------------------------
mus_touhou10_stage5_boss_6_005:
	.byte		N96   , An0 , v092
	.byte		N96   , En1 
	.byte		N96   , An1 
	.byte	W96
	.byte	PEND
@ 006   ----------------------------------------
mus_touhou10_stage5_boss_6_006:
	.byte		N96   , Bn0 , v092
	.byte		N96   , Fs1 
	.byte		N96   , Bn1 
	.byte	W96
	.byte	PEND
@ 007   ----------------------------------------
mus_touhou10_stage5_boss_6_007:
	.byte		N96   , Gs0 , v092
	.byte		N96   , Ds1 
	.byte		N96   , Gs1 
	.byte	W96
	.byte	PEND
@ 008   ----------------------------------------
mus_touhou10_stage5_boss_6_008:
	.byte		N96   , Gs0 , v092
	.byte		N96   , Ds1 
	.byte		N96   , Gs1 
	.byte	W72
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_003
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_007
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_003
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_007
@ 025   ----------------------------------------
	.byte		N12   , Fs0 , v092
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		N12   
	.byte		N12   , En2 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		N12   
	.byte		N12   , En2 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		N12   
	.byte		N12   , An2 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N96   , En1 
	.byte		N96   , En2 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs2 
	.byte	W96
@ 032   ----------------------------------------
	.byte		N18   , Gs1 
	.byte		N18   , Gs2 
	.byte	W18
	.byte		        Gs1 
	.byte		N18   , Gs2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N48   , Gs1 
	.byte		N48   , Gs2 
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
@ 033   ----------------------------------------
mus_touhou10_stage5_boss_6_033:
	.byte		BEND  , c_v+0
	.byte		N96   , En1 , v092
	.byte		N96   , An1 
	.byte		N96   , En2 
	.byte	W96
	.byte	PEND
@ 034   ----------------------------------------
mus_touhou10_stage5_boss_6_034:
	.byte		N96   , Fs1 , v092
	.byte		N96   , Bn1 
	.byte		N96   , Fs2 
	.byte	W96
	.byte	PEND
@ 035   ----------------------------------------
mus_touhou10_stage5_boss_6_035:
	.byte		N96   , Ds1 , v092
	.byte		N96   , Gs1 
	.byte		N96   , Ds2 
	.byte	W96
	.byte	PEND
@ 036   ----------------------------------------
mus_touhou10_stage5_boss_6_036:
	.byte		N24   , An0 , v092
	.byte		N24   , En1 
	.byte		N24   , An1 
	.byte	W24
	.byte	PEND
	.byte		        Bn0 
	.byte		N24   , Fs1 
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N48   , Cs1 
	.byte		N48   , Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 037   ----------------------------------------
mus_touhou10_stage5_boss_6_037:
	.byte		N96   , Cs1 , v092
	.byte		N96   , Fs1 
	.byte		N96   , Cs2 
	.byte	W96
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_035
@ 039   ----------------------------------------
mus_touhou10_stage5_boss_6_039:
	.byte		N96   , En1 , v092
	.byte		N96   , An1 
	.byte		N96   , En2 
	.byte	W96
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_035
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_039
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_036
	.byte		N24   , Bn0 , v092
	.byte		N24   , Fs1 
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N48   , Cs1 
	.byte		N48   , Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_037
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_035
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_039
@ 048   ----------------------------------------
mus_touhou10_stage5_boss_6_048:
	.byte		N96   , Ds1 , v092
	.byte		N96   , Gs1 
	.byte		N96   , Ds2 
	.byte	W72
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
	.byte	PEND
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_003
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_003
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_007
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_002
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_003
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_006
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_007
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_007
@ 073   ----------------------------------------
	.byte		N12   , Fs0 , v092
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N12   , Fs1 
	.byte	W12
@ 074   ----------------------------------------
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		N12   
	.byte		N12   , En2 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
@ 075   ----------------------------------------
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N12   , Dn1 
	.byte	W12
@ 076   ----------------------------------------
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		N12   
	.byte		N12   , En2 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N12   , En1 
	.byte	W12
@ 077   ----------------------------------------
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		N12   
	.byte		N12   , An2 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An1 
	.byte	W12
@ 078   ----------------------------------------
	.byte		N96   , En1 
	.byte		N96   , En2 
	.byte	W96
@ 079   ----------------------------------------
	.byte		        Fs1 
	.byte		N96   , Fs2 
	.byte	W96
@ 080   ----------------------------------------
	.byte		N18   , Gs1 
	.byte		N18   , Gs2 
	.byte	W18
	.byte		        Gs1 
	.byte		N18   , Gs2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N48   , Gs1 
	.byte		N48   , Gs2 
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_033
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_034
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_035
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_036
	.byte		N24   , Bn0 , v092
	.byte		N24   , Fs1 
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N48   , Cs1 
	.byte		N48   , Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_037
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_035
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_039
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_035
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_039
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_034
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_036
	.byte		N24   , Bn0 , v092
	.byte		N24   , Fs1 
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N48   , Cs1 
	.byte		N48   , Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_037
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_035
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_039
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_048
@ 097   ----------------------------------------
	.byte		BEND  , c_v+0
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
	.byte		N06   , Cn1 , v092
	.byte		N06   , Fn1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn1 
	.byte	W06
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   , Cn1 
	.byte		N24   , Fn1 
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
@ 105   ----------------------------------------
	.byte		        c_v+0
	.byte		N96   , Cs1 
	.byte		N96   , Fs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_035
@ 107   ----------------------------------------
mus_touhou10_stage5_boss_6_107:
	.byte		N96   , Cn1 , v092
	.byte		N96   , Fn1 
	.byte		N96   , Cn2 
	.byte	W96
	.byte	PEND
@ 108   ----------------------------------------
	.byte		N24   , Fs0 
	.byte		N24   , Cs1 
	.byte		N24   , Fs1 
	.byte	W24
	.byte		        Gs0 
	.byte		N24   , Ds1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N48   , As0 
	.byte		N48   , Fn1 
	.byte		N48   , As1 
	.byte	W48
@ 109   ----------------------------------------
	.byte		N96   , As0 
	.byte		N96   , Ds1 
	.byte		N96   , As1 
	.byte	W96
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_107
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_037
@ 112   ----------------------------------------
	.byte		N96   , Cn1 , v092
	.byte		N96   , Fn1 
	.byte		N96   , Cn2 
	.byte	W72
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
@ 113   ----------------------------------------
	.byte		        c_v+0
	.byte		N96   , As0 
	.byte		N96   , Fn1 
	.byte		N96   , As1 
	.byte	W96
@ 114   ----------------------------------------
	.byte		        As0 
	.byte		N96   , Fn1 
	.byte		N96   , As1 
	.byte	W96
@ 115   ----------------------------------------
mus_touhou10_stage5_boss_6_115:
	.byte		N96   , Gs0 , v092
	.byte		N96   , Fn1 
	.byte		N96   , Gs1 
	.byte	W96
	.byte	PEND
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_115
@ 117   ----------------------------------------
	.byte		N96   , Fs0 , v092
	.byte		N96   , Cs1 
	.byte		N96   , Fs1 
	.byte	W96
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_007
@ 119   ----------------------------------------
mus_touhou10_stage5_boss_6_119:
	.byte		N96   , Fn0 , v092
	.byte		N96   , Cn1 
	.byte		N96   , Fn1 
	.byte	W96
	.byte	PEND
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_6_119
@ 121   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Fn1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn1 
	.byte	W06
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   , Cn1 
	.byte		N24   , Fn1 
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
@ 122   ----------------------------------------
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_touhou10_stage5_boss_7:
	.byte	KEYSH , mus_touhou10_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou10_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cs1 , v100
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Ds2 
	.byte	W03
	.byte	W09
	.byte		        Cs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 001   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Bn0 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 002   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 003   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 004   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 005   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 006   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 007   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 008   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cn2 
	.byte	W03
	.byte	W21
	.byte		        Bn0 
	.byte		N03   , Cn2 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
@ 009   ----------------------------------------
mus_touhou10_stage5_boss_7_009:
	.byte		N03   , Bn0 , v100
	.byte		N03   , Fs1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	PEND
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 010   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 011   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 012   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 014   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 015   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 016   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 018   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 019   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 020   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 022   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 023   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 024   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 025   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W32
	.byte	W01
	.byte		        Bn0 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 026   ----------------------------------------
	.byte		        Bn0 
	.byte	W03
	.byte	W24
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W21
@ 027   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W32
	.byte	W01
	.byte		        Bn0 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 028   ----------------------------------------
	.byte		        Bn0 
	.byte	W03
	.byte	W24
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W21
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 030   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 031   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 , v064
	.byte		N03   , Fs1 , v100
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v084
	.byte		N03   , As1 , v100
	.byte	W03
	.byte		        Dn1 , v088
	.byte	W03
	.byte		        Dn1 , v092
	.byte		N03   , Fs1 , v100
	.byte	W03
	.byte		        Dn1 
	.byte	W03
@ 032   ----------------------------------------
mus_touhou10_stage5_boss_7_032:
	.byte		N03   , Bn0 , v100
	.byte		N03   , Dn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	PEND
	.byte	W12
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W18
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 034   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
@ 036   ----------------------------------------
mus_touhou10_stage5_boss_7_036:
	.byte		N03   , Bn0 , v100
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	PEND
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 038   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 040   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 042   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_036
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 046   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 048   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
@ 049   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W21
	.byte		        Bn0 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 050   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 051   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 052   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 053   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 054   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 055   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 056   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cn2 
	.byte	W03
	.byte	W21
	.byte		        Bn0 
	.byte		N03   , Cn2 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 058   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 059   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 060   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 062   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 063   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 064   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 066   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 067   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 068   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 070   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 071   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 072   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 073   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W32
	.byte	W01
	.byte		        Bn0 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 074   ----------------------------------------
	.byte		        Bn0 
	.byte	W03
	.byte	W24
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W21
@ 075   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W32
	.byte	W01
	.byte		        Bn0 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 076   ----------------------------------------
	.byte		        Bn0 
	.byte	W03
	.byte	W24
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W21
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 078   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 079   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 , v064
	.byte		N03   , Fs1 , v100
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v084
	.byte		N03   , As1 , v100
	.byte	W03
	.byte		        Dn1 , v088
	.byte	W03
	.byte		        Dn1 , v092
	.byte		N03   , Fs1 , v100
	.byte	W03
	.byte		        Dn1 
	.byte	W03
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_032
	.byte	W12
	.byte		N03   , Bn0 , v100
	.byte		N03   , Dn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W18
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 082   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_036
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 086   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 088   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 090   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_036
	.byte	W09
	.byte		N03   , As1 , v100
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 094   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_7_009
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
@ 096   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , As1 
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Dn1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
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
	.byte	W84
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 105   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Bn0 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 106   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 107   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 108   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 109   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 110   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 111   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 112   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cn2 
	.byte	W03
	.byte	W21
	.byte		        Bn0 
	.byte		N03   , Cn2 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
@ 113   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W21
	.byte		        Bn0 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 114   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 115   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 116   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 117   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 118   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 119   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 120   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte		N03   , Cn2 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
@ 121   ----------------------------------------
	.byte	W12
	.byte		        Ds2 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
@ 122   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.7) ****************@

mus_touhou10_stage5_boss_8:
	.byte	KEYSH , mus_touhou10_stage5_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou10_stage5_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
mus_touhou10_stage5_boss_8_001:
	.byte		N96   , Cs2 , v056
	.byte		N96   , Gs2 
	.byte		N96   , Cs3 
	.byte	W96
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_001
@ 003   ----------------------------------------
mus_touhou10_stage5_boss_8_003:
	.byte		TIE   , Bn1 , v056
	.byte		TIE   , Fs2 
	.byte		TIE   , Bn2 
	.byte	W96
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
@ 005   ----------------------------------------
mus_touhou10_stage5_boss_8_005:
	.byte		N96   , An1 , v056
	.byte		N96   , En2 
	.byte		N96   , An2 
	.byte	W96
	.byte	PEND
@ 006   ----------------------------------------
mus_touhou10_stage5_boss_8_006:
	.byte		N96   , Bn1 , v056
	.byte		N96   , Fs2 
	.byte		N96   , Bn2 
	.byte	W96
	.byte	PEND
@ 007   ----------------------------------------
mus_touhou10_stage5_boss_8_007:
	.byte		TIE   , Cn2 , v056
	.byte		TIE   , Gs2 
	.byte		TIE   , Cn3 
	.byte	W96
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gs2 
	.byte		        Cn3 
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_003
@ 012   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_007
@ 016   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gs2 
	.byte		        Cn3 
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_003
@ 020   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_007
@ 024   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gs2 
	.byte		        Cn3 
@ 025   ----------------------------------------
	.byte		N96   , An2 , v056
	.byte		N96   , An3 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Gs2 
	.byte		N96   , Gs3 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Fs2 
	.byte		N96   , Fs3 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        En2 
	.byte		N96   , En3 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        An2 
	.byte		N96   , An3 
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Cs3 
	.byte		N96   , Cs4 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        En3 
	.byte		N96   , En4 
	.byte	W96
@ 032   ----------------------------------------
	.byte		N18   , Fs3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N48   , Gs3 
	.byte		N48   , Gs4 
	.byte	W48
@ 033   ----------------------------------------
	.byte		N96   , En2 
	.byte		N96   , Gs2 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Fs2 
	.byte		N96   , Bn2 
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 036   ----------------------------------------
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N48   , Gs2 
	.byte		N48   , Cs3 
	.byte	W48
@ 037   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 041   ----------------------------------------
	.byte		        En2 
	.byte		N96   , Gs2 
	.byte	W96
@ 042   ----------------------------------------
	.byte		        Fs2 
	.byte		N96   , Bn2 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 044   ----------------------------------------
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N48   , Gs2 
	.byte		N48   , Cs3 
	.byte	W48
@ 045   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_003
@ 052   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_007
@ 056   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gs2 
	.byte		        Cn3 
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_001
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_003
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_007
@ 064   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gs2 
	.byte		        Cn3 
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_003
@ 068   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Bn2 
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_006
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_007
@ 072   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gs2 
	.byte		        Cn3 
@ 073   ----------------------------------------
	.byte		N96   , An2 , v056
	.byte		N96   , An3 
	.byte	W96
@ 074   ----------------------------------------
	.byte		        Gs2 
	.byte		N96   , Gs3 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        Fs2 
	.byte		N96   , Fs3 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        En2 
	.byte		N96   , En3 
	.byte	W96
@ 077   ----------------------------------------
	.byte		        An2 
	.byte		N96   , An3 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        Cs3 
	.byte		N96   , Cs4 
	.byte	W96
@ 079   ----------------------------------------
	.byte		        En3 
	.byte		N96   , En4 
	.byte	W96
@ 080   ----------------------------------------
	.byte		N18   , Fs3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N48   , Gs3 
	.byte		N48   , Gs4 
	.byte	W48
@ 081   ----------------------------------------
mus_touhou10_stage5_boss_8_081:
	.byte		N96   , En2 , v056
	.byte		N96   
	.byte		N96   , Gs2 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 082   ----------------------------------------
mus_touhou10_stage5_boss_8_082:
	.byte		N96   , Fs2 , v056
	.byte		N96   
	.byte		N96   , Bn2 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 083   ----------------------------------------
mus_touhou10_stage5_boss_8_083:
	.byte		N96   , Ds2 , v056
	.byte		N96   
	.byte		N96   , Gs2 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 084   ----------------------------------------
mus_touhou10_stage5_boss_8_084:
	.byte		N24   , En2 , v056
	.byte		N24   
	.byte		N24   , An2 
	.byte		N24   
	.byte	W24
	.byte	PEND
	.byte		        Fs2 
	.byte		N24   
	.byte		N24   , Bn2 
	.byte		N24   
	.byte	W24
	.byte		N48   , Gs2 
	.byte		N48   
	.byte		N48   , Cs3 
	.byte		N48   
	.byte	W48
@ 085   ----------------------------------------
mus_touhou10_stage5_boss_8_085:
	.byte		N96   , Cs2 , v056
	.byte		N96   
	.byte		N96   , Fs2 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_083
@ 087   ----------------------------------------
mus_touhou10_stage5_boss_8_087:
	.byte		N96   , En2 , v056
	.byte		N96   
	.byte		N96   , An2 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_083
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_081
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_082
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_083
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_084
	.byte		N24   , Fs2 , v056
	.byte		N24   
	.byte		N24   , Bn2 
	.byte		N24   
	.byte	W24
	.byte		N48   , Gs2 
	.byte		N48   
	.byte		N48   , Cs3 
	.byte		N48   
	.byte	W48
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_085
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_083
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_087
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_083
@ 097   ----------------------------------------
	.byte		N96   , Cs2 , v056
	.byte		N96   , Fn2 
	.byte	W96
@ 098   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 099   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 100   ----------------------------------------
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        Ds2 
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N48   , Fn2 
	.byte		N48   , As2 
	.byte	W48
@ 101   ----------------------------------------
	.byte		N96   , As1 
	.byte		N96   , Ds2 
	.byte	W96
@ 102   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 103   ----------------------------------------
	.byte		        Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 104   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Cs2 
	.byte		N96   , Fn2 
	.byte	W96
@ 106   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 107   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 108   ----------------------------------------
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        Ds2 
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N48   , Fn2 
	.byte		N48   , As2 
	.byte	W48
@ 109   ----------------------------------------
	.byte		N96   , As1 
	.byte		N96   , Ds2 
	.byte	W96
@ 110   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 111   ----------------------------------------
	.byte		        Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 112   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 113   ----------------------------------------
mus_touhou10_stage5_boss_8_113:
	.byte		N96   , As1 , v056
	.byte		N96   , Fn2 
	.byte		N96   , As2 
	.byte	W96
	.byte	PEND
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage5_boss_8_113
@ 115   ----------------------------------------
	.byte		TIE   , Gs1 , v056
	.byte		TIE   , Ds2 
	.byte		TIE   , Gs2 
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		        Gs2 
@ 117   ----------------------------------------
	.byte		N96   , Fs1 
	.byte		N96   , Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 118   ----------------------------------------
	.byte		        Gs1 
	.byte		N96   , Ds2 
	.byte		N96   , Gs2 
	.byte	W96
@ 119   ----------------------------------------
	.byte		TIE   , An1 
	.byte		TIE   , Fn2 
	.byte		TIE   , An2 
	.byte	W96
@ 120   ----------------------------------------
	.byte	W96
	.byte		EOT   , An1 
	.byte		        Fn2 
	.byte		        An2 
@ 121   ----------------------------------------
	.byte	W48
@ 122   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_touhou10_stage5_boss:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_touhou10_stage5_boss_pri	@ Priority
	.byte	mus_touhou10_stage5_boss_rev	@ Reverb.

	.word	mus_touhou10_stage5_boss_grp

	.word	mus_touhou10_stage5_boss_1
	.word	mus_touhou10_stage5_boss_2
	.word	mus_touhou10_stage5_boss_3
	.word	mus_touhou10_stage5_boss_4
	.word	mus_touhou10_stage5_boss_5
	.word	mus_touhou10_stage5_boss_6
	.word	mus_touhou10_stage5_boss_7
	.word	mus_touhou10_stage5_boss_8

	.end
