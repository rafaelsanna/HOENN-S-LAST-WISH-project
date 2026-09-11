	.include "MPlayDef.s"

	.equ	mus_my_love_mine_all_mine_mitski_grp, voicegroup_diva_pop
	.equ	mus_my_love_mine_all_mine_mitski_pri, 0
	.equ	mus_my_love_mine_all_mine_mitski_rev, reverb_set+12
	.equ	mus_my_love_mine_all_mine_mitski_mvl, 90
	.equ	mus_my_love_mine_all_mine_mitski_key, 0
	.equ	mus_my_love_mine_all_mine_mitski_tbs, 1
	.equ	mus_my_love_mine_all_mine_mitski_exg, 0
	.equ	mus_my_love_mine_all_mine_mitski_cmp, 1

	.section .rodata
	.global	mus_my_love_mine_all_mine_mitski
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_my_love_mine_all_mine_mitski_1:
	.byte	KEYSH , mus_my_love_mine_all_mine_mitski_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 40*mus_my_love_mine_all_mine_mitski_tbs/2
	.byte		VOICE , 7
	.byte		VOL   , 100*mus_my_love_mine_all_mine_mitski_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N92   , En2 , v048
	.byte		N92   , An2 
	.byte		N23   , An3 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		TIE   , Gs3 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N24   , Bn3 
	.byte	W12
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N68   , Bn3 
	.byte	W12
	.byte		N11   , Fs3 
	.byte		N11   , Cn4 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N11   , An2 
	.byte		N11   , Fn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N32   
	.byte	W12
	.byte		N05   , Fn2 
	.byte		N11   , Cs4 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte		N11   , Bn3 
	.byte	W06
	.byte		N05   , Bn1 
	.byte	W06
@ 002   ----------------------------------------
	.byte		N11   , An1 
	.byte		TIE   , An3 
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W12
	.byte		N11   , En2 
	.byte		N11   , Gs2 
	.byte		N11   , Cs3 
	.byte	W11
	.byte		EOT   , Gs3 
	.byte	W01
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N17   , Gs3 
	.byte	W06
	.byte		N11   , En2 
	.byte		N11   , Gs2 
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N28   , Gs3 
	.byte	W06
	.byte		N11   , En2 
	.byte		N11   , Gs2 
	.byte		N11   , Cs3 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Cs2 
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N05   , Bn3 
	.byte	W06
	.byte		N11   
	.byte	W06
	.byte		        Gs2 
	.byte		N11   , Bn2 
	.byte		N11   , Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs2 
	.byte		N11   , Bn2 
	.byte		N11   , Fn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W12
	.byte		N28   , Cs4 
	.byte	W06
	.byte		N11   , Gs2 
	.byte		N11   , Bn2 
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Dn2 
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N17   , Bn3 
	.byte	W06
	.byte		N11   , An2 
	.byte		N11   , Cs3 
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N05   , An3 
	.byte	W05
	.byte		EOT   
	.byte	W01
	.byte		N17   , Bn3 
	.byte	W06
	.byte		N11   , An2 
	.byte		N11   , Cs3 
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		N28   
	.byte	W06
	.byte		N11   , An2 
	.byte		N11   , Cs3 
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N11   
	.byte		N11   , En4 
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N11   , Cn4 
	.byte	W06
	.byte		        An2 
	.byte		N11   , Cs3 
	.byte		N11   , Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An2 
	.byte		N11   , Cs3 
	.byte		N11   , Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N05   
	.byte		N28   , An3 
	.byte	W06
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 006   ----------------------------------------
	.byte		N11   , An1 
	.byte	W12
	.byte		N23   , An3 
	.byte	W12
	.byte		N11   , En2 
	.byte		N11   , Gs2 
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En2 
	.byte		N11   , Gs2 
	.byte		N11   , Cs3 
	.byte		N05   , Gs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N28   , Bn3 
	.byte	W06
	.byte		N11   , En2 
	.byte		N11   , Gs2 
	.byte		N11   , Cs3 
	.byte	W24
