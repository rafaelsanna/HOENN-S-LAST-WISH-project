	.include "MPlayDef.s"

	.equ	mus_touhou8_stage1_boss_grp, voicegroup_ancient_groover
	.equ	mus_touhou8_stage1_boss_pri, 0
	.equ	mus_touhou8_stage1_boss_rev, reverb_set+50
	.equ	mus_touhou8_stage1_boss_mvl, 100
	.equ	mus_touhou8_stage1_boss_key, 0
	.equ	mus_touhou8_stage1_boss_tbs, 1
	.equ	mus_touhou8_stage1_boss_exg, 1
	.equ	mus_touhou8_stage1_boss_cmp, 1

	.section .rodata
	.global	mus_touhou8_stage1_boss
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_touhou8_stage1_boss_1:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*mus_touhou8_stage1_boss_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+18
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
mus_touhou8_stage1_boss_1_007:
	.byte	W48
	.byte	TEMPO , 126*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 126*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 127*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 127*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 127*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 128*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 128*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 128*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 129*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 129*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 129*mus_touhou8_stage1_boss_tbs/2
	.byte	W02
	.byte	TEMPO , 130*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 130*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 130*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 131*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 131*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 131*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 132*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 132*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 132*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 133*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 133*mus_touhou8_stage1_boss_tbs/2
	.byte	W02
	.byte	TEMPO , 133*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 134*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 134*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 134*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 135*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 135*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 135*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 136*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 136*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 136*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 137*mus_touhou8_stage1_boss_tbs/2
	.byte	W02
	.byte	TEMPO , 137*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 137*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 138*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 138*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 138*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 139*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 139*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 139*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 140*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 140*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 140*mus_touhou8_stage1_boss_tbs/2
	.byte	W02
	.byte	PEND
@ 008   ----------------------------------------
mus_touhou8_stage1_boss_1_008:
	.byte	TEMPO , 141*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 141*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 141*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 142*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 142*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 142*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 142*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 143*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 143*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 143*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 144*mus_touhou8_stage1_boss_tbs/2
	.byte	W02
	.byte	TEMPO , 144*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 144*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 145*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 145*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 145*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 146*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 146*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 146*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 147*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 147*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 147*mus_touhou8_stage1_boss_tbs/2
	.byte	W02
	.byte	TEMPO , 148*mus_touhou8_stage1_boss_tbs/2
	.byte		N12   , En4 , v100
	.byte		N12   , Gn4 
	.byte	W01
	.byte	TEMPO , 148*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 148*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 149*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 149*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 149*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 150*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 150*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 150*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 151*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 151*mus_touhou8_stage1_boss_tbs/2
	.byte	W02
	.byte	PEND
	.byte	TEMPO , 151*mus_touhou8_stage1_boss_tbs/2
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W01
	.byte	TEMPO , 152*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 152*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 152*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 153*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 153*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 153*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 154*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 154*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 154*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 155*mus_touhou8_stage1_boss_tbs/2
	.byte	W02
	.byte	TEMPO , 155*mus_touhou8_stage1_boss_tbs/2
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N03   , Bn3 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Dn4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N42   , An4 
	.byte		N42   , Dn5 
	.byte	W42
	.byte		N03   , En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N03   
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		        Gn4 
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
@ 011   ----------------------------------------
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N03   , Bn3 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Dn4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N42   , An4 
	.byte		N42   , Dn5 
	.byte	W42
	.byte		N03   , En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N03   
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		        Gn4 
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
@ 015   ----------------------------------------
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N03   , Bn3 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Dn4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N42   , An4 
	.byte		N42   , Dn5 
	.byte	W42
	.byte		N03   , En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N03   
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		        Gn4 
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
@ 019   ----------------------------------------
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N03   , Bn3 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Dn4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N42   , An4 
	.byte		N42   , Dn5 
	.byte	W42
	.byte		N03   , En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N03   
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		        Gn4 
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
@ 023   ----------------------------------------
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W48
	.byte		N24   
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N24   , En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N42   , Fs4 
	.byte		N42   , Bn4 
	.byte	W42
	.byte		N03   , Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N03   
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gs4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
@ 027   ----------------------------------------
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N48   , Cs3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		N24   , En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N24   , En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N42   , Fs4 
	.byte		N42   , Bn4 
	.byte	W42
	.byte		N03   , Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N03   
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gs4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
@ 031   ----------------------------------------
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N48   , Cs3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		N24   , En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 033   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N24   , En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N42   , Fs4 
	.byte		N42   , Bn4 
	.byte	W42
	.byte		N03   , Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N03   
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gs4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
@ 035   ----------------------------------------
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N48   , Cs3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		N24   , En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N24   , En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N42   , Fs4 
	.byte		N42   , Bn4 
	.byte	W42
	.byte		N03   , Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N03   
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gs4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
@ 039   ----------------------------------------
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N48   , Cs3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte	W48
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
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_1_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_1_008
	.byte	TEMPO , 151*mus_touhou8_stage1_boss_tbs/2
	.byte		N12   , Fs4 , v100
	.byte		N12   , An4 
	.byte	W01
	.byte	TEMPO , 152*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 152*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 152*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 153*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 153*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 153*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 154*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 154*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 154*mus_touhou8_stage1_boss_tbs/2
	.byte	W01
	.byte	TEMPO , 155*mus_touhou8_stage1_boss_tbs/2
	.byte	W02
	.byte	TEMPO , 155*mus_touhou8_stage1_boss_tbs/2
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N03   , Bn3 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Dn4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 050   ----------------------------------------
	.byte		N42   , An4 
	.byte		N42   , Dn5 
	.byte	W42
	.byte		N03   , En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_touhou8_stage1_boss_2:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		PAN   , c_v-22
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
	.byte	W48
	.byte		N48   , En4 , v060
	.byte		N48   , Gn4 
	.byte	W48
@ 013   ----------------------------------------
	.byte		        Fs4 
	.byte		N48   , An4 
	.byte	W48
	.byte		        Bn3 
	.byte		N48   , En4 
	.byte	W48
@ 014   ----------------------------------------
	.byte		        Dn4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        Dn4 
	.byte		N48   , Gn4 
	.byte	W48
@ 015   ----------------------------------------
	.byte		        Fs4 
	.byte		N48   , An4 
	.byte	W48
	.byte		        Gn4 
	.byte		N48   , Bn4 
	.byte	W48
@ 016   ----------------------------------------
	.byte		        Gn4 
	.byte		N48   , Bn4 
	.byte	W48
	.byte		N24   , Gn4 , v100
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N03   , Bn3 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Dn4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N42   , An4 
	.byte		N42   , Dn5 
	.byte	W42
	.byte		N03   , En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N03   
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		        Gn4 
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
@ 019   ----------------------------------------
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N03   , Bn3 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Dn4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte		N12   , Bn4 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N42   , An4 
	.byte		N42   , Dn5 
	.byte	W42
	.byte		N03   , En4 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N03   
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
	.byte		        Gn4 
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , An4 
	.byte	W03
@ 023   ----------------------------------------
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W48
	.byte	W48
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W48
	.byte		        Cs4 , v060
	.byte		N48   , En4 
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        Bn3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Bn3 
	.byte		N48   , En4 
	.byte	W48
@ 031   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        En4 
	.byte		N48   , Gs4 
	.byte	W48
@ 032   ----------------------------------------
	.byte		        En4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte		N24   , En4 , v080
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 033   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N24   , En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N42   , Fs4 
	.byte		N42   , Bn4 
	.byte	W42
	.byte		N03   , Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N03   
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gs4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
@ 035   ----------------------------------------
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N48   , Cs3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		N24   , En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N24   , En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N42   , Fs4 
	.byte		N42   , Bn4 
	.byte	W42
	.byte		N03   , Cs4 
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N03   
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte		N03   , Gs4 
	.byte	W03
	.byte		        Ds4 
	.byte		N03   , Fs4 
	.byte	W03
@ 039   ----------------------------------------
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N96   , Gs3 
	.byte		N96   , Cs4 
	.byte	W48
