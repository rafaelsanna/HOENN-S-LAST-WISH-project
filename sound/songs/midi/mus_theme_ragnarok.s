	.include "MPlayDef.s"

	.equ	mus_theme_ragnarok_grp, voicegroup_brothers
	.equ	mus_theme_ragnarok_pri, 0
	.equ	mus_theme_ragnarok_rev, reverb_set+19
	.equ	mus_theme_ragnarok_mvl, 90
	.equ	mus_theme_ragnarok_key, 0
	.equ	mus_theme_ragnarok_tbs, 1
	.equ	mus_theme_ragnarok_exg, 0
	.equ	mus_theme_ragnarok_cmp, 1

	.section .rodata
	.global	mus_theme_ragnarok
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_theme_ragnarok_1:
	.byte	KEYSH , mus_theme_ragnarok_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 94*mus_theme_ragnarok_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 94*mus_theme_ragnarok_mvl/mxv
	.byte		PAN   , c_v-8
	.byte		N06   , Gs2 , v044
	.byte	W06
	.byte		        Cs3 , v048
	.byte	W06
	.byte		        Ds3 , v052
	.byte	W06
	.byte		        Cs3 , v056
	.byte	W06
	.byte		        Ds3 , v060
	.byte	W06
	.byte		        Gs3 , v064
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        Gs3 , v072
	.byte	W06
	.byte		        Cs4 , v076
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds5 , v072
	.byte	W06
	.byte		        Cs5 , v068
	.byte	W06
	.byte		        Ds5 , v064
	.byte	W06
	.byte		        Cs5 , v060
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		        Cs5 , v052
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W06
	.byte		        Ds4 , v044
	.byte	W06
@ 002   ----------------------------------------
	.byte		        An2 
	.byte	W06
	.byte		        Cs3 , v048
	.byte	W06
	.byte		        Ds3 , v052
	.byte	W06
	.byte		        Cs3 , v056
	.byte	W06
	.byte		        Ds3 , v060
	.byte	W06
	.byte		        An3 , v064
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        An3 , v072
	.byte	W06
	.byte		        Cs4 , v076
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Ds5 , v072
	.byte	W06
	.byte		        Cs5 , v068
	.byte	W06
	.byte		        Ds5 , v064
	.byte	W06
	.byte		        Cs5 , v060
	.byte	W06
	.byte		        An4 , v056
	.byte	W06
	.byte		        Cs5 , v052
	.byte	W06
	.byte		        An4 , v048
	.byte	W06
	.byte		        Ds4 , v044
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn3 , v048
	.byte	W06
	.byte		        Ds3 , v052
	.byte	W06
	.byte		        Cn3 , v056
	.byte	W06
	.byte		        Ds3 , v060
	.byte	W06
	.byte		        Fs3 , v064
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        Fs3 , v072
	.byte	W06
	.byte		        Cn4 , v076
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Gn2 , v044
	.byte	W06
	.byte		        Cs3 , v048
	.byte	W06
	.byte		        Ds3 , v052
	.byte	W06
	.byte		        Cs3 , v056
	.byte	W06
	.byte		        Ds3 , v060
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        Gn3 , v072
	.byte	W06
	.byte		        Cs4 , v076
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Gs2 , v044
	.byte	W06
	.byte		        Cs3 , v048
	.byte	W06
	.byte		        Ds3 , v052
	.byte	W06
	.byte		        Cs3 , v056
	.byte	W06
	.byte		        Ds3 , v060
	.byte	W06
	.byte		        Gs3 , v064
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        Gs3 , v072
	.byte	W06
	.byte		        Cs4 , v076
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 007   ----------------------------------------
	.byte	TEMPO , 80*mus_theme_ragnarok_tbs/2
	.byte		        Gs2 , v044
	.byte	W06
	.byte		        Cn3 , v048
	.byte	W06
	.byte		        Gs2 , v052
	.byte	W06
	.byte		        Cn3 , v056
	.byte	W06
	.byte	TEMPO , 60*mus_theme_ragnarok_tbs/2
	.byte		        Ds3 , v060
	.byte	W06
	.byte		        Cn3 , v064
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        Gs3 , v072
	.byte	W06
	.byte	TEMPO , 50*mus_theme_ragnarok_tbs/2
	.byte		        Ds3 , v076
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 008   ----------------------------------------
	.byte	TEMPO , 99*mus_theme_ragnarok_tbs/2
	.byte		N96   , Gs4 
	.byte	W96