@ 007   ----------------------------------------
	.byte		        Cs2 
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Cs2 
	.byte		N05   , Bn3 
	.byte	W06
	.byte		N11   
	.byte	W06
	.byte		        Gs2 
	.byte		N11   , Bn2 
	.byte		N11   , Fn3 
	.byte	W06
	.byte		N05   , An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N17   , Bn3 
	.byte	W06
	.byte		N11   , Gs2 
	.byte		N11   , Bn2 
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        Cs2 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N23   
	.byte	W06
	.byte		N11   , Gs2 
	.byte		N11   , Bn2 
	.byte		N11   , Fn3 
	.byte	W18
	.byte		        Bn3 
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N11   , Dn2 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N17   , Bn3 
	.byte	W06
	.byte		N11   , An2 
	.byte		N11   , Cs3 
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W06
	.byte		        An2 
	.byte		N11   , Cs3 
	.byte		N11   , Fs3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An2 
	.byte		N11   , Cs3 
	.byte		N11   , Fs3 
	.byte	W06
	.byte		N05   , Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N17   , En4 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N11   , Cs4 
	.byte	W06
	.byte		        An2 
	.byte		N11   , Cs3 
	.byte		N11   , Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An2 
	.byte		N11   , Cs3 
	.byte		N11   , Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N17   , An3 
	.byte	W06
	.byte		N05   , Dn2 
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte		N05   , Fs2 
	.byte		N05   , Fs3 
	.byte	W06
	.byte		        Bn1 
	.byte		N18   , En2 
	.byte		N23   , En3 
	.byte	W06
@ 010   ----------------------------------------
	.byte		N11   , An1 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		        An2 
	.byte		N17   , Fs3 
	.byte	W06
	.byte		N05   , Cs3 
	.byte		N05   , En3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte		N05   , An2 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Cs2 
	.byte		N11   , Bn2 
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N05   , Cs2 
	.byte		N11   , Bn2 
	.byte		N11   , Bn3 
	.byte	W06
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Gs2 
	.byte		N05   , Bn2 
	.byte		N28   , Bn3 
	.byte	W06
	.byte		N05   , Bn2 
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 011   ----------------------------------------
	.byte		N17   , En2 
	.byte		N17   , En3 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte		N17   , Fs3 
	.byte	W06
	.byte		N05   , Fs2 
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte		N05   , An2 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N11   , Bn2 
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N11   , Bn3 
	.byte	W06
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        An2 
	.byte		N11   , Bn3 
	.byte	W06
	.byte		N05   , Cs3 
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        An2 
	.byte		N11   , An3 
	.byte	W06
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Gs2 
	.byte		N11   , An2 
	.byte		N11   , An3 
	.byte	W06
@ 012   ----------------------------------------
	.byte	W06
	.byte		N05   , Bn2 
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        En2 
	.byte		N05   , Bn2 
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        An2 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N05   , En3 
	.byte		N11   , Bn3 
	.byte	W06
	.byte		N05   , An2 
	.byte	W06
	.byte		        En2 
	.byte		N05   , An2 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Cs2 
	.byte		N11   , Bn2 
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N05   , Cs2 
	.byte		N11   , An2 
	.byte		N11   , An3 
	.byte	W06
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Gs2 
	.byte		N11   , Cs3 
	.byte		N11   , Cs4 
	.byte	W06
	.byte		N05   , Bn2 
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        Gs2 
	.byte		N05   , An2 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Fn2 
	.byte		N17   , Fs2 
	.byte		N17   , Fs3 
	.byte	W06
	.byte		N05   , Cs2 
	.byte	W06