@ 040   ----------------------------------------
	.byte	W48
	.byte	W48
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
	.byte	W48
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_touhou8_stage1_boss_3:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte	W72
	.byte		N24   , En3 , v112
	.byte		N24   , Cs4 
	.byte	W24
@ 001   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 002   ----------------------------------------
mus_touhou8_stage1_boss_3_002:
	.byte		N48   , Cn3 , v112
	.byte		N48   , Ds3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte	PEND
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N48   , Ds3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 005   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_3_002
	.byte	W24
	.byte		N24   , En3 , v112
	.byte		N24   , Cs4 
	.byte	W24
@ 007   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 008   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte	W48
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
	.byte	W72
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 041   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_3_002
	.byte	W24
	.byte		N24   , En3 , v112
	.byte		N24   , Cs4 
	.byte	W24
@ 043   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 044   ----------------------------------------
	.byte		N48   , Ds3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 045   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_3_002
	.byte	W24
	.byte		N24   , En3 , v112
	.byte		N24   , Cs4 
	.byte	W24
@ 047   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 048   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte	W48
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W48
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_touhou8_stage1_boss_4:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		PAN   , c_v-22
	.byte	W48
	.byte		VOL   , 124*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        123*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N48   , An3 , v044
	.byte	W02
	.byte		VOL   , 121*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        119*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        118*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        116*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        113*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        112*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        111*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        110*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        106*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        102*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        100*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        99*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        98*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        97*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        95*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        94*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        92*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        90*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        87*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        84*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        83*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        81*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        80*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        79*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        78*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        75*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        74*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        70*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        68*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        67*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        65*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        127*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
@ 001   ----------------------------------------
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		VOL   , 124*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        123*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N48   , An4 
	.byte	W02
	.byte		VOL   , 121*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        119*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        118*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        116*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        113*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        112*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        111*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        110*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        106*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        102*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        100*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        99*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        98*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        97*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        95*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        94*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        92*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        90*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        87*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        84*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        83*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        81*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        80*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        79*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        78*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        75*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        74*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        70*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        68*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        67*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        65*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        127*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
@ 003   ----------------------------------------
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		VOL   , 124*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        123*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N48   , An4 
	.byte	W02
	.byte		VOL   , 121*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        119*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        118*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        116*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        113*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        112*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        111*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        110*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        106*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        102*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        100*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        99*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        98*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        97*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        95*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        94*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        92*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        90*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        87*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        84*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        83*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        81*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        80*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        79*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        78*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        75*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        74*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        70*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        68*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        67*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        65*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        127*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
@ 005   ----------------------------------------
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		VOL   , 124*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        123*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N48   , An3 
	.byte	W02
	.byte		VOL   , 121*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        119*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        118*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        116*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        113*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        112*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        111*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        110*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        106*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        102*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        100*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        99*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        98*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        97*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        95*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        94*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        92*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        90*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        87*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        84*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        83*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        81*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        80*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        79*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        78*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        75*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        74*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        70*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        68*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        67*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        65*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        127*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
@ 007   ----------------------------------------
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W48
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
	.byte	W48
	.byte		N48   , An3 
	.byte	W02
	.byte		VOL   , 124*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        123*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        121*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        119*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        118*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        116*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        113*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        112*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        111*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        110*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        108*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        106*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        102*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        101*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        100*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        99*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        98*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        97*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        95*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        94*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        92*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        90*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        87*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        86*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        84*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        83*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        81*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        80*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        79*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        78*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        75*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        72*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        70*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        68*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        65*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W04
@ 041   ----------------------------------------
	.byte		        127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 042   ----------------------------------------
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		VOL   , 124*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        123*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N48   , An4 
	.byte	W02
	.byte		VOL   , 121*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        119*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        118*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        116*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        113*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        112*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        111*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        110*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        106*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        102*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        100*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        99*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        98*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        97*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        95*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        94*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        92*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        90*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        87*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        84*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        83*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        81*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        80*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        79*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        78*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        75*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        74*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        70*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        68*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        67*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        65*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        127*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
@ 043   ----------------------------------------
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		VOL   , 124*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        123*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N48   , An4 
	.byte	W02
	.byte		VOL   , 121*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        119*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        118*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        116*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        113*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        112*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        111*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        110*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        106*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        102*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        100*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        99*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        98*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        97*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        95*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        94*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        92*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        90*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        87*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        84*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        83*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        81*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        80*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        79*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        78*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        75*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        74*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        70*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        68*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        67*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        65*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        127*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
@ 045   ----------------------------------------
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		VOL   , 124*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        123*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N48   , An3 
	.byte	W02
	.byte		VOL   , 121*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        119*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        118*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        116*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        113*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        112*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        111*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        110*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        106*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        102*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        100*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        99*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        98*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        97*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        95*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        94*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        92*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        90*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        87*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        84*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        83*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        81*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        80*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W02
	.byte		        79*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        78*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        75*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        74*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        70*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        68*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        67*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        65*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
	.byte		        127*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W03
@ 047   ----------------------------------------
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 048   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte	W48
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W48
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_touhou8_stage1_boss_5:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+18
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
	.byte	W72
	.byte		N06   , Cs3 , v052
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 041   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 042   ----------------------------------------
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W48
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 043   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W48
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        Fs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte	W48
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 047   ----------------------------------------
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 048   ----------------------------------------
	.byte		        Fs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte	W72
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W48
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_touhou8_stage1_boss_6:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
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
	.byte	W48
	.byte		N12   , Cn3 , v072
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 036   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 040   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	W48
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
	.byte	W48
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_touhou8_stage1_boss_7:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		PAN   , c_v-22
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
mus_touhou8_stage1_boss_7_008:
	.byte	W48
	.byte		N48   , Cn2 , v076
	.byte		N48   , Gn2 
	.byte	W48
	.byte	PEND
@ 009   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 010   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 011   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		N72   , En2 
	.byte		N72   , Bn2 
	.byte	W48
@ 012   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 013   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 014   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 015   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		N72   , En2 
	.byte		N72   , Bn2 
	.byte	W48
@ 016   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 017   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 018   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 019   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		N72   , En2 
	.byte		N72   , Bn2 
	.byte	W48
@ 020   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 021   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 022   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 023   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		N72   , En2 
	.byte		N72   , Bn2 
	.byte	W48
@ 024   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , An1 
	.byte		N48   , En2 
	.byte	W48
@ 025   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 026   ----------------------------------------
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 027   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		N72   , Cs2 
	.byte		N72   , Gs2 
	.byte	W48
@ 028   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N48   , An1 
	.byte		N48   , En2 
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 031   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		N72   , Cs2 
	.byte		N72   , Gs2 
	.byte	W48
@ 032   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N48   , An1 
	.byte		N48   , En2 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 034   ----------------------------------------
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 035   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		N72   , Cs2 
	.byte		N72   , Gs2 
	.byte	W48
@ 036   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N48   , An1 
	.byte		N48   , En2 
	.byte	W48
@ 037   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 038   ----------------------------------------
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 039   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		N72   , Cs2 
	.byte		N72   , Gs2 
	.byte	W48
@ 040   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W24
	.byte	W48
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
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_7_008
@ 049   ----------------------------------------
	.byte		N48   , Dn2 , v076
	.byte		N48   , An2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 050   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_touhou8_stage1_boss_8:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
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
mus_touhou8_stage1_boss_8_008:
	.byte	W48
	.byte		N48   , Cn2 , v080
	.byte		N48   , Gn2 
	.byte	W48
	.byte	PEND
@ 009   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 010   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 011   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		N72   , En2 
	.byte		N72   , Bn2 
	.byte	W48
@ 012   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 013   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 014   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 015   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		N72   , En2 
	.byte		N72   , Bn2 
	.byte	W48
@ 016   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 017   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 018   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 019   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		N72   , En2 
	.byte		N72   , Bn2 
	.byte	W48
@ 020   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 021   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 022   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gn2 
	.byte	W48
@ 023   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte	W48
	.byte		N72   , En2 
	.byte		N72   , Bn2 
	.byte	W48
@ 024   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , An1 
	.byte		N48   , En2 
	.byte	W48
@ 025   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 026   ----------------------------------------
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 027   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		N72   , Cs2 
	.byte		N72   , Gs2 
	.byte	W48