@ 009   ----------------------------------------
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 010   ----------------------------------------
mus_theme_ragnarok_1_010:
	.byte		N12   , Gs3 , v076
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	TEMPO , 93*mus_theme_ragnarok_tbs/2
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	TEMPO , 99*mus_theme_ragnarok_tbs/2
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_ragnarok_1_010
@ 013   ----------------------------------------
	.byte	TEMPO , 99*mus_theme_ragnarok_tbs/2
	.byte		N12   , An3 , v076
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	TEMPO , 93*mus_theme_ragnarok_tbs/2
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 015   ----------------------------------------
	.byte	TEMPO , 99*mus_theme_ragnarok_tbs/2
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	TEMPO , 93*mus_theme_ragnarok_tbs/2
	.byte		        Gn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	TEMPO , 99*mus_theme_ragnarok_tbs/2
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte	TEMPO , 93*mus_theme_ragnarok_tbs/2
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	TEMPO , 89*mus_theme_ragnarok_tbs/2
	.byte		        Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 019   ----------------------------------------
	.byte	TEMPO , 99*mus_theme_ragnarok_tbs/2
	.byte		N06   , Gs2 , v068
	.byte		N12   , Gs3 , v076
	.byte		N12   , Gs4 , v064
	.byte	W06
	.byte		N06   , Cs3 , v068
	.byte	W06
	.byte		        Ds3 
	.byte		N12   , En3 , v076
	.byte		N12   , En4 , v064
	.byte	W06
	.byte		N06   , Cs3 , v068
	.byte	W06
	.byte		N12   , Cs3 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Cs4 , v064
	.byte	W06
	.byte		N06   , Gs3 , v068
	.byte	W06
	.byte		N12   , Gs2 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Gs3 , v064
	.byte	W06
	.byte		N06   , Gs3 , v068
	.byte	W06
	.byte		N12   , En3 , v076
	.byte		N06   , Cs4 , v068
	.byte		N12   , En4 , v064
	.byte	W06
	.byte		N06   , Gs3 , v068
	.byte	W06
	.byte		N12   , Gs3 , v076
	.byte		N06   , Cs4 , v068
	.byte		N12   , Gs4 , v064
	.byte	W06
	.byte		N06   , Ds4 , v068
	.byte	W06
	.byte		N12   , Gs2 , v076
	.byte		N12   , Gs3 , v064
	.byte		N06   , Cs4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Cs3 , v076
	.byte		N12   , Cs4 , v064
	.byte		N06   , Gs4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 020   ----------------------------------------
	.byte		N12   , Gs3 , v076
	.byte		N06   , Gs4 , v064
	.byte		N06   , Gs4 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , En3 , v076
	.byte		N12   , En4 , v064
	.byte		N06   , Gs4 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , Cs3 , v076
	.byte		N12   , Cs4 , v064
	.byte		N06   , Ds5 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , Gs2 , v076
	.byte		N12   , Gs3 , v064
	.byte		N06   , Ds5 , v068
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N12   , En3 , v076
	.byte		N12   , En4 , v064
	.byte		N06   , Ds5 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , Gs3 , v076
	.byte		N12   , Gs4 , v064
	.byte		N06   , Ds5 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte	TEMPO , 93*mus_theme_ragnarok_tbs/2
	.byte		N12   , Gs2 , v076
	.byte		N12   , Gs3 , v064
	.byte		N06   , Gs4 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , Cs3 , v076
	.byte		N12   , Cs4 , v064
	.byte		N06   , Gs4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 021   ----------------------------------------
	.byte	TEMPO , 99*mus_theme_ragnarok_tbs/2
	.byte		        An2 
	.byte		N12   , An3 , v076
	.byte		N12   , An4 , v064
	.byte	W06
	.byte		N06   , Cs3 , v068
	.byte	W06
	.byte		        Ds3 
	.byte		N12   , En3 , v076
	.byte		N12   , En4 , v064
	.byte	W06
	.byte		N06   , Cs3 , v068
	.byte	W06
	.byte		N12   , Cs3 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Cs4 , v064
	.byte	W06
	.byte		N06   , An3 , v068
	.byte	W06
	.byte		N12   , An2 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , An3 , v068
	.byte	W06
	.byte		N12   , En3 , v076
	.byte		N06   , Cs4 , v068
	.byte		N12   , En4 , v064
	.byte	W06
	.byte		N06   , An3 , v068
	.byte	W06
	.byte		N12   , An3 , v076
	.byte		N06   , Cs4 , v068
	.byte		N12   , An4 , v064
	.byte	W06
	.byte		N06   , Ds4 , v068
	.byte	W06
	.byte		N12   , An2 , v076
	.byte		N12   , An3 , v064
	.byte		N06   , Cs4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Cs3 , v076
	.byte		N12   , Cs4 , v064
	.byte		N06   , An4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 022   ----------------------------------------
	.byte		N12   , An3 , v076
	.byte		N06   , An4 , v064
	.byte		N06   , An4 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , En3 , v076
	.byte		N12   , En4 , v064
	.byte		N06   , An4 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , Cs3 , v076
	.byte		N12   , Cs4 , v064
	.byte		N06   , Ds5 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , An2 , v076
	.byte		N12   , An3 , v064
	.byte		N06   , Ds5 , v068
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N12   , En3 , v076
	.byte		N12   , En4 , v064
	.byte		N06   , Ds5 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , An3 , v076
	.byte		N12   , An4 , v064
	.byte		N06   , Ds5 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte	TEMPO , 93*mus_theme_ragnarok_tbs/2
	.byte		N12   , An2 , v076
	.byte		N12   , An3 , v064
	.byte		N06   , An4 , v068
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , Cs3 , v076
	.byte		N12   , Cs4 , v064
	.byte		N06   , An4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 023   ----------------------------------------
	.byte	TEMPO , 99*mus_theme_ragnarok_tbs/2
	.byte		        Fs2 
	.byte		N12   , Fs3 , v076
	.byte		N12   , Fs4 , v064
	.byte	W06
	.byte		N06   , Cn3 , v068
	.byte	W06
	.byte		        Ds3 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Ds4 , v064
	.byte	W06
	.byte		N06   , Cn3 , v068
	.byte	W06
	.byte		N12   , Cn3 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Fs3 , v068
	.byte	W06
	.byte		N12   , Fs2 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Fs3 , v064
	.byte	W06
	.byte		N06   , Fs3 , v068
	.byte	W06
	.byte		N12   , Ds3 , v076
	.byte		N06   , Cn4 , v068
	.byte		N12   , Ds4 , v064
	.byte	W06
	.byte		N06   , Fs3 , v068
	.byte	W06
	.byte		N12   , Fs3 , v076
	.byte		N06   , Cn4 , v068
	.byte		N12   , Fs4 , v064
	.byte	W06
	.byte		N06   , Ds4 , v068
	.byte	W06
	.byte		N12   , Fs2 , v076
	.byte		N12   , Fs3 , v064
	.byte		N06   , Cn4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Cn3 , v076
	.byte		N12   , Cn4 , v064
	.byte		N06   , Fs4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 024   ----------------------------------------
	.byte		        Gn2 
	.byte		N12   , Gn3 , v076
	.byte		N12   , Gn4 , v064
	.byte	W06
	.byte		N06   , Cs3 , v068
	.byte	W06
	.byte		        Ds3 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Ds4 , v064
	.byte	W06
	.byte		N06   , Cs3 , v068
	.byte	W06
	.byte		N12   , Cs3 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Cs4 , v064
	.byte	W06
	.byte		N06   , Gn3 , v068
	.byte	W06
	.byte		N12   , Gn2 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Gn3 , v068
	.byte	W06
	.byte		N12   , Ds3 , v076
	.byte		N06   , Cs4 , v068
	.byte		N12   , Ds4 , v064
	.byte	W06
	.byte		N06   , Gn3 , v068
	.byte	W06
	.byte		N12   , Gn3 , v076
	.byte		N06   , Cs4 , v068
	.byte		N12   , Gn4 , v064
	.byte	W06
	.byte		N06   , Ds4 , v068
	.byte	W06
	.byte	TEMPO , 93*mus_theme_ragnarok_tbs/2
	.byte		N12   , Gn2 , v076
	.byte		N12   , Gn3 , v064
	.byte		N06   , Cs4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Cs3 , v076
	.byte		N12   , Cs4 , v064
	.byte		N06   , Gn4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 025   ----------------------------------------
	.byte	TEMPO , 99*mus_theme_ragnarok_tbs/2
	.byte		        Gs2 
	.byte		N12   , Gs3 , v076
	.byte		N12   , Gs4 , v064
	.byte	W06
	.byte		N06   , Cs3 , v068
	.byte	W06
	.byte		        Ds3 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Ds4 , v064
	.byte	W06
	.byte		N06   , Cs3 , v068
	.byte	W06
	.byte	TEMPO , 93*mus_theme_ragnarok_tbs/2
	.byte		N12   , Cs3 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Cs4 , v064
	.byte	W06
	.byte		N06   , Gs3 , v068
	.byte	W06
	.byte		N12   , Gs2 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Gs3 , v064
	.byte	W06
	.byte		N06   , Gs3 , v068
	.byte	W06
	.byte	TEMPO , 89*mus_theme_ragnarok_tbs/2
	.byte		N12   , Ds3 , v076
	.byte		N06   , Cs4 , v068
	.byte		N12   , Ds4 , v064
	.byte	W06
	.byte		N06   , Gs3 , v068
	.byte	W06
	.byte		N12   , Gs3 , v076
	.byte		N06   , Cs4 , v068
	.byte		N12   , Gs4 , v064
	.byte	W06
	.byte		N06   , Ds4 , v068
	.byte	W06
	.byte	TEMPO , 83*mus_theme_ragnarok_tbs/2
	.byte		N12   , Gs2 , v076
	.byte		N12   , Gs3 , v064
	.byte		N06   , Cs4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Cs3 , v076
	.byte		N12   , Cs4 , v064
	.byte		N06   , Gs4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 026   ----------------------------------------
	.byte	TEMPO , 78*mus_theme_ragnarok_tbs/2
	.byte		        Gs2 
	.byte		N12   , Gs3 , v076
	.byte		N12   , Gs4 , v064
	.byte	W06
	.byte		N06   , Cn3 , v068
	.byte	W06
	.byte		        Gs2 
	.byte		N12   , Ds3 , v076
	.byte		N12   , Ds4 , v064
	.byte	W06
	.byte		N06   , Cn3 , v068
	.byte	W06
	.byte	TEMPO , 70*mus_theme_ragnarok_tbs/2
	.byte		N12   , Cn3 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Cn3 , v068
	.byte	W06
	.byte		N12   , Gs2 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Gs3 , v064
	.byte	W06
	.byte		N06   , Gs3 , v068
	.byte	W06
	.byte		        Ds3 , v076
	.byte		N06   , Ds3 , v068
	.byte		N12   , Ds4 , v064
	.byte	W06
	.byte		N06   , Gs3 , v068
	.byte	W06
	.byte		N12   , Gs3 , v076
	.byte		N06   , Cn4 , v068
	.byte		N12   , Gs4 , v064
	.byte	W06
	.byte		N06   , Gs3 , v068
	.byte	W06
	.byte	TEMPO , 60*mus_theme_ragnarok_tbs/2
	.byte		N12   , Gs2 , v076
	.byte		N12   , Gs3 , v064
	.byte		N06   , Cn4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Cn3 , v076
	.byte		N06   , Cn4 , v064
	.byte		N06   , Cn4 , v068
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 027   ----------------------------------------
	.byte	TEMPO , 50*mus_theme_ragnarok_tbs/2
	.byte		N96   , Gs3 , v076
	.byte		N06   , Gs4 , v064
	.byte		N06   , Gs4 , v068
	.byte	W06
	.byte		        Ds4 , v064
	.byte	W06
	.byte		        Gs4 , v060
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N12   , Ds5 , v048
	.byte	W60