@ 013   ----------------------------------------
	.byte	W06
	.byte		        Dn2 
	.byte		N11   , En2 
	.byte		N11   , En3 
	.byte	W06
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        An2 
	.byte		N23   , Fs3 
	.byte	W06
	.byte		N05   , Fs2 
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte		N11   , Bn2 
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N11   , Bn3 
	.byte	W06
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        An2 
	.byte		N11   , Bn2 
	.byte		N11   , Bn3 
	.byte	W06
	.byte		N05   , Cs3 
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        An2 
	.byte		N05   , Cs3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		        Fn2 
	.byte		N05   , Bn2 
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N05   , An2 
	.byte		N05   , An3 
	.byte	W06
@ 014   ----------------------------------------
	.byte		N44   , Bn2 
	.byte		N44   , Bn3 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N44   , Dn2 
	.byte		N32   , Dn3 
	.byte	W01
	.byte		        Fn3 
	.byte	W02
	.byte		        An3 
	.byte	W01
	.byte		N30   , Cs4 
	.byte	W32
	.byte		N11   
	.byte	W12
@ 015   ----------------------------------------
	.byte		N23   , An3 
	.byte		N92   , Cs4 
	.byte	W06
	.byte		N05   , En2 
	.byte	W06
	.byte		        Cs3 
	.byte		N11   , En3 
	.byte	W06
	.byte		N05   , En2 
	.byte	W06
	.byte		N23   , Gs3 
	.byte	W06
	.byte		N05   , En2 
	.byte	W06
	.byte		        Cs3 
	.byte		N11   , En3 
	.byte	W06
	.byte		N05   , En2 
	.byte	W06
	.byte		N24   , Gs3 
	.byte	W06
	.byte		N05   , En2 
	.byte	W06
	.byte		        Cs3 
	.byte		N11   , En3 
	.byte	W06
	.byte		N05   , En2 
	.byte	W06
	.byte		N48   , Gs3 
	.byte	W06
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N11   , En3 
	.byte	W06
	.byte		N05   , An2 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Gs2 
	.byte		N23   , An3 
	.byte	W12
	.byte		N05   , Fn2 
	.byte		N11   , Fn3 
	.byte	W06
	.byte		N05   , Bn2 
	.byte	W06
	.byte		        Fn2 
	.byte		N23   , Gs3 
	.byte	W06
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N11   , Fn3 
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N05   , Gs2 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N11   , Gs4 
	.byte	W06
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        Bn2 
	.byte		N28   , Gs4 
	.byte	W06
	.byte		N23   , Bn3 
	.byte	W12
	.byte		N05   , Bn2 
	.byte		N11   , Fn3 
	.byte	W06
	.byte		N05   , Fn2 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Dn2 
	.byte		N23   , An3 
	.byte	W06
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Cs3 
	.byte		N11   , En3 
	.byte	W06
	.byte		N05   , An2 
	.byte	W06
	.byte		        Fs2 
	.byte		N23   , Gs3 
	.byte	W12
	.byte		N11   , En3 
	.byte	W06
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Cs3 
	.byte		N24   , Gs3 
	.byte	W06
	.byte		N05   , Fs2 
	.byte	W06
	.byte		N11   , En3 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		TIE   , Gs3 
	.byte	W06
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        An2 
	.byte		N11   , En3 
	.byte	W06
	.byte		N05   , Gs2 
	.byte	W06
@ 018   ----------------------------------------
	.byte		        Fn2 
	.byte		N24   , Bn3 
	.byte	W12
	.byte		N32   , An3 
	.byte	W06
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		TIE   , Bn3 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N11   , An3 
	.byte	W12
	.byte		N05   , Cs3 
	.byte		N11   , Fn4 
	.byte	W06
	.byte		N05   , Dn2 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Fn2 
	.byte		N11   , En4 
	.byte	W06
	.byte		N05   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N11   , Dn4 
	.byte	W06
	.byte		N05   , Bn1 
	.byte		N05   , An3 
	.byte	W06
	.byte		N11   , Cs4 
	.byte	W06
	.byte		N05   , Bn2 
	.byte		N05   , An3 
	.byte	W06