@ 028   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N48   , An1 
	.byte		N48   , En2 
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 031   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		N72   , Cs2 
	.byte		N72   , Gs2 
	.byte	W48
@ 032   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N48   , An1 
	.byte		N48   , En2 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 034   ----------------------------------------
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 035   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		N72   , Cs2 
	.byte		N72   , Gs2 
	.byte	W48
@ 036   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N48   , An1 
	.byte		N48   , En2 
	.byte	W48
@ 037   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 038   ----------------------------------------
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 039   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		N72   , Cs2 
	.byte		N72   , Gs2 
	.byte	W48
@ 040   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W24
	.byte	W48
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
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_8_008
@ 049   ----------------------------------------
	.byte		N48   , Dn2 , v080
	.byte		N48   , An2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
@ 050   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_touhou8_stage1_boss_9:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
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
	.byte	W48
	.byte		N06   , Cn2 , v072
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 009   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 018   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 019   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 021   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 022   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 023   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 024   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N24   , An1 
	.byte	W24
	.byte	W24
@ 025   ----------------------------------------
	.byte		        Bn1 
	.byte	W24
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte	W24
@ 026   ----------------------------------------
	.byte		        Gs1 
	.byte	W24
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte	W24
@ 027   ----------------------------------------
	.byte		        Bn1 
	.byte	W24
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte	W24
@ 028   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		N06   , An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 029   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 030   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 032   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 033   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 034   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 035   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 036   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 037   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 038   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 039   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 040   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W48
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
	.byte	W48
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 049   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 050   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_touhou8_stage1_boss_10:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cn1 , v100
	.byte		N03   , Cs1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 001   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 002   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 003   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 004   ----------------------------------------
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 005   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 006   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 007   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W03
@ 008   ----------------------------------------
mus_touhou8_stage1_boss_10_008:
	.byte		N03   , Cn1 , v100
	.byte		N03   , Dn1 , v076
	.byte	W03
	.byte	PEND
	.byte		N03   
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v084
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v096
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 009   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 010   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 011   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 012   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 013   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 014   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 015   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 016   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 017   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 018   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 019   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 020   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 021   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 022   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 023   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 024   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
@ 027   ----------------------------------------
	.byte	W36
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        126*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        125*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        124*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        123*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        122*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        121*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        120*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        119*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        118*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        117*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        116*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        113*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        112*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        111*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        110*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        109*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        107*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        106*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        105*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        104*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        103*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        102*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        100*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        99*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        98*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        97*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        95*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        94*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        93*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        92*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        91*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        90*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        89*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        88*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        87*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        86*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        84*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        83*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        82*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        81*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        80*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        79*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        78*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        77*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        75*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        74*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        72*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W15
@ 028   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte		N03   , Dn1 , v076
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v080
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v084
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v088
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v088
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v096
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 029   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 030   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 031   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		VOL   , 72*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        73*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        74*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N03   , Cn1 
	.byte	W01
	.byte		VOL   , 75*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        76*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        77*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        78*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        79*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        80*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        81*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        83*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        84*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        85*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        87*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        88*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        90*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        91*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        92*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        94*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        95*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        97*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        98*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        99*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        100*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        101*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        102*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N03   , Dn1 
	.byte	W01
	.byte		VOL   , 103*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        104*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        105*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        106*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        108*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        109*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        110*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        111*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        112*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        113*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        114*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N03   , Cn1 
	.byte	W01
	.byte		VOL   , 116*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        117*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        118*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        119*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        120*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        121*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        122*mus_touhou8_stage1_boss_mvl/mxv
	.byte		N03   
	.byte	W01
	.byte		VOL   , 123*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        124*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        125*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		        126*mus_touhou8_stage1_boss_mvl/mxv
	.byte		        127*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 032   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 033   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 034   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 035   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 036   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 037   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 038   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 039   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 040   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 041   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 042   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 043   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 044   ----------------------------------------
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 045   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 046   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 047   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W03
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_10_008
	.byte		N03   , Dn1 , v076
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v084
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v088
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn1 , v096
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 049   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
@ 050   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	FINE

@**************** Track 11 (Midi-Chn.10) ****************@

mus_touhou8_stage1_boss_11:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Fs1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W48
	.byte	W03
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
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 009   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 010   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 011   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 012   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 013   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 014   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 015   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 016   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 017   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 018   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 019   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 020   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 021   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 022   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 023   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 024   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W48
	.byte	W03
@ 025   ----------------------------------------
	.byte	W72
	.byte		        As1 
	.byte	W03
	.byte	W21
@ 026   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W48
	.byte	W03
@ 027   ----------------------------------------
	.byte	W48
	.byte		        As1 
	.byte	W03
	.byte	W44
	.byte	W01
@ 028   ----------------------------------------
	.byte	W48
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 029   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 030   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 031   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 032   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 033   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 034   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 035   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 036   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 037   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 038   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 039   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 040   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W48
	.byte	W03
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
	.byte	W48
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 049   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 050   ----------------------------------------
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 12 (Midi-Chn.11) ****************@

mus_touhou8_stage1_boss_12:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
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
	.byte	W48
	.byte		N03   , Cn1 , v088
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
@ 017   ----------------------------------------
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 018   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
@ 019   ----------------------------------------
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N03   , Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
@ 020   ----------------------------------------
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		N18   , Dn1 
	.byte		N18   , An1 
	.byte	W18
	.byte		N03   , Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
@ 021   ----------------------------------------
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 022   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W03
@ 023   ----------------------------------------
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N03   , Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , An1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
@ 024   ----------------------------------------
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		N18   , Dn1 
	.byte		N18   , An1 
	.byte	W18
	.byte		N24   , An0 
	.byte		N24   , En1 
	.byte	W24
	.byte	W24
@ 025   ----------------------------------------
	.byte		        Bn0 
	.byte		N24   , Fs1 
	.byte	W24
	.byte	W24
	.byte		        Fs0 
	.byte		N24   , Cs1 
	.byte	W24
	.byte	W24
@ 026   ----------------------------------------
	.byte		        Gs0 
	.byte		N24   , Ds1 
	.byte	W24
	.byte	W24
	.byte		        An0 
	.byte		N24   , En1 
	.byte	W24
	.byte		N03   , An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 027   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N03   , Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N24   , Cs1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N03   , Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
@ 028   ----------------------------------------
	.byte		N24   , Cs1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W06
	.byte		N18   , Bn0 
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N24   , An0 
	.byte		N24   , En1 
	.byte	W24
	.byte		N03   , An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 029   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N03   , Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N24   , Fs0 
	.byte		N24   , Cs1 
	.byte	W24
	.byte		N03   , Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
@ 030   ----------------------------------------
	.byte		N24   , Gs0 
	.byte		N24   , Ds1 
	.byte	W24
	.byte		N03   , Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		N24   , An0 
	.byte		N24   , En1 
	.byte	W24
	.byte		N03   , An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 031   ----------------------------------------
	.byte		N24   , Bn0 
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N03   , Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N24   , Cs1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N03   , Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
@ 032   ----------------------------------------
	.byte		N24   , Cs1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W06
	.byte		N18   , Bn0 
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N03   , An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 033   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
@ 034   ----------------------------------------
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 035   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
@ 036   ----------------------------------------
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		N18   , Bn0 
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N03   , An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 037   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
	.byte		        Fs0 
	.byte		N03   , Cs1 
	.byte	W03
	.byte	W03
@ 038   ----------------------------------------
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        Gs0 
	.byte		N03   , Ds1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        An0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 039   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
@ 040   ----------------------------------------
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		        Cs1 
	.byte		N03   , Gs1 
	.byte	W03
	.byte	W03
	.byte		N18   , Bn0 
	.byte		N18   , Fs1 
	.byte	W18
	.byte	W48
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
	.byte	W48
	.byte	FINE

@**************** Track 13 (Midi-Chn.12) ****************@