@ 028   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_theme_ragnarok_2:
	.byte	KEYSH , mus_theme_ragnarok_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 82*mus_theme_ragnarok_mvl/mxv
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
	.byte		N96   , Cs1 , v064
	.byte	W96
@ 010   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 011   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 012   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 013   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 014   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 015   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 016   ----------------------------------------
	.byte		        Cs1 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 018   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Cs1 
	.byte	W96
@ 020   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 021   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 022   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 023   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 024   ----------------------------------------
	.byte		        Cs1 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 026   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 027   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_theme_ragnarok_3:
	.byte	KEYSH , mus_theme_ragnarok_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 76*mus_theme_ragnarok_mvl/mxv
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
	.byte	W72
	.byte		N06   , Cs4 , v072
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
@ 011   ----------------------------------------
mus_theme_ragnarok_3_011:
	.byte		N48   , Ds5 , v072
	.byte	W48
	.byte		        En5 
	.byte	W48
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N24   , Ds5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_ragnarok_3_011
@ 014   ----------------------------------------
	.byte		N24   , Ds5 , v072
	.byte	W24
	.byte		N54   , Cs5 
	.byte	W54
	.byte		N06   , En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
@ 015   ----------------------------------------
	.byte		N96   , Cn5 
	.byte	W96
@ 016   ----------------------------------------
	.byte		N48   , Cs5 
	.byte	W48
	.byte		N36   , As4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N72   , Gs4 
	.byte	W72
	.byte		N06   
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
@ 018   ----------------------------------------
	.byte		N72   , Cn5 
	.byte	W72
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_ragnarok_3_011
@ 020   ----------------------------------------
	.byte		N24   , Ds5 , v072
	.byte	W24
	.byte		N48   , Cs5 
	.byte	W48
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N48   , Ds5 
	.byte	W48
	.byte		N36   , En5 
	.byte	W36
	.byte		N12   , An4 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N24   , Ds5 
	.byte	W24
	.byte		N72   , Cs5 
	.byte	W72