@ 019   ----------------------------------------
	.byte		        An1 
	.byte		N11   , An3 
	.byte		TIE   , Cs4 
	.byte	W12
	.byte		N05   , Cs2 
	.byte		N05   , En2 
	.byte		N05   , Gs2 
	.byte		N23   , An2 
	.byte		N23   , An3 
	.byte	W12
	.byte		N05   , An1 
	.byte	W12
	.byte		        Cs2 
	.byte		N05   , En2 
	.byte		N05   , Gs2 
	.byte		N11   , Bn2 
	.byte		N11   , Bn3 
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N05   , An1 
	.byte		N05   , Gs2 
	.byte		N05   , Gs3 
	.byte	W05
	.byte		EOT   
	.byte	W01
	.byte		N05   , Gs2 
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        Cs2 
	.byte		N05   , En2 
	.byte		N05   , Gs2 
	.byte		N05   , Gs3 
	.byte	W06
	.byte		N28   , Bn2 
	.byte		N28   , En3 
	.byte		N28   , Bn3 
	.byte	W06
	.byte		N05   , An1 
	.byte	W12
	.byte		        Cs2 
	.byte		N05   , En2 
	.byte		N05   , Gs2 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Cs2 
	.byte		N11   , Bn2 
	.byte		N11   , Fn3 
	.byte		N11   , Bn3 
	.byte	W06
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Fn2 
	.byte		N05   , Gs2 
	.byte		N05   , Bn2 
	.byte		N05   , Fn3 
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Cs2 
	.byte		N23   , Bn2 
	.byte		N11   , Fn3 
	.byte		N11   , Bn3 
	.byte	W06
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N05   
	.byte		N05   , An2 
	.byte		N05   , Fn3 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Fn2 
	.byte		N05   , Gs2 
	.byte		N05   , Bn2 
	.byte		N05   , Dn3 
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        Cs2 
	.byte		N17   , Bn2 
	.byte		N17   , Gs3 
	.byte		N17   , Bn3 
	.byte	W06
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte		N28   , Gs2 
	.byte		N05   , Bn2 
	.byte		N05   , Cs3 
	.byte		N05   , Cs4 
	.byte	W05
	.byte		EOT   
	.byte	W01
	.byte		N05   , Cs2 
	.byte		N23   , Cs3 
	.byte		N23   , Fn3 
	.byte		N23   , Gs3 
	.byte		N23   , Cs4 
	.byte	W06
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte		N05   , Gs2 
	.byte		N05   , Bn2 
	.byte	W06
	.byte		        Cs2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 
	.byte		N11   , Bn3 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N05   
	.byte		N05   , Cs3 
	.byte		N05   , An3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		        Fs2 
	.byte		N05   , An2 
	.byte		N05   , Cs3 
	.byte		N05   , An3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		        Dn2 
	.byte		N17   , Bn2 
	.byte		N17   , Fs3 
	.byte		N17   , Bn3 
	.byte	W06
	.byte		N05   , Dn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs2 
	.byte		N05   , An2 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N11   , Dn3 
	.byte		N11   , Fs3 
	.byte		N23   , Dn4 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N05   
	.byte		N11   , Dn3 
	.byte		N11   , Fs3 
	.byte		N11   , Dn4 
	.byte	W06
	.byte		N05   , Fs2 
	.byte		N05   , An2 
	.byte	W06
	.byte		        Dn2 
	.byte		N11   , Cs3 
	.byte		N11   , Fs3 
	.byte		N11   , Cs4 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N05   
	.byte		N05   , Cs3 
	.byte		N05   , An3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		        Fs2 , v056
	.byte		N05   , An2 
	.byte		N05   , En3 
	.byte		N05   , An3 
	.byte		N23   , En4 
	.byte	W06
	.byte		N05   , Dn2 
	.byte		N11   , Fs3 
	.byte		N11   , An3 
	.byte		N11   , Fs4 
	.byte	W06