mus_touhou8_stage1_boss_13:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
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
mus_touhou8_stage1_boss_13_030:
	.byte	W12
	.byte		PAN   , c_v-22
	.byte		N12   , Gs1 , v044
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
	.byte	W06
	.byte		PAN   , c_v+18
	.byte		N12   , Gs1 , v028
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	W54
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_13_030
	.byte	W06
	.byte		PAN   , c_v+18
	.byte		N12   , Gs1 , v028
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	W54
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_13_030
	.byte	W06
	.byte		PAN   , c_v+18
	.byte		N12   , Gs1 , v028
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	W54
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
	.byte	W48
	.byte	FINE

@**************** Track 14 (Midi-Chn.16) ****************@

mus_touhou8_stage1_boss_14:
	.byte	KEYSH , mus_touhou8_stage1_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , Cn0 , v088
	.byte		TIE   , Cn1 
	.byte		TIE   , Gn1 
	.byte	W48
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte	W01
	.byte		VOL   , 126*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte		        c_v-1
	.byte	W01
	.byte		VOL   , 125*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte	W01
	.byte		VOL   , 124*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-2
	.byte	W01
	.byte		VOL   , 123*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte	W01
	.byte		VOL   , 122*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte		        c_v-3
	.byte	W01
	.byte		VOL   , 121*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte	W01
	.byte		VOL   , 120*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-4
	.byte	W01
	.byte		VOL   , 119*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		VOL   , 118*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		VOL   , 117*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte	W01
	.byte		VOL   , 116*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-6
	.byte	W01
	.byte		VOL   , 115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte	W01
	.byte		VOL   , 114*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-7
	.byte	W01
	.byte		VOL   , 113*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte	W01
	.byte		VOL   , 112*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte		        c_v-8
	.byte	W01
@ 001   ----------------------------------------
	.byte		VOL   , 111*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte	W01
	.byte		VOL   , 110*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-9
	.byte	W01
	.byte		VOL   , 109*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte	W01
	.byte		VOL   , 108*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-10
	.byte	W01
	.byte		VOL   , 107*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte	W01
	.byte		VOL   , 106*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte		        c_v-11
	.byte	W01
	.byte		VOL   , 105*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte	W01
	.byte		VOL   , 104*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-12
	.byte	W01
	.byte		VOL   , 103*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		VOL   , 102*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		VOL   , 101*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte	W01
	.byte		VOL   , 100*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-14
	.byte	W01
	.byte		VOL   , 99*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte	W01
	.byte		VOL   , 98*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte		        c_v-15
	.byte	W01
	.byte		VOL   , 97*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		VOL   , 96*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		VOL   , 95*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte	W01
	.byte		VOL   , 94*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-17
	.byte	W01
	.byte		VOL   , 93*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte	W01
	.byte		VOL   , 92*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-18
	.byte	W01
	.byte		VOL   , 91*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte	W01
	.byte		VOL   , 90*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte		        c_v-19
	.byte	W01
	.byte		VOL   , 89*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte	W01
	.byte		VOL   , 88*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-20
	.byte	W01
	.byte		VOL   , 87*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		VOL   , 86*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		VOL   , 85*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte	W01
	.byte		VOL   , 84*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte		        c_v-22
	.byte	W01
	.byte		VOL   , 83*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte	W01
	.byte		VOL   , 82*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		VOL   , 81*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		VOL   , 80*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
@ 002   ----------------------------------------
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte	W01
	.byte		VOL   , 79*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte	W01
	.byte		VOL   , 78*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte	W01
	.byte		VOL   , 77*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte	W01
	.byte		VOL   , 76*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte	W01
	.byte		VOL   , 75*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte	W01
	.byte		VOL   , 74*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte	W01
	.byte		VOL   , 73*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte	W01
	.byte		VOL   , 72*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte	W01
	.byte		VOL   , 71*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte	W01
	.byte		VOL   , 70*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte	W01
	.byte		VOL   , 69*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte	W01
	.byte		VOL   , 68*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte	W01
	.byte		VOL   , 67*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte	W01
	.byte		VOL   , 66*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		VOL   , 65*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		VOL   , 64*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte	W01
	.byte		VOL   , 63*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte	W01
	.byte		VOL   , 62*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte	W01
	.byte		VOL   , 61*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte	W01
	.byte		VOL   , 60*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte	W01
	.byte		VOL   , 59*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte	W01
	.byte		VOL   , 58*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte	W01
	.byte		VOL   , 57*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte	W01
	.byte		VOL   , 56*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte	W01
	.byte		VOL   , 55*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte	W01
	.byte		VOL   , 54*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte	W01
	.byte		VOL   , 53*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte	W01
	.byte		VOL   , 52*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte	W01
	.byte		VOL   , 51*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte	W01
	.byte		VOL   , 50*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		VOL   , 49*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		VOL   , 48*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
@ 003   ----------------------------------------
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte	W01
	.byte		VOL   , 47*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte	W01
	.byte		VOL   , 46*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte	W01
	.byte		VOL   , 45*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte	W01
	.byte		VOL   , 44*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte	W01
	.byte		VOL   , 43*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte	W01
	.byte		VOL   , 42*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte	W01
	.byte		VOL   , 41*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte	W01
	.byte		VOL   , 40*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte	W01
	.byte		VOL   , 39*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte	W01
	.byte		VOL   , 38*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte	W01
	.byte		VOL   , 37*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte	W01
	.byte		VOL   , 36*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte	W01
	.byte		VOL   , 35*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte	W01
	.byte		VOL   , 34*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		VOL   , 33*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		VOL   , 32*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte	W01
	.byte		VOL   , 31*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte	W01
	.byte		VOL   , 30*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte	W01
	.byte		VOL   , 29*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte	W01
	.byte		VOL   , 28*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		VOL   , 27*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		VOL   , 26*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte	W01
	.byte		VOL   , 25*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte	W01
	.byte		VOL   , 24*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte	W01
	.byte		VOL   , 23*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte	W01
	.byte		VOL   , 22*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte	W01
	.byte		VOL   , 21*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte	W01
	.byte		VOL   , 20*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte	W01
	.byte		VOL   , 19*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte	W01
	.byte		VOL   , 18*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		VOL   , 17*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		VOL   , 16*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
@ 004   ----------------------------------------
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte	W01
	.byte		VOL   , 15*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte	W01
	.byte		VOL   , 14*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte	W01
	.byte		VOL   , 13*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte	W01
	.byte		VOL   , 12*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		VOL   , 11*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		VOL   , 10*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte	W01
	.byte		VOL   , 9*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte	W01
	.byte		VOL   , 8*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte	W01
	.byte		VOL   , 7*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte	W01
	.byte		VOL   , 6*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte	W01
	.byte		VOL   , 5*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte	W01
	.byte		VOL   , 4*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte	W01
	.byte		VOL   , 3*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte	W01
	.byte		VOL   , 2*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
	.byte		VOL   , 1*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
	.byte		VOL   , 0*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
	.byte		EOT   , Cn0 
	.byte		        Cn1 
	.byte		        Gn1 
	.byte		BEND  , c_v+0
	.byte	W48
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W48
	.byte	W01