@ 023   ----------------------------------------
	.byte		N96   , Cn5 
	.byte	W96
@ 024   ----------------------------------------
	.byte		N48   , Cs5 
	.byte	W48
	.byte		N36   , As4 
	.byte	W36
	.byte		N12   , Cn5 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N72   , Cs5 
	.byte	W72
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
@ 026   ----------------------------------------
	.byte		N96   , Cn5 
	.byte	W96
@ 027   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_theme_ragnarok_4:
	.byte	KEYSH , mus_theme_ragnarok_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 70*mus_theme_ragnarok_mvl/mxv
	.byte		PAN   , c_v-18
	.byte		TIE   , Gs3 , v060
	.byte		TIE   , Cs4 , v056
	.byte		TIE   , Gs4 
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs3 
	.byte		        Cs4 
	.byte		        Gs4 
@ 002   ----------------------------------------
	.byte		TIE   , An3 , v060
	.byte		TIE   , Cs4 , v056
	.byte		TIE   , An4 
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
	.byte		EOT   , An3 
	.byte		        Cs4 
	.byte		        An4 
@ 004   ----------------------------------------
	.byte		N96   , Fs3 , v060
	.byte		N96   , Cn4 , v056
	.byte		N96   , Fs4 
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Gn3 , v060
	.byte		N96   , Cs4 , v056
	.byte		N96   , Gn4 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Gs3 , v060
	.byte		N96   , Cs4 , v056
	.byte		N96   , Gs4 
	.byte	W96