@ 022   ----------------------------------------
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N05   
	.byte		N05   , En3 
	.byte		N05   , En4 
	.byte	W06
	.byte		        Fn2 
	.byte		N05   , An2 
	.byte		N05   , Dn3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte		N11   , Cs3 
	.byte		N11   , Fn3 
	.byte		N11   , An3 
	.byte		N11   , Cs4 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N05   
	.byte		N05   , Bn2 
	.byte		N05   , Dn3 
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Fn2 , v060
	.byte		N05   , An2 
	.byte		N05   , Dn3 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte		N11   , Bn3 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N05   
	.byte		N06   , An2 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Fn2 
	.byte		N05   , An2 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N44   , An2 
	.byte		N06   , Dn3 
	.byte		N17   , Fn3 
	.byte		N17   , An3 
	.byte	W06
	.byte		N05   , Dn2 
	.byte		N11   , Dn3 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N02   
	.byte		N05   , Fs3 
	.byte		N05   , Fs4 
	.byte	W06
	.byte		N02   , Dn2 
	.byte		N23   , En3 
	.byte		N23   , An3 
	.byte		N23   , Cs4 
	.byte		N23   , En4 
	.byte	W03
	.byte		N02   , Dn3 
	.byte	W03
@ 023   ----------------------------------------
	.byte	W09
	.byte		        En2 , v064
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		N17   , Fs3 
	.byte		N03   , An3 
	.byte		N06   , Cs4 
	.byte		N17   , Fs4 
	.byte	W03
	.byte		N06   , An3 
	.byte	W03
	.byte		N11   , Cs4 
	.byte	W03
	.byte		N08   , An3 
	.byte	W03
	.byte		N02   , En3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        An2 
	.byte		N05   , An3 
	.byte		N05   , An4 
	.byte	W03
	.byte		N02   , En2 
	.byte	W03
	.byte		        Cs2 
	.byte		N11   , Bn3 
	.byte		N11   , En4 
	.byte		N11   , Bn4 
	.byte	W12
	.byte		N02   , Cs2 
	.byte		N11   , Bn3 
	.byte		N40   , Fn4 
	.byte		N11   , Bn4 
	.byte	W03
	.byte		N02   , Gs2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gs3 
	.byte		N03   , Bn3 
	.byte		N28   , Fn4 
	.byte		N28   , Bn4 
	.byte	W03
	.byte		N02   , Bn3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Cs2 
	.byte	W09
@ 024   ----------------------------------------
	.byte		N17   , En3 
	.byte		N17   , An3 
	.byte		N17   , Cs4 
	.byte		N17   , En4 
	.byte	W06
	.byte		N02   , Dn2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		N17   , Fs3 
	.byte	W03
	.byte		N02   , An3 
	.byte		N17   , Fs4 
	.byte	W03
	.byte		N02   , Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        An2 
	.byte		N05   , An3 
	.byte		N05   , An4 
	.byte	W03
	.byte		N02   , Dn2 
	.byte	W03
	.byte		N11   , Bn3 
	.byte		N11   , Dn4 
	.byte		N11   , Fs4 
	.byte		N11   , Bn4 
	.byte	W12
	.byte		N02   , Dn2 
	.byte		N11   , Bn3 
	.byte		N11   , Dn4 
	.byte		N11   , Fn4 
	.byte		N11   , Bn4 
	.byte	W03
	.byte		N02   , An2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        An3 
	.byte		N11   , Fn4 
	.byte		N11   , Bn4 
	.byte	W03
	.byte		N02   , Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Fn3 
	.byte		N11   , An3 
	.byte		N11   , Dn4 
	.byte		N11   , Fn4 
	.byte		N11   , An4 
	.byte	W03
	.byte		N02   , Dn3 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		N11   , An3 
	.byte		N11   , Cs4 
	.byte		N11   , En4 
	.byte		N11   , An4 
	.byte	W06