@ 008   ----------------------------------------
mus_touhou8_stage1_boss_14_008:
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		TIE   , Cn5 , v088
	.byte		TIE   , Gn5 
	.byte		TIE   , Cn6 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+1
	.byte		        c_v+1
	.byte		        c_v+1
	.byte		        c_v+1
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+1
	.byte		        c_v+1
	.byte		        c_v+1
	.byte		        c_v+1
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+1
	.byte		        c_v+1
	.byte		        c_v+1
	.byte		        c_v+1
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+1
	.byte		        c_v+1
	.byte		        c_v+1
	.byte		        c_v+2
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+2
	.byte		        c_v+2
	.byte		        c_v+2
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+2
	.byte		        c_v+2
	.byte		        c_v+2
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+2
	.byte		        c_v+2
	.byte		        c_v+2
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+2
	.byte		        c_v+3
	.byte		        c_v+3
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+3
	.byte		        c_v+3
	.byte		        c_v+3
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+3
	.byte		        c_v+3
	.byte		        c_v+3
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+3
	.byte		        c_v+3
	.byte		        c_v+3
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+4
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+5
	.byte		        c_v+5
	.byte		        c_v+5
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+5
	.byte		        c_v+5
	.byte		        c_v+5
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+5
	.byte		        c_v+5
	.byte		        c_v+5
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+5
	.byte		        c_v+5
	.byte		        c_v+6
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+6
	.byte		        c_v+6
	.byte		        c_v+6
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+6
	.byte		        c_v+6
	.byte		        c_v+6
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+6
	.byte		        c_v+6
	.byte		        c_v+6
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+6
	.byte		        c_v+7
	.byte		        c_v+7
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+7
	.byte		        c_v+7
	.byte		        c_v+7
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+7
	.byte		        c_v+7
	.byte		        c_v+7
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+7
	.byte		        c_v+7
	.byte		        c_v+7
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+8
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+9
	.byte		        c_v+9
	.byte		        c_v+9
	.byte		        c_v+9
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+9
	.byte		        c_v+9
	.byte		        c_v+9
	.byte		        c_v+9
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+9
	.byte		        c_v+9
	.byte		        c_v+9
	.byte		        c_v+9
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+9
	.byte		        c_v+9
	.byte		        c_v+9
	.byte		        c_v+10
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+10
	.byte		        c_v+10
	.byte		        c_v+10
	.byte		        c_v+10
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+10
	.byte		        c_v+10
	.byte		        c_v+10
	.byte		        c_v+10
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+10
	.byte		        c_v+10
	.byte		        c_v+10
	.byte		        c_v+10
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+10
	.byte		        c_v+11
	.byte		        c_v+11
	.byte		        c_v+11
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+11
	.byte		        c_v+11
	.byte		        c_v+11
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+11
	.byte		        c_v+11
	.byte		        c_v+11
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+11
	.byte		        c_v+11
	.byte		        c_v+11
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte		        c_v+12
	.byte		        c_v+12
	.byte		        c_v+12
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+12
	.byte		        c_v+12
	.byte		        c_v+12
	.byte		        c_v+12
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+12
	.byte		        c_v+12
	.byte		        c_v+12
	.byte		        c_v+12
	.byte		        c_v+12
	.byte	W01
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+12
	.byte		        c_v+12
	.byte		        c_v+12
	.byte		        c_v+12
	.byte		        c_v+13
	.byte	W01
	.byte		VOL   , 126*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+13
	.byte		        c_v+13
	.byte		        c_v+13
	.byte		        c_v+13
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+13
	.byte		        c_v+13
	.byte		        c_v+13
	.byte		        c_v+13
	.byte	W01
	.byte		VOL   , 125*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+13
	.byte		        c_v+13
	.byte		        c_v+13
	.byte		        c_v+13
	.byte		        c_v+13
	.byte	W01
	.byte		VOL   , 124*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+13
	.byte		        c_v+13
	.byte		        c_v+13
	.byte		        c_v+14
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+14
	.byte		        c_v+14
	.byte		        c_v+14
	.byte		        c_v+14
	.byte		        c_v+14
	.byte	W01
	.byte		VOL   , 123*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+14
	.byte		        c_v+14
	.byte		        c_v+14
	.byte		        c_v+14
	.byte		        c_v+14
	.byte	W01
	.byte		VOL   , 122*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+14
	.byte		        c_v+14
	.byte		        c_v+14
	.byte		        c_v+14
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+14
	.byte		        c_v+15
	.byte		        c_v+15
	.byte		        c_v+15
	.byte		        c_v+15
	.byte	W01
	.byte		VOL   , 121*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+15
	.byte		        c_v+15
	.byte		        c_v+15
	.byte		        c_v+15
	.byte		        c_v+15
	.byte	W01
	.byte		VOL   , 120*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+15
	.byte		        c_v+15
	.byte		        c_v+15
	.byte		        c_v+15
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+15
	.byte		        c_v+15
	.byte		        c_v+15
	.byte		        c_v+15
	.byte		        c_v+15
	.byte	W01
	.byte		VOL   , 119*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+16
	.byte		        c_v+16
	.byte		        c_v+16
	.byte		        c_v+16
	.byte		        c_v+16
	.byte	W01
	.byte		VOL   , 118*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+16
	.byte		        c_v+16
	.byte		        c_v+16
	.byte		        c_v+16
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte		        c_v+16
	.byte		        c_v+16
	.byte		        c_v+16
	.byte		        c_v+16
	.byte	W01
	.byte		VOL   , 117*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+16
	.byte		        c_v+16
	.byte		        c_v+16
	.byte		        c_v+16
	.byte		        c_v+17
	.byte	W01
	.byte		VOL   , 116*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+17
	.byte		        c_v+17
	.byte		        c_v+17
	.byte		        c_v+17
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+17
	.byte		        c_v+17
	.byte		        c_v+17
	.byte		        c_v+17
	.byte		        c_v+17
	.byte	W01
	.byte		VOL   , 115*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+17
	.byte		        c_v+17
	.byte		        c_v+17
	.byte		        c_v+17
	.byte		        c_v+17
	.byte	W01
	.byte		VOL   , 114*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+17
	.byte		        c_v+17
	.byte		        c_v+17
	.byte		        c_v+18
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+18
	.byte		        c_v+18
	.byte		        c_v+18
	.byte		        c_v+18
	.byte		        c_v+18
	.byte	W01
	.byte		VOL   , 113*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+18
	.byte		        c_v+18
	.byte		        c_v+18
	.byte		        c_v+18
	.byte		        c_v+18
	.byte	W01
	.byte		VOL   , 112*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+18
	.byte		        c_v+18
	.byte		        c_v+18
	.byte		        c_v+18
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+18
	.byte		        c_v+19
	.byte		        c_v+19
	.byte		        c_v+19
	.byte		        c_v+19
	.byte	W01
	.byte		VOL   , 111*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+19
	.byte		        c_v+19
	.byte		        c_v+19
	.byte		        c_v+19
	.byte		        c_v+19
	.byte	W01
	.byte		VOL   , 110*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+19
	.byte		        c_v+19
	.byte		        c_v+19
	.byte		        c_v+19
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+19
	.byte		        c_v+19
	.byte		        c_v+19
	.byte		        c_v+19
	.byte	W01
	.byte		VOL   , 109*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+20
	.byte		        c_v+20
	.byte		        c_v+20
	.byte		        c_v+20
	.byte		        c_v+20
	.byte	W01
	.byte		VOL   , 108*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+20
	.byte		        c_v+20
	.byte		        c_v+20
	.byte		        c_v+20
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+20
	.byte		        c_v+20
	.byte		        c_v+20
	.byte		        c_v+20
	.byte		        c_v+20
	.byte	W01
	.byte		VOL   , 107*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+20
	.byte		        c_v+20
	.byte		        c_v+20
	.byte		        c_v+20
	.byte		        c_v+21
	.byte	W01
	.byte		VOL   , 106*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+21
	.byte		        c_v+21
	.byte		        c_v+21
	.byte		        c_v+21
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+21
	.byte		        c_v+21
	.byte		        c_v+21
	.byte		        c_v+21
	.byte	W01
	.byte		VOL   , 105*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+21
	.byte		        c_v+21
	.byte		        c_v+21
	.byte		        c_v+21
	.byte		        c_v+21
	.byte	W01
	.byte		VOL   , 104*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+21
	.byte		        c_v+21
	.byte		        c_v+21
	.byte		        c_v+22
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte		        c_v+22
	.byte		        c_v+22
	.byte		        c_v+22
	.byte		        c_v+22
	.byte	W01
	.byte		VOL   , 103*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+22
	.byte		        c_v+22
	.byte		        c_v+22
	.byte		        c_v+22
	.byte		        c_v+22
	.byte	W01
	.byte		VOL   , 102*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+22
	.byte		        c_v+22
	.byte		        c_v+22
	.byte		        c_v+22
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte		        c_v+23
	.byte		        c_v+23
	.byte		        c_v+23
	.byte		        c_v+23
	.byte	W01
	.byte		VOL   , 101*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+23
	.byte		        c_v+23
	.byte		        c_v+23
	.byte		        c_v+23
	.byte		        c_v+23
	.byte	W01
	.byte		VOL   , 100*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+23
	.byte		        c_v+23
	.byte		        c_v+23
	.byte		        c_v+23
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+23
	.byte		        c_v+23
	.byte		        c_v+23
	.byte		        c_v+23
	.byte	W01
	.byte		VOL   , 99*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+24
	.byte		        c_v+24
	.byte		        c_v+24
	.byte		        c_v+24
	.byte		        c_v+24
	.byte	W01
	.byte		VOL   , 98*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+24
	.byte		        c_v+24
	.byte		        c_v+24
	.byte		        c_v+24
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+24
	.byte		        c_v+24
	.byte		        c_v+24
	.byte		        c_v+24
	.byte		        c_v+24
	.byte	W01
	.byte		VOL   , 97*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+24
	.byte		        c_v+24
	.byte		        c_v+24
	.byte		        c_v+24
	.byte		        c_v+25
	.byte	W01
	.byte		VOL   , 96*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+25
	.byte		        c_v+25
	.byte		        c_v+25
	.byte		        c_v+25
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+25
	.byte		        c_v+25
	.byte		        c_v+25
	.byte		        c_v+25
	.byte		        c_v+25
	.byte	W01
	.byte	PEND