@ 007   ----------------------------------------
	.byte		TIE   , Gs3 , v060
	.byte		TIE   , Cn4 , v056
	.byte		TIE   , Gs4 
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs3 
	.byte		        Cn4 
	.byte		        Gs4 
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
	.byte		TIE   , Cs3 , v060
	.byte		TIE   , En3 
	.byte		TIE   , Gs3 
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        En3 
	.byte		        Gs3 
@ 021   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte		TIE   , En3 
	.byte		TIE   , An3 
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        En3 
	.byte		        An3 
@ 023   ----------------------------------------
	.byte		N96   , Cn3 
	.byte		N96   , Ds3 
	.byte		N96   , Fs3 
	.byte	W96
@ 024   ----------------------------------------
	.byte		        Cs3 
	.byte		N96   , Ds3 
	.byte		N96   , Gn3 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Cs3 
	.byte		N96   , Ds3 
	.byte		N96   , Gs3 
	.byte	W96
@ 026   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte		TIE   , Ds3 
	.byte		TIE   , Gs3 
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Ds3 
	.byte		        Gs3 
@ 028   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_theme_ragnarok:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_theme_ragnarok_pri	@ Priority
	.byte	mus_theme_ragnarok_rev	@ Reverb.

	.word	mus_theme_ragnarok_grp

	.word	mus_theme_ragnarok_1
	.word	mus_theme_ragnarok_2
	.word	mus_theme_ragnarok_3
	.word	mus_theme_ragnarok_4

	.end