@ 025   ----------------------------------------
	.byte	W06
	.byte		N05   , Bn3 
	.byte		N05   , En4 
	.byte		N05   , Bn4 
	.byte	W03
	.byte		N02   , En2 
	.byte	W03
	.byte		        An2 
	.byte		N05   , Bn3 
	.byte		N05   , En4 
	.byte		N05   , Bn4 
	.byte	W03
	.byte		N02   , Cs3 
	.byte	W03
	.byte		        En3 
	.byte		N05   , Cs4 
	.byte		N05   , En4 
	.byte		N05   , An4 
	.byte	W03
	.byte		N02   , An3 
	.byte	W03
	.byte		        Cs4 
	.byte		N11   , En4 
	.byte		N11   , Bn4 
	.byte	W03
	.byte		N02   , An3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        An2 
	.byte		N05   , An3 
	.byte		N05   , An4 
	.byte	W03
	.byte		N02   , En2 
	.byte	W03
	.byte		        Cs2 
	.byte		N11   , Bn3 
	.byte		N11   , En4 
	.byte		N11   , Bn4 
	.byte	W12
	.byte		N02   , Cs2 
	.byte		N11   , An3 
	.byte		N11   , Cs4 
	.byte		N11   , Fn4 
	.byte		N11   , An4 
	.byte	W03
	.byte		N02   , Gs2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gs3 
	.byte		N06   , Cs4 
	.byte		N11   , Fn4 
	.byte		N11   , An4 
	.byte	W03
	.byte		N02   , Bn3 
	.byte	W03
	.byte		N05   , Cs4 
	.byte	W03
	.byte		N02   , Bn3 
	.byte	W03
	.byte		        Fn3 
	.byte		N05   , An3 
	.byte		N05   , An4 
	.byte	W03
	.byte		N02   , Cs3 
	.byte	W03
	.byte		        Gs2 
	.byte		N17   , Fs3 
	.byte		N17   , An3 
	.byte		N17   , Dn4 
	.byte		N17   , Fs4 
	.byte	W03
	.byte		N02   , Cs2 
	.byte	W09
@ 026   ----------------------------------------
	.byte	W06
	.byte		        Dn2 
	.byte		N11   , En3 
	.byte		N11   , An3 
	.byte		N11   , En4 
	.byte	W03
	.byte		N02   , An2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        An3 
	.byte		N23   , Fs4 
	.byte	W03
	.byte		N02   , Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		N11   , Bn3 
	.byte		N11   , Fs4 
	.byte		N11   , Bn4 
	.byte	W12
	.byte		N02   , Dn2 
	.byte		N11   , Bn3 
	.byte		N11   , Fn4 
	.byte		N11   , Bn4 
	.byte	W03
	.byte		N02   , An2 , v068
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		N11   , Bn3 
	.byte		N11   , Fn4 
	.byte		N11   , Bn4 
	.byte	W03
	.byte		N02   , Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Fn3 
	.byte		N05   , Cs4 
	.byte		N05   , Fn4 
	.byte		N05   , An4 
	.byte	W03
	.byte		N02   , Dn3 
	.byte	W03
	.byte		        An2 
	.byte		N23   , Bn3 
	.byte		N05   , Fn4 
	.byte		N05   , Bn4 
	.byte	W03
	.byte		N02   , Dn2 
	.byte	W03
	.byte		N05   , An3 
	.byte		N05   , Cs4 
	.byte		N05   , Fn4 
	.byte		N05   , An4 
	.byte	W06