@ 009   ----------------------------------------
mus_touhou8_stage1_boss_14_009:
	.byte		VOL   , 95*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+25
	.byte		        c_v+25
	.byte		        c_v+25
	.byte		        c_v+25
	.byte		        c_v+25
	.byte	W01
	.byte		VOL   , 94*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+25
	.byte		        c_v+25
	.byte		        c_v+25
	.byte		        c_v+26
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+26
	.byte		        c_v+26
	.byte		        c_v+26
	.byte		        c_v+26
	.byte		        c_v+26
	.byte	W01
	.byte		VOL   , 93*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+26
	.byte		        c_v+26
	.byte		        c_v+26
	.byte		        c_v+26
	.byte		        c_v+26
	.byte	W01
	.byte		VOL   , 92*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+26
	.byte		        c_v+26
	.byte		        c_v+26
	.byte		        c_v+26
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+26
	.byte		        c_v+27
	.byte		        c_v+27
	.byte		        c_v+27
	.byte		        c_v+27
	.byte	W01
	.byte		VOL   , 91*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+27
	.byte		        c_v+27
	.byte		        c_v+27
	.byte		        c_v+27
	.byte		        c_v+27
	.byte	W01
	.byte		VOL   , 90*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+27
	.byte		        c_v+27
	.byte		        c_v+27
	.byte		        c_v+27
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+27
	.byte		        c_v+27
	.byte		        c_v+27
	.byte		        c_v+27
	.byte		        c_v+27
	.byte	W01
	.byte		VOL   , 89*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+28
	.byte		        c_v+28
	.byte		        c_v+28
	.byte		        c_v+28
	.byte		        c_v+28
	.byte	W01
	.byte		VOL   , 88*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+28
	.byte		        c_v+28
	.byte		        c_v+28
	.byte		        c_v+28
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+28
	.byte		        c_v+28
	.byte		        c_v+28
	.byte		        c_v+28
	.byte		        c_v+28
	.byte	W01
	.byte		VOL   , 87*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+28
	.byte		        c_v+28
	.byte		        c_v+28
	.byte		        c_v+28
	.byte		        c_v+29
	.byte	W01
	.byte		VOL   , 86*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+29
	.byte		        c_v+29
	.byte		        c_v+29
	.byte		        c_v+29
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+29
	.byte		        c_v+29
	.byte		        c_v+29
	.byte		        c_v+29
	.byte		        c_v+29
	.byte	W01
	.byte		VOL   , 85*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+29
	.byte		        c_v+29
	.byte		        c_v+29
	.byte		        c_v+29
	.byte		        c_v+29
	.byte	W01
	.byte		VOL   , 84*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+29
	.byte		        c_v+29
	.byte		        c_v+30
	.byte		        c_v+30
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+30
	.byte		        c_v+30
	.byte		        c_v+30
	.byte		        c_v+30
	.byte		        c_v+30
	.byte	W01
	.byte		VOL   , 83*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+30
	.byte		        c_v+30
	.byte		        c_v+30
	.byte		        c_v+30
	.byte		        c_v+30
	.byte	W01
	.byte		VOL   , 82*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+30
	.byte		        c_v+30
	.byte		        c_v+30
	.byte		        c_v+30
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+30
	.byte		        c_v+31
	.byte		        c_v+31
	.byte		        c_v+31
	.byte		        c_v+31
	.byte	W01
	.byte		VOL   , 81*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+31
	.byte		        c_v+31
	.byte		        c_v+31
	.byte		        c_v+31
	.byte		        c_v+31
	.byte	W01
	.byte		VOL   , 80*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+31
	.byte		        c_v+31
	.byte		        c_v+31
	.byte		        c_v+31
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+31
	.byte		        c_v+31
	.byte		        c_v+31
	.byte		        c_v+31
	.byte		        c_v+31
	.byte	W01
	.byte		VOL   , 79*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+32
	.byte		        c_v+32
	.byte		        c_v+32
	.byte		        c_v+32
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+32
	.byte		        c_v+32
	.byte		        c_v+32
	.byte		        c_v+32
	.byte		        c_v+32
	.byte	W01
	.byte		VOL   , 78*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+32
	.byte		        c_v+32
	.byte		        c_v+32
	.byte		        c_v+32
	.byte		        c_v+32
	.byte	W01
	.byte		VOL   , 77*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+32
	.byte		        c_v+32
	.byte		        c_v+32
	.byte		        c_v+32
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+33
	.byte		        c_v+33
	.byte		        c_v+33
	.byte		        c_v+33
	.byte	W01
	.byte		VOL   , 76*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+33
	.byte		        c_v+33
	.byte		        c_v+33
	.byte		        c_v+33
	.byte		        c_v+33
	.byte	W01
	.byte		VOL   , 75*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+33
	.byte		        c_v+33
	.byte		        c_v+33
	.byte		        c_v+33
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+33
	.byte		        c_v+34
	.byte		        c_v+34
	.byte		        c_v+34
	.byte	W01
	.byte		VOL   , 74*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+34
	.byte		        c_v+34
	.byte		        c_v+34
	.byte		        c_v+34
	.byte		        c_v+34
	.byte	W01
	.byte		VOL   , 73*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+34
	.byte		        c_v+34
	.byte		        c_v+34
	.byte		        c_v+34
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+34
	.byte		        c_v+34
	.byte		        c_v+34
	.byte		        c_v+34
	.byte		        c_v+34
	.byte	W01
	.byte		VOL   , 72*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+34
	.byte		        c_v+35
	.byte		        c_v+35
	.byte		        c_v+35
	.byte		        c_v+35
	.byte	W01
	.byte		VOL   , 71*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+35
	.byte		        c_v+35
	.byte		        c_v+35
	.byte		        c_v+35
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+35
	.byte		        c_v+35
	.byte		        c_v+35
	.byte		        c_v+35
	.byte	W01
	.byte		VOL   , 70*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+35
	.byte		        c_v+35
	.byte		        c_v+35
	.byte		        c_v+35
	.byte		        c_v+35
	.byte	W01
	.byte		VOL   , 69*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+36
	.byte		        c_v+36
	.byte		        c_v+36
	.byte		        c_v+36
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+36
	.byte		        c_v+36
	.byte		        c_v+36
	.byte		        c_v+36
	.byte		        c_v+36
	.byte	W01
	.byte		VOL   , 68*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+36
	.byte		        c_v+36
	.byte		        c_v+36
	.byte		        c_v+36
	.byte		        c_v+36
	.byte	W01
	.byte		VOL   , 67*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+36
	.byte		        c_v+36
	.byte		        c_v+36
	.byte		        c_v+36
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+37
	.byte		        c_v+37
	.byte		        c_v+37
	.byte		        c_v+37
	.byte	W01
	.byte		VOL   , 66*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+37
	.byte		        c_v+37
	.byte		        c_v+37
	.byte		        c_v+37
	.byte		        c_v+37
	.byte	W01
	.byte		VOL   , 65*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+37
	.byte		        c_v+37
	.byte		        c_v+37
	.byte		        c_v+37
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+37
	.byte		        c_v+38
	.byte		        c_v+38
	.byte		        c_v+38
	.byte	W01
	.byte		VOL   , 64*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+38
	.byte		        c_v+38
	.byte		        c_v+38
	.byte		        c_v+38
	.byte		        c_v+38
	.byte	W01
	.byte		VOL   , 63*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+38
	.byte		        c_v+38
	.byte		        c_v+38
	.byte		        c_v+38
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+38
	.byte		        c_v+38
	.byte		        c_v+38
	.byte		        c_v+38
	.byte		        c_v+38
	.byte	W01
	.byte		VOL   , 62*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+38
	.byte		        c_v+39
	.byte		        c_v+39
	.byte		        c_v+39
	.byte		        c_v+39
	.byte	W01
	.byte		VOL   , 61*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+39
	.byte		        c_v+39
	.byte		        c_v+39
	.byte		        c_v+39
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+39
	.byte		        c_v+39
	.byte		        c_v+39
	.byte		        c_v+39
	.byte	W01
	.byte		VOL   , 60*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+39
	.byte		        c_v+39
	.byte		        c_v+39
	.byte		        c_v+39
	.byte		        c_v+39
	.byte	W01
	.byte		VOL   , 59*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+40
	.byte		        c_v+40
	.byte		        c_v+40
	.byte		        c_v+40
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+40
	.byte		        c_v+40
	.byte		        c_v+40
	.byte		        c_v+40
	.byte		        c_v+40
	.byte	W01
	.byte		VOL   , 58*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+40
	.byte		        c_v+40
	.byte		        c_v+40
	.byte		        c_v+40
	.byte		        c_v+40
	.byte	W01
	.byte		VOL   , 57*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+40
	.byte		        c_v+40
	.byte		        c_v+40
	.byte		        c_v+40
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+41
	.byte		        c_v+41
	.byte		        c_v+41
	.byte		        c_v+41
	.byte		        c_v+41
	.byte	W01
	.byte		VOL   , 56*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+41
	.byte		        c_v+41
	.byte		        c_v+41
	.byte		        c_v+41
	.byte		        c_v+41
	.byte	W01
	.byte		VOL   , 55*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+41
	.byte		        c_v+41
	.byte		        c_v+41
	.byte		        c_v+41
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+41
	.byte		        c_v+41
	.byte		        c_v+42
	.byte		        c_v+42
	.byte		        c_v+42
	.byte	W01
	.byte		VOL   , 54*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+42
	.byte		        c_v+42
	.byte		        c_v+42
	.byte		        c_v+42
	.byte		        c_v+42
	.byte	W01
	.byte		VOL   , 53*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+42
	.byte		        c_v+42
	.byte		        c_v+42
	.byte		        c_v+42
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+42
	.byte		        c_v+42
	.byte		        c_v+42
	.byte		        c_v+42
	.byte		        c_v+42
	.byte	W01
	.byte		VOL   , 52*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+42
	.byte		        c_v+43
	.byte		        c_v+43
	.byte		        c_v+43
	.byte		        c_v+43
	.byte	W01
	.byte		VOL   , 51*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+43
	.byte		        c_v+43
	.byte		        c_v+43
	.byte		        c_v+43
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+43
	.byte		        c_v+43
	.byte		        c_v+43
	.byte		        c_v+43
	.byte	W01
	.byte		VOL   , 50*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+43
	.byte		        c_v+43
	.byte		        c_v+43
	.byte		        c_v+43
	.byte		        c_v+43
	.byte	W01
	.byte		VOL   , 49*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+44
	.byte		        c_v+44
	.byte		        c_v+44
	.byte		        c_v+44
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+44
	.byte		        c_v+44
	.byte		        c_v+44
	.byte		        c_v+44
	.byte	W01
	.byte		VOL   , 48*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+44
	.byte		        c_v+44
	.byte		        c_v+44
	.byte		        c_v+44
	.byte		        c_v+44
	.byte	W01
	.byte		VOL   , 47*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+44
	.byte		        c_v+44
	.byte		        c_v+44
	.byte		        c_v+44
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+45
	.byte		        c_v+45
	.byte		        c_v+45
	.byte		        c_v+45
	.byte	W01
	.byte		VOL   , 46*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+45
	.byte		        c_v+45
	.byte		        c_v+45
	.byte		        c_v+45
	.byte		        c_v+45
	.byte	W01
	.byte		VOL   , 45*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+45
	.byte		        c_v+45
	.byte		        c_v+45
	.byte		        c_v+45
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+45
	.byte		        c_v+46
	.byte		        c_v+46
	.byte		        c_v+46
	.byte	W01
	.byte		VOL   , 44*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+46
	.byte		        c_v+46
	.byte		        c_v+46
	.byte		        c_v+46
	.byte		        c_v+46
	.byte	W01
	.byte		VOL   , 43*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+46
	.byte		        c_v+46
	.byte		        c_v+46
	.byte		        c_v+46
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte		        c_v+46
	.byte		        c_v+46
	.byte		        c_v+46
	.byte		        c_v+46
	.byte	W01
	.byte		VOL   , 42*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+46
	.byte		        c_v+47
	.byte		        c_v+47
	.byte		        c_v+47
	.byte		        c_v+47
	.byte	W01
	.byte		VOL   , 41*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+47
	.byte		        c_v+47
	.byte		        c_v+47
	.byte		        c_v+47
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+47
	.byte		        c_v+47
	.byte		        c_v+47
	.byte		        c_v+47
	.byte	W01
	.byte		VOL   , 40*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+47
	.byte		        c_v+47
	.byte		        c_v+47
	.byte		        c_v+47
	.byte		        c_v+47
	.byte	W01
	.byte		VOL   , 39*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+48
	.byte		        c_v+48
	.byte		        c_v+48
	.byte		        c_v+48
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+48
	.byte		        c_v+48
	.byte		        c_v+48
	.byte		        c_v+48
	.byte		        c_v+48
	.byte	W01
	.byte		VOL   , 38*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+48
	.byte		        c_v+48
	.byte		        c_v+48
	.byte		        c_v+48
	.byte		        c_v+48
	.byte	W01
	.byte		VOL   , 37*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+48
	.byte		        c_v+48
	.byte		        c_v+48
	.byte		        c_v+49
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte		        c_v+49
	.byte		        c_v+49
	.byte		        c_v+49
	.byte		        c_v+49
	.byte	W01
	.byte		VOL   , 36*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+49
	.byte		        c_v+49
	.byte		        c_v+49
	.byte		        c_v+49
	.byte		        c_v+49
	.byte	W01
	.byte		VOL   , 35*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+49
	.byte		        c_v+49
	.byte		        c_v+49
	.byte		        c_v+49
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte		        c_v+49
	.byte		        c_v+50
	.byte		        c_v+50
	.byte		        c_v+50
	.byte	W01
	.byte		VOL   , 34*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+50
	.byte		        c_v+50
	.byte		        c_v+50
	.byte		        c_v+50
	.byte		        c_v+50
	.byte	W01
	.byte		VOL   , 33*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+50
	.byte		        c_v+50
	.byte		        c_v+50
	.byte		        c_v+50
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+50
	.byte		        c_v+50
	.byte		        c_v+50
	.byte		        c_v+50
	.byte		        c_v+50
	.byte	W01
	.byte		VOL   , 32*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+50
	.byte		        c_v+51
	.byte		        c_v+51
	.byte		        c_v+51
	.byte		        c_v+51
	.byte	W01
	.byte	PEND
@ 010   ----------------------------------------
mus_touhou8_stage1_boss_14_010:
	.byte		VOL   , 31*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+51
	.byte		        c_v+51
	.byte		        c_v+51
	.byte		        c_v+51
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+51
	.byte		        c_v+51
	.byte		        c_v+51
	.byte		        c_v+51
	.byte	W01
	.byte		VOL   , 30*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+51
	.byte		        c_v+51
	.byte		        c_v+51
	.byte		        c_v+51
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+52
	.byte		        c_v+52
	.byte		        c_v+52
	.byte		        c_v+52
	.byte		        c_v+52
	.byte	W01
	.byte		VOL   , 29*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+52
	.byte		        c_v+52
	.byte		        c_v+52
	.byte		        c_v+52
	.byte		        c_v+52
	.byte	W01
	.byte		VOL   , 28*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+52
	.byte		        c_v+52
	.byte		        c_v+52
	.byte		        c_v+52
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+52
	.byte		        c_v+52
	.byte		        c_v+52
	.byte		        c_v+53
	.byte		        c_v+53
	.byte	W01
	.byte		VOL   , 27*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+53
	.byte		        c_v+53
	.byte		        c_v+53
	.byte		        c_v+53
	.byte		        c_v+53
	.byte	W01
	.byte		VOL   , 26*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+53
	.byte		        c_v+53
	.byte		        c_v+53
	.byte		        c_v+53
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+53
	.byte		        c_v+53
	.byte		        c_v+53
	.byte		        c_v+53
	.byte		        c_v+53
	.byte	W01
	.byte		VOL   , 25*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+53
	.byte		        c_v+53
	.byte		        c_v+54
	.byte		        c_v+54
	.byte		        c_v+54
	.byte	W01
	.byte		VOL   , 24*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+54
	.byte		        c_v+54
	.byte		        c_v+54
	.byte		        c_v+54
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+54
	.byte		        c_v+54
	.byte		        c_v+54
	.byte		        c_v+54
	.byte	W01
	.byte		VOL   , 23*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+54
	.byte		        c_v+54
	.byte		        c_v+54
	.byte		        c_v+54
	.byte		        c_v+54
	.byte	W01
	.byte		VOL   , 22*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+54
	.byte		        c_v+55
	.byte		        c_v+55
	.byte		        c_v+55
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+55
	.byte		        c_v+55
	.byte		        c_v+55
	.byte		        c_v+55
	.byte		        c_v+55
	.byte	W01
	.byte		VOL   , 21*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+55
	.byte		        c_v+55
	.byte		        c_v+55
	.byte		        c_v+55
	.byte		        c_v+55
	.byte	W01
	.byte		VOL   , 20*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+55
	.byte		        c_v+55
	.byte		        c_v+55
	.byte		        c_v+55
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+56
	.byte		        c_v+56
	.byte		        c_v+56
	.byte		        c_v+56
	.byte		        c_v+56
	.byte	W01
	.byte		VOL   , 19*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+56
	.byte		        c_v+56
	.byte		        c_v+56
	.byte		        c_v+56
	.byte		        c_v+56
	.byte	W01
	.byte		VOL   , 18*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+56
	.byte		        c_v+56
	.byte		        c_v+56
	.byte		        c_v+56
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+56
	.byte		        c_v+56
	.byte		        c_v+56
	.byte		        c_v+57
	.byte		        c_v+57
	.byte	W01
	.byte		VOL   , 17*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+57
	.byte		        c_v+57
	.byte		        c_v+57
	.byte		        c_v+57
	.byte		        c_v+57
	.byte	W01
	.byte		VOL   , 16*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+57
	.byte		        c_v+57
	.byte		        c_v+57
	.byte		        c_v+57
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+57
	.byte		        c_v+57
	.byte		        c_v+57
	.byte		        c_v+57
	.byte		        c_v+57
	.byte	W01
	.byte		VOL   , 15*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+57
	.byte		        c_v+57
	.byte		        c_v+58
	.byte		        c_v+58
	.byte		        c_v+58
	.byte	W01
	.byte		VOL   , 14*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+58
	.byte		        c_v+58
	.byte		        c_v+58
	.byte		        c_v+58
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+58
	.byte		        c_v+58
	.byte		        c_v+58
	.byte		        c_v+58
	.byte	W01
	.byte		VOL   , 13*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+58
	.byte		        c_v+58
	.byte		        c_v+58
	.byte		        c_v+58
	.byte		        c_v+58
	.byte	W01
	.byte		VOL   , 12*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+58
	.byte		        c_v+59
	.byte		        c_v+59
	.byte		        c_v+59
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+59
	.byte		        c_v+59
	.byte		        c_v+59
	.byte		        c_v+59
	.byte		        c_v+59
	.byte	W01
	.byte		VOL   , 11*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+59
	.byte		        c_v+59
	.byte		        c_v+59
	.byte		        c_v+59
	.byte		        c_v+59
	.byte	W01
	.byte		VOL   , 10*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+59
	.byte		        c_v+59
	.byte		        c_v+59
	.byte		        c_v+59
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+60
	.byte		        c_v+60
	.byte		        c_v+60
	.byte		        c_v+60
	.byte		        c_v+60
	.byte	W01
	.byte		VOL   , 9*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+60
	.byte		        c_v+60
	.byte		        c_v+60
	.byte		        c_v+60
	.byte		        c_v+60
	.byte	W01
	.byte		VOL   , 8*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+60
	.byte		        c_v+60
	.byte		        c_v+60
	.byte		        c_v+60
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+60
	.byte		        c_v+60
	.byte		        c_v+60
	.byte		        c_v+61
	.byte		        c_v+61
	.byte	W01
	.byte		VOL   , 7*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+61
	.byte		        c_v+61
	.byte		        c_v+61
	.byte		        c_v+61
	.byte		        c_v+61
	.byte	W01
	.byte		VOL   , 6*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+61
	.byte		        c_v+61
	.byte		        c_v+61
	.byte		        c_v+61
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+61
	.byte		        c_v+61
	.byte		        c_v+61
	.byte		        c_v+61
	.byte		        c_v+61
	.byte	W01
	.byte		VOL   , 5*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+61
	.byte		        c_v+61
	.byte		        c_v+62
	.byte		        c_v+62
	.byte		        c_v+62
	.byte	W01
	.byte		VOL   , 4*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+62
	.byte		        c_v+62
	.byte		        c_v+62
	.byte		        c_v+62
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+62
	.byte		        c_v+62
	.byte		        c_v+62
	.byte		        c_v+62
	.byte		        c_v+62
	.byte	W01
	.byte		VOL   , 3*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+62
	.byte		        c_v+62
	.byte		        c_v+62
	.byte		        c_v+62
	.byte		        c_v+62
	.byte	W01
	.byte		VOL   , 2*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+62
	.byte		        c_v+63
	.byte		        c_v+63
	.byte		        c_v+63
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte		        c_v+63
	.byte		        c_v+63
	.byte		        c_v+63
	.byte		        c_v+63
	.byte	W01
	.byte		VOL   , 1*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+63
	.byte		        c_v+63
	.byte		        c_v+63
	.byte		        c_v+63
	.byte		        c_v+63
	.byte	W01
	.byte		VOL   , 0*mus_touhou8_stage1_boss_mvl/mxv
	.byte		BEND  , c_v+63
	.byte		        c_v+63
	.byte		        c_v+63
	.byte		        c_v+63
	.byte		        c_v+63
	.byte	W01
	.byte	PEND
	.byte		EOT   , Cn5 
	.byte		        Gn5 
	.byte		        Cn6 
	.byte		VOL   , 127*mus_touhou8_stage1_boss_mvl/mxv
	.byte	W48
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
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_14_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_14_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou8_stage1_boss_14_010
	.byte		EOT   , Cn5 
	.byte		        Gn5 
	.byte		        Cn6 
	.byte	FINE

@******************************************************@
	.align	2

mus_touhou8_stage1_boss:
	.byte	14	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_touhou8_stage1_boss_pri	@ Priority
	.byte	mus_touhou8_stage1_boss_rev	@ Reverb.

	.word	mus_touhou8_stage1_boss_grp

	.word	mus_touhou8_stage1_boss_1
	.word	mus_touhou8_stage1_boss_2
	.word	mus_touhou8_stage1_boss_3
	.word	mus_touhou8_stage1_boss_4
	.word	mus_touhou8_stage1_boss_5
	.word	mus_touhou8_stage1_boss_6
	.word	mus_touhou8_stage1_boss_7
	.word	mus_touhou8_stage1_boss_8
	.word	mus_touhou8_stage1_boss_9
	.word	mus_touhou8_stage1_boss_10
	.word	mus_touhou8_stage1_boss_11
	.word	mus_touhou8_stage1_boss_12
	.word	mus_touhou8_stage1_boss_13
	.word	mus_touhou8_stage1_boss_14

	.end