@ 027   ----------------------------------------
	.byte		        An3 
	.byte		N05   , Cs4 
	.byte		N05   , En4 
	.byte		N05   , An4 
	.byte	W06
	.byte		        Bn3 
	.byte		N05   , En4 
	.byte		N05   , Bn4 
	.byte	W03
	.byte		N02   , En2 
	.byte	W03
	.byte		        An2 
	.byte		N05   , Bn3 
	.byte		N05   , En4 
	.byte		N05   , Bn4 
	.byte	W03
	.byte		N02   , Cs3 
	.byte	W03
	.byte		        En3 
	.byte		N05   , Cs4 
	.byte		N05   , En4 
	.byte		N05   , An4 
	.byte	W03
	.byte		N02   , An3 
	.byte	W03
	.byte		        Cs4 
	.byte		N11   , En4 
	.byte		N11   , Bn4 
	.byte	W03
	.byte		N02   , An3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        An2 
	.byte		N05   , An3 
	.byte		N05   , An4 
	.byte	W03
	.byte		N02   , En2 
	.byte	W03
	.byte		        Cs2 
	.byte		N11   , Bn3 
	.byte		N11   , En4 
	.byte		N11   , Bn4 
	.byte	W12
	.byte		N02   , Cs2 
	.byte		N11   , An3 
	.byte		N11   , Cs4 
	.byte		N11   , Fn4 
	.byte		N11   , An4 
	.byte	W03
	.byte		N02   , Gs2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gs3 
	.byte		N06   , Cs4 
	.byte		N11   , Fn4 
	.byte		N11   , An4 
	.byte	W03
	.byte		N02   , Bn3 
	.byte	W03
	.byte		N05   , Cs4 
	.byte	W03
	.byte		N02   , Bn3 
	.byte	W03
	.byte		        Fn3 
	.byte		N05   , An3 
	.byte		N05   , An4 
	.byte	W03
	.byte		N02   , Cs3 
	.byte	W03
	.byte		N17   , Fs3 
	.byte		N17   , An3 
	.byte		N17   , Dn4 
	.byte		N17   , Fs4 
	.byte	W03
	.byte		N02   , Cs2 
	.byte	W09
@ 028   ----------------------------------------
	.byte	W06
	.byte		        Dn2 
	.byte		N11   , En3 
	.byte		N11   , An3 
	.byte	W03
	.byte		N02   , An2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        An3 
	.byte		N23   , Fs4 
	.byte	W03
	.byte		N02   , Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn3 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		N11   , Bn3 
	.byte		N11   , Fs4 
	.byte		N11   , Bn4 
	.byte	W12
	.byte		N02   , Dn2 
	.byte		N11   , Bn3 
	.byte		N11   , Fn4 
	.byte		N11   , Bn4 
	.byte	W03
	.byte		N02   , An2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		N11   , Bn3 
	.byte		N11   , Fn4 
	.byte		N11   , Bn4 
	.byte	W03
	.byte		N02   , Cs4 
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		        Fn3 
	.byte		N05   , Cs4 
	.byte		N05   , Fn4 
	.byte		N05   , An4 
	.byte	W03
	.byte		N02   , Dn3 
	.byte	W03
	.byte		TIE   , Bn3 
	.byte		N05   , Fn4 
	.byte		N05   , Bn4 
	.byte	W03
	.byte		N02   , Dn2 
	.byte	W03
	.byte		N05   , An3 
	.byte		N05   , Cs4 
	.byte		N05   , Fn4 
	.byte		N05   , An4 
	.byte	W06
@ 029   ----------------------------------------
	.byte		N92   , Dn2 
	.byte		N23   , Cs4 
	.byte		N92   , Bn4 
	.byte	W24
	.byte		N11   , Cs4 , v060
	.byte	W12
	.byte		        Cs4 , v056
	.byte	W12
	.byte		N23   , Cs4 , v052
	.byte	W24
	.byte		N11   , Cs4 , v048
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		EOT   , Bn3 
	.byte	W01
@ 030   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte		TIE   , En3 
	.byte		N92   , Cs4 
	.byte	W96
@ 031   ----------------------------------------
	.byte		N92   
	.byte	W92
	.byte	W03
	.byte		EOT   , Cs3 
	.byte		        En3 
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_my_love_mine_all_mine_mitski_2:
	.byte	KEYSH , mus_my_love_mine_all_mine_mitski_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 66*mus_my_love_mine_all_mine_mitski_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , An1 , v052
	.byte	W96
@ 001   ----------------------------------------
	.byte		N23   , Dn1 
	.byte	W66
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N11   
	.byte	W84
	.byte		N11   
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Cs1 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 005   ----------------------------------------
	.byte		N11   
	.byte	W96
@ 006   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Bn0 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N11   , Cs1 
	.byte	W36
	.byte		N11   
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 008   ----------------------------------------
	.byte		N11   , Dn1 
	.byte	W36
	.byte		N11   
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 009   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W54
	.byte		N05   
	.byte	W12
	.byte		        Dn1 , v056
	.byte	W18
@ 010   ----------------------------------------
	.byte		N11   , An1 
	.byte	W48
	.byte		N05   , Cs1 
	.byte	W48
@ 011   ----------------------------------------
mus_my_love_mine_all_mine_mitski_2_011:
	.byte		N05   , Dn1 , v056
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W42
	.byte	PEND
@ 012   ----------------------------------------
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W42
	.byte		        Cs1 
	.byte	W48
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_my_love_mine_all_mine_mitski_2_011
@ 014   ----------------------------------------
	.byte		N05   , Dn1 , v056
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W24
	.byte		N24   
	.byte	W48
@ 015   ----------------------------------------
	.byte		N05   , An1 
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
@ 016   ----------------------------------------
	.byte	W06
	.byte		        Cs1 
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W18
@ 017   ----------------------------------------
	.byte	W30
	.byte		        Dn1 
	.byte	W06
	.byte		        An1 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Dn1 
	.byte	W24
@ 018   ----------------------------------------
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Dn1 
	.byte	W24
	.byte		        An1 
	.byte	W18
	.byte		        Dn1 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        An1 , v056
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Cs1 
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
@ 021   ----------------------------------------
	.byte		        Dn1 
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		        Dn1 , v060
	.byte	W24
	.byte		N05   
	.byte	W24
@ 022   ----------------------------------------
	.byte		        Dn1 , v064
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W36
	.byte	W03
	.byte		N02   , Dn1 , v068
	.byte	W09
@ 023   ----------------------------------------
mus_my_love_mine_all_mine_mitski_2_023:
	.byte		N02   , An1 , v068
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte		        An1 
	.byte	W36
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Cs1 
	.byte	W03
	.byte		        Gs1 
	.byte	W36
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Cs1 
	.byte	W03
	.byte	PEND
@ 024   ----------------------------------------
	.byte		        Dn1 
	.byte	W03
	.byte		        An1 
	.byte	W36
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        An1 
	.byte	W36
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Dn1 
	.byte	W03
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_my_love_mine_all_mine_mitski_2_023
@ 026   ----------------------------------------
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		        An1 
	.byte	W36
	.byte	W03
	.byte		        An1 , v072
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        An1 
	.byte	W36
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Dn1 
	.byte	W03
@ 027   ----------------------------------------
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte		        An1 
	.byte	W36
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Cs1 
	.byte	W03
	.byte		        Gs1 
	.byte	W36
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Cs1 
	.byte	W03
@ 028   ----------------------------------------
	.byte		        Dn1 
	.byte	W03
	.byte		        An1 
	.byte	W36
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        An1 
	.byte	W36
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Dn1 
	.byte	W03
@ 029   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 030   ----------------------------------------
	.byte		        An1 , v052
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

mus_my_love_mine_all_mine_mitski:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_my_love_mine_all_mine_mitski_pri	@ Priority
	.byte	mus_my_love_mine_all_mine_mitski_rev	@ Reverb.

	.word	mus_my_love_mine_all_mine_mitski_grp

	.word	mus_my_love_mine_all_mine_mitski_1
	.word	mus_my_love_mine_all_mine_mitski_2

	.end
