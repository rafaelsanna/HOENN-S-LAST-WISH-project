#!/usr/bin/env python3
"""Instalador standalone do destaque Shiny no Party Menu.
pokeemerald-expansion 1.13.3
"""
from __future__ import annotations

import argparse
import base64
import hashlib
import json
import os
import shutil
import subprocess
import zlib
from datetime import datetime
from pathlib import Path

BASE_SHA256 = "aa7fb6dc1050ef15299da94088d26d138e64c3a77dc1387b2d3f0c40a3b97f77"
FINAL_SHA256 = "7127f9aa3430cc5ba5fa825a73f334550a03fbc9904cb505c3bba60ea4e49c5c"
ASSET_SHA256 = "d46394cac8db1cadb7062ccce9f3721ea347695bedd85563cacc7b78ef17d004"

C_REL = Path("src/party_menu.c")
ASSET_REL = Path("graphics/party_menu/shiny.png")
BACKUP_DIR = Path(".party_shiny_backup")

C_PAYLOAD = (
    'c-'
    'ri}|8m<nvM~C8o`SPmXI4&RN0NUgndFpy+180H=}7WqviWjVv_#9?NTQacVtZ#(b*t_x+&8#?+&a&(Z*rgHb~gYLAOVuHotfS9ovBPBl0c);Xf'
    '(QkM)x1x)pW6$Io2QM3-8Ka?A`p~*&m~KQ*U{FKe1QtQhmR)7YlEyzPqx+aN+3QX#nsKQ*Rae-eTeSf%g0S`fd`y|C`WVXbZTj(DASBslMH{`^'
    'E6#-nW<TEbH6k%AO~_&y&P~#)D9OIkQ7M@x}ovu6-'
    'v+bkVVc`^ogiP5^MeI;(J!2E*QaSATJ);biH3b(Zj)EaEMIQr>D3Or2Gt=hv>Ym<fVU?61&(uPfnPUqcJJFW9K={d!^FJAMYpVCp;0Dg$z`cBZ'
    'bq2z1|W9Xq^nba0pUI`MWfgEn;UCQCO+u<JFjop%d(uhz*gJ`l-'
    ';FKMouuQwClnI{mP`}X?AohIHAYp!e@4|_2QLf>7@H6Y#4S*G7iV01T{*P9?Q1XFvRXm{bRzNFtw{Oe6}4kuB8H><>(6c+eqa^o!4sVPfe_(-'
    '~cb7sk}A&>&5*OhZ)e|5dYfC6jzx1PU9)LPpMCk&nBOFz8V5Qy_(ayZxC7ia0Mv@a*_)b!;qo8?;nB?vv=o;#D^K1hvSRA#eW+WtLfeYFfQ5YE'
    'vQ`+|tL@opzv4C!hHQ+ox2>1d}CRB+eHciv`|AZf7n-'
    '6TZ=n7E;aqDH1=9})}@+ChTxLgy|_znR>+tC@G3_~6^K1Xi0BlF9eH1dVmoVHlwkt1x(}TZWQfCt`}5ipiod$S#zYic$&BU!sU#0k?$rYsUzR='
    '5|hVSjPAfu`qr#O_;cZKff}43cS=n6SiXJJOi*x>(^%%{CCmrT~0=q7Z>&6$FlV1LucGPmtLIqyWReW_E7U`GHQ=?uZQjN<*=vwa@kX>H0!-'
    ')yIYmsbjIxq>G7=db6a{G*Wb63MK1b3r{C2(-DI`IyJ5TDN?}ryDRJI8m2n-ld#y?TQhwF$jTOT5`uIwv=eR#?E6tvDMry6`u-'
    '<A{lP_dc#{JPq!F62k_Rl7b%WgyS8tBo}y#7#!9`(*NUrvXe)>&Kkp{@gTkzj}BdA)bmhCv=)q~F#Xoo;6=Q{=SM?zU*uM$f*zdG_q(ORLigES'
    'P^5C=ZrB#Z}l^xIq}e3p=#z_1dw0>-NT3S++$J!~(f(xq%fp3z&w^OlItQbKL3oMlcvX-Y4-'
    '!=I!WRJj&54WuV1dX{_TG<l&C0$0HuSV$*EW?{yP}W4;w{Vm1|TRF)BMiAfU83_3mCdt`rXNaCXic7NQz5F@L8`t!%L`moiWG%p(oc<K4C`=W?'
    '}Q~^m6=)XnPkw>KA9n^>8kCR6Kmr1vMI-WH9-'
    'OCH!Nc?HoIXgFfYyanEy&HW?Kp)r7CWHR_cB9_yT5qjttx_qcK1@az@OS)vG_H>?VJw@_3kLCzpvc17PhZcG-'
    'I4s(;UU0_KQfdCfXt}fZ8yj576P<NRqLmptjdn2+-'
    'bej6UBJBs;=C)&v`vASJRcdxa^KQlX`a?m)qBsW57Uo#N`f5?e<T{jee&q${p&;!Nj@f_bj;|N4j#Cy~~m4E-'
    '!by6BCfcNvkuQwE7<yv}*d><$zV+)qEp1!H>1{H{>p=S5t?RCK3*{wO^@J4lVshM87>Ax2=*|=Y>_dtHRi#)El5A+r_2c8r`_7dk}q7v=gl{h{'
    '5X7UG>OfYKDd8$%+{#i+js=z_JKPSO)geK~UG;#^1dLTNvc0AA)lJ#j;t6=>}Bbr8QzYt~DY}wQOB&LhA;KtUQbKPRsKV4pX^ygYbUgKp8)PQj'
    'YKJDV=2FgNq6L4G-_TZDj5JN@4_AiE;av@#OT34bQ&0$mqNd!)R3xo;?fD{Fqv#*I1hqD<Db{jmDspHob-'
    'C2cJG$Z=dl=i}hhb_lGF`dWaLqWqIB!s2Dyl1j=Gf8hC;GkN@`{|Bq+QJPWlb3$-'
    'XD7%283kZl8I71&1B%=H}?UVyeWwP&^!EW8lwfQ91$mD_*a*o!@ccn1Qdgmx8J6J6&z1ZKE(XW`Ax^Al^=s#bu-YwJ5);A{Yfw!a17t~`Hc?_m'
    '9VsL!j9y){&NL6xNc;`&#%dnZ><k(AKtK({*Z4*L3u)1&j}_UBKvn6|%GD~DyPTK!hGEWm*}SF!%T|MUO0oZzn;2Y|C;wdyexdnFgEQZYszTLN'
    '~d0IQjR9V)=~4ZvP0zz$5nUMav16<|2vNZ;M3`wzi&!IF1oY?fOuqZv3w?!~FO1S0^-VbL)@p%w%a)Aw!zu-'
    '9Nh&K$qYiU*brQ#7!@It+hR9xPqoXCM)lcEayj4KKX0n4KDc1hHo?Z_&1lq=<EO4^Qq2L7aC#jG(Rd9kdcaD|^?QaN|3lK9@mQSY#t1hFF#Q0o'
    '5#^BuEP00xQF06aw_<o3~=ktzZrVBV)Y~l{jzhtelykMSlfdYMi~i>_mO{c{{T`PR;WH|5mo<&I;%xlL^gM{*3Uj_S*MC(i5q`%J~X4e4IyX*6'
    'x!IJ=ohDklBPO4J?yad_HYJs;@wuZ7l5Rmp9R?D}1cQ&ojqaOHa1{r5Zm1b^WPlFVq6@)6$*A4-0pG6Uu-?+l88u-'
    'a~j2iiGSlS<B)w^}K!2p0wJhbx;>T235+2BK3>*`26E&Z2I1~9G+eFS|3f{FFLIrDQ=_p#xn5#u-<Kzjaaq^lYX;Z@0m(8`-'
    '6edrPE)B{Zacvzi))!>9sm%ebd)br~9)R_Mi@0e0Ks$`g>E6ZXIm57O21%oeVP88=%Q{FWY81_KcMW?Yc05(jU+IX394Emk1U4M!!B2`}9DROj'
    '^#hy;+2?LgRmLtx4$*jryqlhn+XMRqIP9ytxl}U8+i4RitiX<Ih2rxtHo9#}%o1;m%e#Po%2AgGFk#myT~QW^!NK7sGC=NZl4p^8VDZS5%wo66'
    '+SJ+w?$q`Mg<H7dd-ar0&oQoLkSENxenBFH*I$nz?gNX%?o$S-(i#k-'
    'PYsKp7`YA(RJp5ITziEU8$Z>f$^qQnd?98LkmhZ(*9X3N_oXukIU*jU%%Z%)VkQwGuNxRK<B&sI!hey@~3w&f>H!QuoY@m{HWlS&dawb)U0e2@'
    'paROilh+Dg0zy9%7^oLZNH|AQq3$CICV-7$Jz|#Rx$N2qOe}0s5?iAmoG*0$-lYWZ?3mY^I}Fz&@Mk$c2Ux1Y6-'
    'G9?;7UV|}p(8tEwHhY<o>B{MK!V#HXVt)m(BnJ6*VmsZ-'
    '(+WN6LF~U%m;?EiwLavzkQLNLSP5j8EO9nsoq8VlB`Eh0DMUokxGisBZF;+*hk=Zzkn#f!pp$+lX4cx1RV|8B+nf+pI0#LfI?n&=Ym?T-'
    'Eta(3OIDLeWFN}<`=zrAI2dSx9O5i_}3d<R<eP@HUMJ8<Eg2f8fCo@WYd$|t8HdrR_87wx1A=#eOqgKYZe2*Fb8=f^v)v^VDYCC0ms=?2)wI4t'
    '2m#qW-v@f2N`Umi;Y#s74M`a8Cobabt<!Yr|6|k%O<?2DXdK`VUj_D(T`&M8{PNH5T)c0fbYB3@Qgsf=mkdQn{pbnVg-VHBvBJg3z0%Sm6fU6#'
    'r5q(j%2HiR;*A8=$kF|j$^7{(i4;8u}D|9~*6jtiLBIJ(*ezmeh_v&H!1V}HQPLyG&K|gBLvmD%2Jw(GdDNZ?zpAKT;?-'
    'QmcX}&p%al`^Z;i$(z{)kcVHxRoTceMt8UghE+X+av)_Z5~uP&#s?u>5hF^vFsv=?@Xvi1a7K;}r?@<G5ciE=c|3T-'
    '0U#OOO4&g8iX_{jq}mi4J>-@QCBSg8h+-'
    '{i}HX0`>)%UZ{Q=md7a@54ki7$JCEn%<_lS$0W;3V*`9}689WP3rv12vHX5KwQC2|kxDM+vC^rZuKUV#Jy53WkuqJ6wbS(^#{F30l0%X;`x5fi'
    'So9$B!2bEj3w>8F;rA5@f2hdx<5*~F#3XK($H*R&n2d0(kZd`YMEpMC8ujF)T+8Qop=xU+d`*$?2a1G0lxHF5{G^0Gmggptxhiq@z9iufk<2l('
    '1Kt(j_gvH!Ex(A6m&CfnH9$oT>48rU6+V$yD7L!FY;q9ezh5QNALQbnvM_Q+KoaxB7!mVCOTSY8M3FX}UG^1riRH~PPSZ%xqm-'
    '`{;U3AvDY8l(DC^Qu%uX5xIwS^q74g2J&s0?G4~XJbiGdEvwUYwNY;U~X8nsWTO7q~Dx{*ZuBp#b%TBBY`h#yG(AjIQ-'
    '0OE(#k37z2mYrV8*Gy9WP?-'
    'To>D3j*xT4s+QWP81T`JNPIE>i|(XJF(UYSv;N4%mSUR4mU#;WTPJ*kLSaY2%)S}E@<3(|q4f*qGd7i+Ijp^+FxHfHfmoleETh*;o>*}di6u8i'
    'ia)$=UpF7$1FPPewFj^)x36j~XZWn7aTVqG|^%^Q0DYA-fe)|xpB_sa3@&{^DD!Hw<X@sxUE&ZRbpj>))wR+;oqPe<)BBgN4{X5p$@_|RM!R)k'
    'Tf-;2v19c2`*!~B;)A021otQ=Wa?hg0yT=q|+KV>7ItaU)O#(&D~MO>?zD0|-hz)H4%8Mk}X<BR%Pr^#A4I5}t@9v|-'
    'KSBe^{KGR~;s1MN}#8UsO)-)$6=-'
    ')6Q{y_FP2d+!(m=j#`Qqk@P$Mu^xo)<U+=Hnb6Ff`BmplMlkYtVoHkN>*p_j16H^&1R)=+&LH3;t^t46O0E-'
    '}`3$I*fi&cSlwckYg{j7fR1wR*!Nj)~8b^2nN%{{`Rk<F%U%{QExWeqmeae=Fw*X<oP6RaB*Obs5i}S{-'
    'H?2_7#^Dgz~GwA4T?4`EcGDx0N@o`tbeaY*_!8@JMUcdy{UvKJ1apWLdoH^~b5#^)5QKew@7T^*@ZVicdPDN&D<9>HG#0>I3;}Tkb5dD!Yetc<'
    'wIO3wP><Ad>7LaOWrjLy&d$^oBcQ0+apYzsMtVWp!3=81ZkzyK@2p{h<RbkIsNPv7d=JOpG^Qc%9Db+8d&KHQ!YE>bWzk^!#e!hNqj=bf>fdX`'
    'lT6%JUW{JN%&g#G1KF=DZMmsvUfeUpv7R2MqmhQZL8eI`!@Ydg!Fyo;&PRUDtsQyGybV&PjIg1+li!<(>h$u-'
    '#SDUM#Nc=@(ct+)zC5cJ^!5lxFX_y|{i|jo&WpARKX**U`cYU+=%6QM(M-'
    'nD|b(@mKhZ?T4YS2)WJ9J#^SuK&M~&h`Dv;+=jR0so^a)%T*9H!LA&1W=(H(?fOfUA6J0g>*F`+BKB(PEOaG6Vg&XaioC8KM6_d90Xnl!`+PV6'
    '@l$lmx5x!<Y9lhM5NKm@e_88=bzohyBIq*@&)lu?g(aLt;V1c4zOa}F_nrX#-'
    'f`BJv+_3c8w>9xL=MI<T#j|?p>NyN4jilW%0g!=*9mssSTMQW1v~<?<29FSymmB0e;dz&c~U3e<X}&9iTNrApDyaZphF{bY6eseV}^@sMV;=fV'
    '8vg#i-m28(;&-'
    '3uNTA)hz^KV?iv;A29Sh#SgPDrk19+P*`XN;&2Gr^2Y1(_4xa<6cqn4o*7atwAV)(PNUfp*!CQf#X~Y0J<c+g%zc_@89TGyUb*7@Q-'
    'F#<(5(2a$OWZuL*rJCDjsSM$u4>aVLBK01Zpg4D$+4PxGv*2;Zri~JetpQI+jNn;3cPJ>uCHMcY@AI7-'
    'SL<thxHPM>2HpAU4k+@oY(>R!G!jw>e1&nCegwtWqRK?DSE8uuK4*zs)DDcjQ^V+5;n!%(F>4=BR)~0cj!i#dKsW!W9sdiPpfosSd2D7{90^-'
    'e;C#;V3_<sELZdfmX&ecGKnbYOZwegt9RM$zIm2W-<roiVZEz-dsCoMpsw5=tqoCQ>FPvjD&3f$UEhtF<72@JyfkASU5{wBkh%d9v@Ho@^m0<l'
    '1Ms<!ycgbz>UCzRVv1y+54<2m;3VZF(8eAB2R{!`uve2EsJyYr&DXbrTQ{8Epg3oXFADh}6Ie|P%+xzNbvyOFCH0X++v%|18+Y2niR2?{9(Qb5'
    'Vk>kp<%H6XS&(o*%PhuK$MuJ3w&fLWcwy)*<ML?T0r3{jF89wR*WS?f=T3-3{Q}Dd_pJ^+7%euhgO_|sv&5B1a-'
    'k;w!Ud>AtOi?J*@|jy*0;7lgZkkOeZ<8V-'
    '6!$)6(I%7(k=QEFTB;<A@}Pkya8d2DD8r@1Ti;vzdE}NMRaTA*z6g)J+xgArAYEIb!a3>D#gL~z<O@gJ`**DK%^xYodIYHE~s>K$6Gof*tNHI5'
    'U(^YsCDA5s5QO;>A&2d1l{;w0YgA;x%PaphKVBV29NLo4K@H3V6pbuWsmqqL76EiouFX{?v!Rq#5*N&drmsPqlyz)r}ZwFF?i7$C`yYwjhTA~#'
    '6`h^OI!d8&jOWF$q}B7x{iQMBm|e}eVah$jMF3~5*p+$&p3GF`+%o>Xw8?ZnwTtXT?|pR-WOi2fEU#Rfgf1jwKXEo>9TdOdrU>>xmIQlz#ixch'
    'N17U0qO!p7Fo0H)Lkj1PzeL6f<Cy&{)47<4Rc@IvVuV{z(EJ$c%;VnYbUGKxOA7zx<X}{;#90G(kVmEpiGic=K86re5ABXmGE7L@K!{>R4uWru'
    '<CT_jaF>XfIw4t*6d%P0!fg#xiiOk4C_*}!3-'
    'XO(@qS9V?h;$PT<6rR|((6rYqxZ{Up<uOp20x$T$<2Xf0Tl?VpWc_AX$~WLE+@1pm3QXFh0~UC&$hKnTz2zP`3Nm?ls|+YbEehto}13QlP4jH?'
    'nE8yj~q%aWss_NWq0zGNM?<Y<eNWBrWAg6S*38gn17;hcINXkn%%;#Ey?&+lCK9B1atbk(|^JxeUGxVB?`U2%M$C_eTyg<<ZUIbp(I2XD+6N2D'
    'XI$phhzKk_#Il=)VmCJ&-|=G;lGz^fr@F7kehAXQw8eEoI9D7DCp3#I|-'
    'I$mF|7x&7x4zHpsJan${{(lO*cCeeY3?_(*%!k)cNWdj3oVzn8<_$*P8yGV!D$NDnC5TFM!N%AKNrw~#D#i9mqJGP_Z;Ln9s7;jp9aEtpn22_c'
    'h=F-'
    '{n_VIs3gcHHn7}xzQ;d*VXLSL}%G}m>0i|(vs|aQqTPgEGg}^|`oU~X<2!zdvX^zUJ@}QCVlmn|s8L@qn?g5vizGH`uATkq#0ZL%Qkga4<&JfT'
    's2|;BWNQs>$-bBG#Mxx?sIZ;PDRp!)pSkDF?1%S~u$_mKxqv@^h)4*D8fI&?-'
    'Jlb_{*`W=})x~BJx@;}V7!0755II`Q8Fx7~lefKGGvz01k{eNjDF*UmMIxebr6!A|v{jX8J9C>_A3#DbK%zwxdW*VTGiULk&Ozb9m01D6I5uP0'
    'ysyr96MBB%Z;N0}DIi%`6e`$rr(agsH!<k!HI8>-Hb_Gy1;2UYOusxW+%uZrJ$DAi-'
    's(HRKOcMtpcnStcY%9805xGNxCQveVWEM5*YKQy6#oJ!3LOhXbb1*q%CBQ@jE6eN_w0nFdZcK4Ab8^f=^iV^P3-'
    '{1T66=ET8Q^l*%?m!yalAOcj_wAPlf|%B50-'
    '~${%Rkrc9?5>=JgdIb|M@qLW9Ew#@teKw#$s(tU5%Wp?EgczkUDwq!pFPLvYi_F$}FSQv!DU{nnQucI>+0Nw!i!m^B;P7Efp`F@Q?t@zAU;ftl'
    'f*v13#R@D~`-0eY*q@8{pq8XgX?vw}ouJwU+y;-qCDB4rP1D6%<7SVp%42&r}!-'
    ';k(?JJnz)&U2?j;3ZVYCg`2d|KGykWaDx@b?O!OdZ+>ykQ48+_+(9TC{2ByD)w5!Z&R%VL22V4FAHz^*}kBHBwIkGG^K>R+#--'
    ';n9B}l96sXVn<B2|7GDAOqE3AQiVsMaJim+53sSh9z_Mw+v^))!Hh5rsu=plCJdtyV-5rw)mkw$Sd}1i(*&`_VFUZyA2iLzF>ba-'
    '73ip?X+pa=#`TrE#D4N)9Cktle5o%j<LmSNErgINE$#Hg7Ru?uo(HL-ObL;SqN5GkRec|p3XC`6Uc0E7)IpG_+OgD1XNDBvTX)Q^(V2GSz7zGL'
    'zM74k5U86jEpZ@f3LsBti(WT6sMs_&e&G3Ij}N=9*txx$EgWXj08=wIVTwUob4e6t!{hQ{QOn~x9&<enIIHcK)Pnc~<l-'
    'j|(f0Qs^bK2Y(#d7d3)}N~N!78qDdahF$@eSo_WYux(Z(VqhYtE>FdJM~5ZN8Z<#LUN_}JrvO8$~M!s-V08u*86!pYM9J(*_`%GyF_urOVao>-'
    '(LE;fC?K=~1!!%9U0EzCAf0QiaqWvq~EW+ZhUDsXWn_#`53a_<6w1vlec4^@7_QAzSM2OXfLJ9XEzTRwofwGPd8Fqe6PT|YWO&r?dr8Z>a=sXZ'
    'mv4pwVKfkw>(n+ICuEshWsGj0D7Tt34z&^xR3#w0(6bdCt~T-3<mG$uln=@w1nfGP1AQYR|Q4oBDl*f#ZA-sUQ!UO=+5=iH(UNR-vIFn~b{`95'
    '*UXmAmYs3?fm54IZu|E7q8oC7jTH9PrA{vVs=I<>gxRBd@P-'
    '}M@f@81vH=@(=sGlV2#DQs?Ft`xtdE2ViR+OFO#W_TPY7>3A^y(dk}O*D?&4@_q|>z6_jfUFW8uy$5_6VXf*sWNf{2p|8RDUzi?OAN+u2`xK|Z'
    'c%TT&yab7^+Cy@lZCkdIK$ZK0-kZ?OiZe)&Q3-PS|BvS4%ZqyQ(#mPr+&u8hT#_--'
    '}CZxIL1#3aYaL?&CYC#rX=M>fHCTUqN5QKLLW>VS?VAtY7GNn)NAC{wCxy)G+Mww$(ne7<%~jSZ5TT$E<30O{p)KM63n!Kim750?;4mZ6G*0SV'
    '9|z6$LC`Y*K`w2@Y}h^w}uU6KH!XC>HsMcS(s9X1i(PE)W&6%rVYd-a0Dt}oFxlq&CGO{GS)sL?;sSA&<Mv!5x$0>*-'
    'QhAyvoG#lclUbmGRH?DlZ5GG(k-'
    'L+?HsXs+2`kxv+_fHXTHmC}yNIR?MUH$XU(UkPey!xFuOSt7l!5z)+YET0V4L1=F$$3NL3}p*WbkxOP`#j67eUe@fA;&M`HBtuCJ57@#w<al@R'
    'Jb2JjsoB<=&Hu7<-'
    'O^2W|fVmvph_agQsij97|2m^Ep`F4cpC<Y$S+t32aQ*MpPAuAJu%Z<p%FzL_Gj;W+w~4vUc8aAvOoNKYeQz2QwLWca@T#ncxn{%Lz$kB16BhTr'
    'k4j2XGumz^SFMdIw9jZ5Usus090`&fG-FM(?k+IL3~uf{#YUY3uE2qZq;)dOBUXY?Z_N-'
    '|;mC%id{z%`nvLwW2Nv{9E0E8j^TE);oF8D3Yvv|0EYh`2VU@>dJGZ~)=;O@wLaK!NG&gmbA)lh9z!@fUfAs;qYV|t^P8e?=d`0#!XaoK|K%$L'
    '_6+fKQ%4s^upJkL7IzXbSgC(-$Maz>wo!YBw+jp||VWP%+@Ez;)eRUJ3WZdkaYCuU*GgE>k(a(}yID-'
    '}KcI*Lt=Z>M3QRuA&E?B~(y9v$T47%vT4r~D{rPQR6vkO$sJmDoZ0ub~FLF1CeEdF?BFQRq!N}C{DwqBJiU0@~G)yUMt(oB`XyUd}7pSA>J4?&'
    'RYhDM0ueG0A6gzB8$czcLi8^V-<<$QKuWQCLE7acNRt_hvNylNcT+;V21wSquvITY?Ww@BR}V-FAaKZWazu~poZcAObdKa=U=(yE}-IUb-EB^D'
    'NwfDqrwmo2AEYH>+d*lO=sunUyG*aTt2VH@eQQ@s3_Jwqi!kFBzE!z9uhue^><*oYqF?US3fjq0mep4d-'
    'G!oJVf^=yk$I2U5g7)_|!$8)yy_?wJRYAlPoDPvluahBNm*<QG`NqhqoSfQgE^-'
    'p8*fTqM$Bifv6FWk9%MVsh3yQL@AxgA71dvz9(q5;c~7%k0#n$!^U2(#B(NA3&zE-so@-+3W-'
    'l~qWxsW4yHYQuI)VL<iNkmRql1IG5Sm}iVmMb=kn+>h9XqHrYA4-z`ik~1dOTyZ~D+F$CJ7`=FL`VbWtYBKj`&E7Uc`-'
    '+y0;;qFCS9B6#8je_RP|UcDWt#1}ayL&V1k4+uslrCKU;!z_eqR9$_^}yC#tc8z7zbT(6Ecc>XjEMYG|ieex^b^bo1imkoynl#x(3Yah8t4C4('
    'd2N&6{BKfhJuO%nW5v1k@1k9Bv7VopCp>CR~lx5H%`6qA;TX+d!#ilrZdwiO;k_YyLd8zc@J%a8&Y&FpopiXWU`S!663%BSS5VlDOxlJ*5>T=%'
    '_g3d(R_Dp4A2_Cz<`6yFqp%v_nzNE0EPu+zHM29PJimQZuv{-n_9{T;-'
    'SQe|1**r9Rkr&wid?@YHu_^8(0$VVqy+0<+d;6{E{RAhnjch3Z^OpmJhg0NEao5fB0^mJ&_y7de^)bU{+H(M3XyR*~3|Lvt}s(vSF-'
    '2FyCH5gAs8Xvlf`-Yl-'
    '*MMh3opw#6mC{&JVj3!+VmR3=)H)zrU_rh6weyH=dkZ$l#hTil`bKx$p#PX7Gj=)@~R{a`7VxUh|b2+nu_;Dh#E=`UPr6gAM)6-'
    '6`UGH@+nis9f>9Bs$E>&M))K2`XLgCRg1>3!rCMSmm0}<>$ej6AtG2kjU!<c7kFC0-'
    'IIy#QR!!XC>01KVkQ;<w26C~@iKf2eenR9K8#*=>iV#2yJ>Gg*f^==eCOZO4ucYzRfub;77%Nw6(Nu$JP0Y=7{V#cMf4j$^GcPmS!wt~rFFD&P'
    '7ZPR^8OXPsI{LR9l2yJs`MPb)iFpj;0tMz(s@i%tqn%>N>>@~n3=T%W%%GLUkm0GXn$*|@aFDK=LIXSz=U|MgjPOsVM^d^`4wbCEVU^zPJP*hQ'
    '*1qJwk0&B&<t4CSDS<lk>A-EiAMiE-r2#;<YC)Bhme-(_hN3Otc4Fq7^yoZ5YFw^3Z_1ro-!0Yn-Luk+8y&>V8CJ~LYSI!+3jfjfx1yF^ekHe^'
    'MFL6)F3iyvns*M<p`#8VSo=wy60%PU8O-zXX=_xPdUHwHZ(Qo_*pD(<`(hF=r=`9PHz+VDK#Z?X(gMk>08=G$Oj|RiexQ#jS1|WuTmT~E`cPC-'
    'Ew80X*>ur|OJ3gKQK<Cei`k28^t+B>5dKe%`dc}rEEyw6Vp789gN$v@m8@sipNiIuXMdnuGh@R?)1Jj2S(}!v;{pCL{F9szP<vGX;aUJ(zY+n&'
    'Knmdx&;k+3$c9!b}i9q!^i(7Fl$JvuY9?l{~JsR8}&2vRC11?}VVRH$@E4WL09t9jyII7M;&0Am&@kmVZ5=c;a`Dq--'
    'fuGg!7gV#HS|LqF8zo;<uPnjC9sPY@X5pk};SK$|p-^+&kh9#NJ)eWDjuU*N;7Vi-#}$p-rznQmt>-UhQp{12n3BSA(dCY-dy7ISTD$L}u#kJ='
    '`Ui$osUF-'
    'N%5hcD7KX}z`U;j+n_cv{^(Z@KfFZt?U@^r}*KC9}b7n5Z8v{|lzJo$*>&o``EM|$nyymW?FK6Vz_;QI`Asp3!qVnLS5tqW`fV7xn7?U_w4KCE'
    'w75O3x#-'
    'aJ@$O#wqc^}xI#Qd)blA#unrrfU}O6Mev*lZA~J>Oysm*~~lLup&XH#D&L8N|sR8(VlfEGJ~%KD@ZH1E;a@STw4;qx~qZZbqYr<wrDnkZQF4sz'
    '{@$o*r+}=wYhS_UVIqx=o`;sYa{&hY#r~iuj_99;X{UZak!?+cbKTZnRmA0yOimoD`slBT&=zI??{2)PC(mZvP<Jel^Whwd$!rpmlk1@o|D!jN'
    '2E3ZhhR=Cm2jj$(*=W((J53^VWU^{{lR%gIDm^3I4SYec)dY#1K^Xk9g_oVTG5jRjRx+{~DEMwT~m%ClT!92=;LT_HhLJB!Yb$!9G@DSE~YcwI'
    '*O!s{(els=}ty1e;0|Y%0ya9(*h3(e?p3fqCBFYJ^IZ;Fl-yRlmH7zu-'
    '?1ypY{hgykT>aHxP6$?{t~=VtNJXfczPFgL)kUKmP?8FvWe4=iS?Wk>O7|3JYK9kK#lpH?U93fVBwWz=RN+?+YQL~sl+#sQs9H)}VJ-tEC^$^*'
    'Eq$xVQ=;;y{dE+kvx8e8Kr&_o{E6~*ZxeD3Lm&(8g<D+ks|heu9}V$JbrZ&Y$h4n?yqRxs`xyl&Wj;(MgO876!sIpHhPe8=e#&-'
    'a>6Vb{dIP78sPhFK#u_lJe^dx9=iPrgH+4o)MM#t^6G=q;%GEqUBD((;(1LqFGX=rf`9q58u%w_sLMp(w&`Sq(5;R^yNfg>^^DKI{U56gXcE7{'
    ')^<X9bMnMYJ(PDI!jZM`bm|8{Od$+-s|(gTj>a9VRfM2>&BIpo}|JD@DCx(7w^%&LVIU731)pd&@XTo%s1iSI$wRwM~`4%!#tL2u~-'
    'CSX?mOzuk9BDeheKJG)BAqRz#^qfG@JU7WeB3dvy7EEZl?4MS{b;{D^(f_0Uk(NWc?F0w{ESYqB`y!*-'
    'c<DflZ@#`n&_3r7;GdY~TuF*J(Hrk!T%XW-o#4d&F)AmUMQ*KKA@YZ^dd7~Jz-TKG=<ygf|Vw;7CfXIGG5YbjDxhz1dYyD)^hr{|umSL`>Ll4)'
    'P9Vq(ZMLsDgGP3(w9pr5rjN=OxYcvY^O$~#Z*Xn<m^!mLd8Gld&oRM;Y6ys4IM}m<q_fCp6Z|z!D>+gRjKL#G1=g0W~Mt~o*e@a#V45E}rWSoo'
    '!?PjMv+Chfozo{FAFjaagx7qYIs}Mm}^5IB5d0|y4k|>)=G59&UxY5n*J$n;+qp9yL7AmnoK1?^bUM8^+qFpO)Q(@mCx%=&zF)m*0tP8mE4-'
    'N~H8^;!<m=ib|;49uk#|We-=>m1RdaAimXkI+koY-'
    '<c6d1wW(bJAxB8naqO^g~AlD)s9f#ZWP+^kT=2t+F)&;XCq#@|xF#lF4dAr|@D7IfmqnQa!%EDFlq^gx>q#@^4qy%gm{`z*QuI;f=a{JF8PS6`'
    'Zqi5^W<T>3G@f$w3m5Me2<?}yG`H^5~P!eifF1%T>c5r#3+8ro<g9`Yucfl|VSC8@LETxS_v7Hh{3ChRI7_rU48t1m-'
    'm`n5y?1*@ZIQUf9?pJYg#0ISz&Z!0dPN{}ls7QPrJsWCp|cj;8JrSH)#V?0T*ElxfxAbW9g?2$<*_l%N2R9?&SkFnZ0V>mvWfMa``#X^>pq(LJ'
    'a1K-'
    'tGz~RkRICSQLT!sR4N|Qjx{WSMu<X*gpUrSvkJgX9(Q+u^=R}Q<EK)%%v09bpib|*0hr8OyfzjsB`MNFWU8{iiCETv)<#9%*x0h_Y4L~q}ngBT'
    'b_cdW+&nRtZO?Li*CR&^CK*Q(q~olzub`~{c-'
    'edd<e_jLI10IZG_hRq0qx;^OQM2AxmQKgRls&q_^x0&cQPfnxq$Tz)0{%bLPwvy0iGdlUr*xeJgySmV>iIFWx$5%06Z6Mf`P4ED5P%*T@BClq('
    'P?)IMs4z6RSi&_}_)y{=V#L@*yCX>>W0cwlP-'
    ')))R=Vc)0H_BlRDQKkCuxj<xE|1ILL8an^BQOA_nl7FBNahyNZ{WKH%YV=2toXS(K*R%K+OE?y@m%gD~Xz->wYDPDK1qd(-'
    'suEpT)qE*ULs>bloy@+v@@9iKOr}7Qjl;^cvK=?eQ24@p`vgw(wqVWovzfZ|Q7{lO&}Y&fHz~=%_%}oK)m096w4rI%#z4&G%bTV&+`in?<NmQH'
    '63^N*hOc7Jb6xlZvMnYBr(xYfiJI`kiG`d^ZLBf0XP0M#}Y5tFh8L^hCOjPD9oP@82HT69dHGOpnuPtwwe3fg0*ls&v)wqSDoV7nN@RpIxOp_$'
    'OBB4!^fbcl7(HbjQUNAJi%+p>VxBIIsUkT9B;jK0pi7<NGhJ3Yk*Oa6PCfnJV$H%F3dorl+%;#Om)B6e&oJL<hC0Rm2q_-c{N-'
    'QrM4qW9FXi8_wdTF-d1_ku4J^2z`%owUwevNruC!biOp9ubPvh#-'
    'B||MpXc6mQ%U5CZ}oqIhp5DcUojja;YtxmDVtp0ZFYsBV!z=6`u+klKsHC6%EagKk6Ma(r5gqop!fns3%U(MJ;yNJ{fg-'
    'XWh13=Z9>Gtb$J-$^z~cxkO3h_VHHDXvrNDF8aNALHqmPt^A5C73PkP_&G`Vo<(WfDI=%q(-zuafb-Vq5Iv)~{pbrWdDD@{_b#2n1~<-'
    'P@mj#T9JODbb$)KM%&08XVnD8IQd(4Q(!ZS2S{P+TwbqLb9r6lbKK0-'
    'wW!nG%QKtC0@6O8B%40dE$vGQyL$6<Q&$=mv35~LK<~t1~XdOFdXxL;YDc@z+j>uR|4qVD)RYno0Ho-*XuMOXkqWJ{|&HOSK^-'
    'j0Z|Aqd2ZC<HTE2Y|3{UKUr9>?!E<2$`cqdp$1Gx&Fz^)wAd`uHm%2BoF<y+uGyig<yVXUjm8LT|&eF;nUby1TH;t1+ZsvmCbK7Ggk@wfaL|Sh'
    'Nv4w+3a)aVfP%z~jGCc2+j609L?#wxY@Or@-PD`7IWZYR_uzuI-'
    't1>)Y!!;^tE(z<@Wti{7<+4@t`TTXR5ZYZgdLT|>QA|FR)Vf+ypht<sjN1T`c<#txY#re@jLCikhVt>v-'
    '+Csv_FO^Cy&3N~l`WL2Wy?_{T@Oo_~28C|y!oYq_G2i03ErN|b{^(vf^7|q^@hbb1}C@!7lbbVjSOu$`!rZtK+cNrAc{;byH4z^hhp_gr}7>E^'
    '{ocqPyFQCGFjyb<mY0K$O*VVn{tsHWg-xH89OSGCR9n)#8?=4ITX02`42a$wH&Ua~eKQj8bEA-'
    '9|y|^I(k4goeg<hcH4TvpFhmImD#AM+&P!#{A%;^m0wc{_{FxZQ|v;yX}T74t9D`qJE>cv~DmNYr2Dj~<}vY$U$bazBN#uX#VXC_xC9{fag@t%'
    'a0_%FXQIw%SN28$&(%djwCv`+N=GQlUspDiIy)GF+n;?CzcD*MX}&w-Y$B9O|0dwDIHPciVW<9~H9qdTl)jAdClyk!An536H|U3wI&t$Iy@-'
    '?K&6d%Sdkh3FOumW<TSEAI|CbIlVK2RxNMdY=Zw+`F5=DO+<eR3m6?w});RvZZ=Az!<mJFe)J?*NRkMSOriQz&jcb;!twF;)6u&q+VE%KM}J?p'
    'E(_oK?Fkx8f&&EiX@+w95A2rc6cMvT47kJ4A!yi+8+z`m;pZAI4ju};C8^3?c-&i8+Qgq47*IK-jSirq97VAANU8vobSvx3#bZH!CfP?sFPgY0'
    'N2>}LN4*PKtl>0P@BAK0gYut^Ed0zn%VvrXdfvA&@jvdm|LD?5pgQ9!4D(Lp0e~k-_cTqZ|kf#=$}|UD*ec-'
    'eX1UVEZVQZq87h85wG@Z@QcqR41Kq=6_{5UU^MckP|9&t?wof&C}pkZFij-pnd4WwG*cafd7ObW?5*{qT4(p&&Egi{#J5SH-0r)jJqO$)n-'
    '36~jOt)9wSO76dm~g!F6w8UW~7r)C6G6SWmdJH+e7?Utw@0mpcbbg_Hrk=)_|DANHy?@cJ-8^k`H@~d>-'
    'zJN&@+O+!Gaflm;0g!>W^;LB9Ct2MIV4+Rc8qKjfFITJ6*NWq17MVf<2rXL(QaSWD%t>kYKxe3Gw$5uwNRvkHde7`4ZrV=XvQ;F+)+@<3JdKvj'
    '!@;)9+EO=0R>fc5TWI|BEUX52`lNb<jC#EUnRbGvJcVbPDuo5G-'
    '~IiRWqL8XSpI4VT}D#MaHol=uKN?jNa(b#*))c!pu>Ju`<6EVV*GQl<s5Yf7nnt3^MR{ZzxsX42Bex1c)F>^^70SHF(ehS6`SG$u|wYZR)ym@2'
    '5SGs4TUQGxR?NMl0x@z+_)u|nwYqG03<E!ZQ<>Q71K4^q=gVNjhQ-'
    '>NLl@HW!=T7P*@GTu9(R=Ght8#a$TIqa$kS<3t6Z+a)QIwXz;y018vO9(6+RObttLM;$KB%Ffg?fP#?~?Pj-dbZ&12_R&_2K);8JK>kzvv2dJ7'
    '?!(DzT&ARF;qpK<TCaS`Lc^Y+Z}v0UyjD7ufB5Kqk|iTm@JR7BIJPSCyM@(LMkJ6j@K8pa&i|$<TK6!CWJaKcGBjFMW2G%-'
    'YZ~CGN@km})rgJ)<y=IZL>GVWVBT=zyVJ`Ha2KC{X<z>3GRfr=UOQ08)x*K~dI|Gu)#!07?}wgZb#7lT;QQrGy#K5VOUap~Ro7pR-uQbSRFqVT'
    'i_ubY2;mWATI`77-'
    'Ihi3T7|Yhoj?NVzWYW03szDLK(UOAAz58_8HPQ(Ywl)j2!e1ZX%)fhlYjmzzynG7fEM=a1D&^`us{uI;6}xaa#?0#I`A{sQbq+PS#wyp-'
    '(L;KrU|kV7bg#|e~z8`{0~{4dcS-3VrgPcfFx2QQVWN0agP2D8Y}uEorw!?&f4XI&v~f`sS}63-$QH3<kbJZqF{WeiAku(K0WgN9)D-3;dG8-'
    '1mNGDd^ZRsvhPnpx{mQ)_x-'
    '`%}+em@6KZtrJ6Y=1SPNEpa?5V*sI}?V36%V=SI6@q1OaUX`m_{G8BsO|+<1%Jc{8snwS5ETc{h{%lpJMs=!N)j25BpLCrCZVzYF+Amj+(zOI3'
    'qWwCSrgb+Efzd6DJqD|U&7*;Ni{16cUoT*8Zv1O|DuSAY?qUIRPQZz$UO)j}D3Sd&#fz1ri!o6IGx`>U?Vg!TC*@jY%Pt?5Ye(hUD|46ibG1_5'
    'ufm@#t5uK7@TYdTC5}+*aQnt;heVK*oY7PTukP?hQpA{w#BcH@_b|C;7l%zHnEV31Rjpdjt?E%~r7#C4(d}T?7q|9(0I#nQGZrcq8D-'
    'eN5DFaMZ(fpXhVQH?q>t5oIgA1Yaaap42o_EdNPCi2=--p-'
    '<T0JkUWvtK7oP!+Xe6;6IF~N7Q7}`jM<!Hev@0`m47%en?Nd{9(4D7RMGdNcJRC;t{)b$(+ug~JND+0DUBS=MOY$I?_RQ+*_2OOz>vQ%@F(yF!'
    'R6U~jYn5+rzLV~QjYyh4xn5H5VJecWz#05TS2VI3usENhE64U5izp~gqDE{+h!$%5W%?tva3FzW8iW*kh!JXyjM_Mx5Fd70B~ARLopPE>jRQe$'
    '+8AF!I}#XmNm@e&u@S~66<Z_r_x4WqES~?ws_wt69?*M?QR&WD1Tn0&3-zNTiSxlOo?=MWkWXg=ffGtA3oSwRwIjvJBt?x|PO9-'
    'GVr~lc%^@^*?@8acsH@fr6;F!s$>WwK^vrl3uE{Xne}h1*pWa$0^ea6J=W(cn%hfe#qq9%a06~=<>xCspb|tnrJ(F3jQl?}*j{`Y6uebUi1Xx&'
    'rV1Yd-5|l(<DFQ7Aqz?Kq-#R`GLch@Z5Fdd_?w^@UN9IB%9g&Xs9z<*sM7%kL#o!8~$x;3+RP;SqJ>ct}#L5DW!qIHC!c$D-'
    '9AL)CaCk}VC+vHm=)LxYlQB;vVxF49Jjq%8W41(<2mZ4%{qc=vx+l<h6`@hB{HAy?R$*)cc$_&QS3{$OP4J;4BOHi`Tc(rY^!#HyO7USN-'
    '+0=RihRP}TBYX^9&be+2W27M-j60T>XASx+Q$UR48_n9HY3`WR7-3W!dwyl;`oIqRE~T0?^e}%O-}CVJ2-'
    'Jwd1PtwiC&2YBQe2Z*%%jU5$wjifJjr5@?hXO^-SEVU{O@A$z-'
    '>EVJ(ojN2eL#!oW7MK$$&D%}zRAzVgBwi(T9Z5I(ICxRNjx5<xJ{(Q=ndSU7B<{%Pl?W(_rndRco+N@$SC$qAA2cTpt!Db=!y)zeP#bPyZrbVA'
    ')hueO=%JKS407VLcAS>iR#rnIc$Mo_GGa&RsQP$~NT!m93A|7P5*ewJc?Efj1ASUh^(C2ltW#joZgRsA-'
    '&fXq+T%m+W5<mP2lgm&`nTPe;cHAha{nlMV3YDHgGUV{^R`119KACxN%DQ?AUz}(}A`8gQiD6xAm@+!}GlUus@t&DHabbU!&(0ELDR8R$aWUR2'
    '&1rl~BBJNt#RqOk)a6qE_*0mksJIyeO-LKFqkZvE~;Rczq(Jch-?ZX{wXj3!5u)fT-hJc|#ft76a>H&9%Vkut4bp*-'
    ';gK>eK#Wm?HL9DdAdB#0@rbu5Bx;1MGDsv#bhL|%C^B7`#x{|WBL8S<6pYVo4<F`B}!$Bz9*CD@IAyC7W0Hz06=*ZtpPXBzwF@6~bjYXm?>@`C'
    'Sy1w?k*@h`_xKlf~{VN1#hmxDpE_2u9R1CN>uLwu%Up(D-'
    'WCrHlH6%}Po?|fzT_+t=!B9n7FonmB{aq34F9p58ZX;IGuzE@bUa%m&XTqPc9>OSGZD5g&6C`jb<4(7IQ6EgY?b9*mWf8@<Nc9h$*7#gnxlxLZ'
    '!r3YE%?CHUY0{29GIl+>a%tH!7(*LfVs|NqG~+Ux@rAULFLUHIrgCK=rx|}BSF@qxOd7Cmzu@@8I>MH2MrVu<n)objrm-'
    'SFS^LuJbm}e^2?w(wtYRgWJ&IK+Q{3bI3alXFMUCAYOh|0AbWd1KG=X6ejo4(hSzf_<a}c|YGQLIC>C-_)yxy-dYJ8A*Y#-'
    '+%s^i+1MOiQHoc@FHs+NHt&FfW4E!60Z+4uPBvl*AsKjy^g-'
    'pRk`rw3*Tk}Xg}MqytD?w!MJ9>W?4wod1lc6V~x>2^y8!f7oRf{JJwh?p@yyTOKTt1aAXCgku28|ce7j*UAdSNB$JefOF<Y%*_PwolK4vMUE^b'
    'ks%~a*fSX7R<d23Uo-'
    '*kNbH7MAFGayb29V5?<$F+b|I%z6dnV@D9!`wgQu#d8ETKgmK|PIIk`H%Hz34WDjG9Z`UNKM3b=ql`A{!2Jk`IYIR0~Zv7*ZS};`w<zU#!67lH'
    '*EM-J;;D`G+XSQ!_;<Vob&H92a8Dm;Go%Wq{TUS^dn`AqU%$X6N<15AIG-'
    '3inX&y7lJOYxg=JcW@V<JJRPcdTWU>aX#<`W+^WrY+dzTyUUFlpGEry&e)@oC8;Iwpt{3%<g%;mLDZQpcD;kL_=MACq*KaNm7uHc~n%h$R-'
    '79P2G!AQ?4LKP|;8kJ1j+4+g$-?cNFRX>WyT13Rm5?6sV!3saoI>6O@mR*n!UTchz146)wNu!6MOq=`)G-'
    'OgE$&CnPJSS6g*Ou>Qy%PW<{b?k*;E^jyFNfDfw{`-#|w-{eBQqoQpEZRh_U$Plo?sEl)@FccQo}!-&hhm-'
    '0XVmy(5A#i?k6YBerH9P&g@^Y~Do;1mkDuWCPdUM{e}Y{Gn{W%8J*%|V!bJhVYcTuNBo3SX!AHzMbawhnfvQPbr)w9mkrj8sRCv{ND2jBf36^f'
    '7a(7axq;hH$ynCbEvE&yOv;bI45~(Q)oza*FU?P#N*;?BBjZJXR_H9Ke^zem3cv(Pbph2l3pFTr7;zQXGXI(0?69+9xAXuuF^@Nh~t)q1mG^0z'
    '2(MDF*cva&z&(@ovGcOI>XWZR(f-|St8#6Txeo*Soe$V>5@}k<BfW4Xpr_pT@m?(e?sGPtCiN~t?C{`N94=<0kFg}%HzhQP-yaE!Xp%BpzGJ-'
    'Z`h3?Y^H$ipTn@;T2Y=VwBET63EmVoJCtsglmi6~oaOapn4WAJ5xzZ(8A1O0*l0J)WktbJjx?78D3hvOCj;}dhdt5(!UJY&HcOf~+145jos?n4'
    'Ii#<7)i?(HSY7bL;ABEbvujwp3UY&lLQ(op~!JbIs#NEgUErg_AeOTpJzR3W)@G|~r;Z{#4ik;BI~a+ur5(c>FA%5CKM@r@kkHgcln4&52u!%;'
    'CsP}wRPm;rxwmfPDbrL8pY`Z~bu*_L!hh9y$>JF~qe_VLJCSBAm=Y&b@LIQ-Kb=n0CX<9F!~ft18yO7t&XfgB}B3qUV$Wf<{7V*nr((4{t`BWN'
    'S?>?_|=V*yo}V#)9cN*Q-@<G_ni_PBKTG7)_&GdUX+k`q1dBoo2KEk&_MO;<!SkU~`>`=SqXeb9LSB~SF-'
    '&wK9b+Qa>{Aa;a<ZyoWL_XndS(eV);p<Z6}KEKf=?|PdPBkIv8wEy$6-'
    'qoX!72?aNV9+HOP2Q+zrOpg#VpJ2No&{2IJWtMyUEzK<C39d?AuI0O&bF9jrGb?Z$w=;Igsl(A!g%Df0$l?vKJF5(#)g7R5zv*&jt0ZdxGkNsn'
    's^Op|A1-%3r)Lqy|ofFb-'
    'O0%l2%ql#w2*;SzkLVJHTbuT~V6u&C0f%;IA9UpV<~LQ12iASD%Ch5AvjD+%rzvBwCeiCM)gcMRWC8j;y%2?2bE=(Ru$vvp#C?7%8*=a1@m3R4'
    '}Yvvia)6n@@RDCPV+0HtASW1!I1x)WbXIA~F>Fl8g`at2O}v-'
    '!DdE>(uivFmF5yWL4tcZ%Y0>`i}KhvfG=rn`#mzgfn%S`=;6bZ5to7q<`E_hQxXpT-J$tcPt0V*Y9Q}pzPgdY-'
    'wd|z?s0vF?Vw|#ME2<hBS#kM9bZ;-^-gZVaEIRZF{+9-kZfc`-D94go9To&C)hAxBqi{GHiF-^<l3)OsgU0`ANC2{1qM-tFzOT%ri3?Y`-'
    '^dkH*`y-}Jy@2*M|6-'
    'IR(p2ZJc0;8P%R(dl*0>KE;8F!<p54&E+`k}Es`9;0!8*q#hN4(k`4*5th1ZBhKc(KdK7u|2p4K6j(U1DVMEkg*VWU!CzL^!&cx{tCJU9uvm!3'
    'Zqp@x==rAjY~JnvuQ?t;@s`IQeZela#-%>T@-Xx1NtFoef!Q!L&fC$YZ@tyB2svD=!_=qv$LH%)01^1(xrCaT`k-'
    'YldtE><%;x&GF!gMQf7MY^b20#(PM2|ODcH@(Z5f3Xyfa9_QwFU>wI+<%^PR><w?P^SPngR=K1#O>A{~5o*w3fefK@UQuv3h!EQ5conY#_YZT4'
    '$3@+0ZEIKalv=Tvxcunj1l04`&cqtBe-'
    '*M_@u{k;E<WZd#FiApDr96q0Jr4@CTb%C;f%|5nhBUgkCtngHnhmm;uvhh{gyd&2g|=iGUh%ny*Cn9Pe8g`a(ftWL#iru26Do`yQ(5pv=zV+P&'
    'fO~)xauAWS7hXp{Lh%5R0y=hTkTO3%!2Wxj-jgGq<mE~Wqop!6&cOGi}7{o1YFHop0)=(5km>>FAB*Wz1hW!FIwf}*Fwsbw(qXE?-'
    '}*~v@;xy6DmuR2x*n%+hfU&B%kbWse(xMMS>;8xjNnqWF=BOqv6V()LDD8-WyNaVD$`z@$)+CBZ`ph0;ly3{Aj)Y4s4n{)q~cP*wN1Tu-'
    '<$BI;+@u=j>c6^~h1xW4Of-$0n>^<Lr@-'
    'U;mny!wZ3Ej0D;dPVD19lKK;|pQ0%BkC_6sZA5a)u+$K!6To_x&hJOX(rMoxKh94<35mH2(?V~|KE_6gjOv|7)91YY^Hb8Ng${=trnmxz(m9~f'
    '#9oFNB_3}~v72E&URe(<2MqJC4&~BdvE@tdp0j7o;wCLTqNkg$H{R`PhZ`G~hxsvXUBF!NcY45XKvGU86ox6k#?7CzbO#JGgMC2N0e6n=#m}}s'
    'q1=fxIZ9@3?gZLg8()t5!&C$Y3GmPfHj6NwzRf^`u{XvcKsxXtl!1|V-(jBls7L<?L+S@@h(+1wP+k{F-'
    '|SoywSw`*`Gqu2qtIJ9C8VwPNHpc9p-*-'
    'rIeAeajf<D(7tac80Hq1XhIH()8IB)1Gmf6Bj!4Uk<W+^OM}5OPjVmXmcFAUe%7SSN0ktwH9)T2xv~+lps@?v%&)n8=h$hYRcJqCi__j<=qT+A'
    '*FoD9UEE+ooO)N?4M~PcxqHJP*OFQ5seIT<0v^=V@)d^D=<x^5=Yuc;0v{pt_EuFH4D+le8)2x1-'
    '@r@7X>nB$QbgEdrJ8aimA1Cj7{SPAvwMVqe&H`FH#ayW#tCBoUgOd*l4GVx|pMu%Qf4ntVu95W!B5`9cMl806;b2i-'
    '3(}{NF@&50NXf8NPO3PryYCX)twyOHRnYB?q@ZPQ{YiIk=Il4DE>&1-'
    'vOBus`z9$!AlD|*riuhnIo=dEchC`xrN3h{v}dlQVU33Ew<!4B*gJJYUB{IkLFaXZo4HFC#5yQjheh@;^LSu^g`&2K?BL`<WZ`{s$AmLq;jt@-'
    '<M|*DzngV#n@jr+OBHI6_C`xj2#|I~zgH*HDfzU?mSvAgjY~$B_kO(h_~J!oYUa%RT(J+VVm}yT0H0XT&m`wI=6OkRfAOYnCz%QD$FzUtCsxq<'
    '=_l(j?U$m>nXTCuj0Zrkl7Am}6?A@FA~VE{wZ%%Y<!bRmG5-'
    'd_2aT0%sB6a$P^7xJ^{IF!C=|yu>5S^iHMLSvAwwKfW=Iv=!A|2KjO@qYkvFY*6FFxedi>N}<PXEIP_qS?<z{VgAQfy;?{tCl$CFbL!zlB(Sk!'
    '_!UUwHTi9*T|L(YJ?eWOyDlp9H2g%6`!CS&dB&5G#E{n42RQxSd)b7#BLyM$vzf@IA1)AqkCob7=d!K!oYNkFR8;z>Zt{PM`7OP*6xx4d9NPh}'
    '<6FGBxxi?Os|vgCH4LSMW7QXPo&wG2bdl_Yb&d}%e38Kzk@B^Ipcwbj54J&c+`5u$j4J)UHDPlnTCQR=6JD~oe_a}S{Hg&GWrgSgtjyVXnP*}a'
    'z=7^ljDY}EGQ-{Z1%OhN9e1-(<`aw%t-'
    'l#`AMS3SRb_5>b93iT=H=Z$wumi~<$01Y{XUh<LVlnNd|qFUUQ%zeV_T)HNuL{}@|&g2O$h1G`f@Cfghink5w7@zr-yT&QqTs}#xE@&|;tk0?i'
    'Mea~W=urI!VDsu^TgOb|K2I|~6A=fI`IzDjS%wyCIKE(-'
    '7{KF1KZ`Q@18JfqNA=YSGMAnh+svqM?8pH_{})vUGfampB@)e*NTU$@{pHLpBUygZ=>TX3wDYP{3%I$0SEf0b-J}~!Oe|qL1!H>-'
    'HOBQbwx!!?_IuU~DT1*SY8;DN$-?M-+#ZkHq7sS_caF(|ZO_^S_RO;YZ@hNi_c1V*N+HcQl6qOCKBLl-'
    'k|VG#bClTrbHY(y5AFx$LWxO=%=rrTNekrj-'
    'd#*#!MpsrPwg{M;o!|y(C&@U_CIe2$+MSx@ZiDoJ!Or3mYAh5&l9xNLP9CitYm1l#vQ<%dqy<XSYY+!1eIO4Z1|{NZ509{8D$`H9r;ziP5gw~c'
    'bZMMansKZQY<>05S5%r!jXso;Mf^F&ZN6xF-R3+d`T^YU#v8?Vt|;u$fX1OO{<oW?hvb-bZEubN@Z|3JdH6ahv|?OC|Ze*lB$H(uq*^YJ`4zA*'
    '4;vpFrSjd{m1B1uj6dcNo^|%+smVJD*C9%?Sb?X`WNWG7$E}eWHsQ#!?dRCfyg7}v2HMomVO~fwVljMp?X|@Ej;)qI*bcxQiY)Eu`kM8iV9>ns'
    'LGzohRK?zq-nD+CgoMOn3kflSET(>X}qdZG;C4$?{eh#QM=o2j@zv_5AbgpB)y^ZO>mdBxCN=F7-tH{r0=)f0F%zU*Dm@Q)qQ7Wo1BdF%|v(U-'
    'fZE!G5XLMH_to0vs^lfg4;va=DsAo@vW7<9)kHOOdo58Q2q+0<34X!=H7z%_D{!+ey7`RMZ4u%9P@~UC~#0}YN$9LLUPBZFi&J(U(LGrOYX3uQ'
    '&pMJ2lB(=PFB{$Xz+eYZT}PeIXkAt%>YK2AFW1xJnpvHW<Y(|?$yZ!WPV}0t37wc%FA^}WS{K5!$_xg*9$^631LzO*1LC+sOZda&z4saSAGCA%'
    '=w3;eT>2gYYlB>+iV;2RtA%>Z;w*;?GqW!Cn>-MWU<H<EBhKGchqtQH{!BR(DF7{&>RD!8Sf|A6CB<0WLW&9v!rpKua<RA^)-'
    '|K92gX9Qvebk=Tls+6J@CthC2P^uWIqD8ot8PBA_vbRl(=9f9BW@zDy|WV7z0AQLEu~eCXJ4=I*LT`FF))Y0sPzw~I#;3e(6O9+1g~XN^gtTW`'
    'MS%rM7Bf=>+Q=e_IAYKk^?y5;(61`0^CQ7eLGR5*<<sfu$6)jgJ8WGCBSFKbh=)0;5PQ&)sb%1^>0RMW;U-'
    'G(S7bIRy6BInKxo1g<>41F}o)EI<Z8$%`*g=)EAa;yavnAGzG3@K$oAi|lDej>q7M=6rM0vzCB?;c03#D_*QkeT|`-'
    '1vd#k3<$qJm;Ay0)S7&)N1%9h7o<jVaus3Mpt;?Vlod*fq=PWLJum)yXdqXPdoFsH_pmJ`k-'
    '^}po#v7zCCyJS>n063QXtugQgm&5(~`~gsr!F{1U~xe2KME%WkS@ovRt?81Jc~BYrv7s=Ud{+Lhu<r5}_y!Km^t#dnRIHGtvMZgeKapiiNWY$X'
    'K9xxJb#9Cp<SSqKvir7E=LnWhj&X8iOKP@^^(I^G&{P4fzL&8e9V$dyDcgKEXFPe4_BkO4i>Rn`TZ3S2yCp>tk%r#(Z<;2F(b>vZur*lE1NXeL'
    '8B&GO|mYqJZ6Wi9)ZlT<F72*Z}acwx~EL-ADwl?@i)eSyv(lhKX0S<F7zZU|DK>#n|lLiM#oyKb>rCEYoW6X<1TMoYPb$2(f2ld(>)un|y2>k7'
    '_%TPKan@wnep9l{edh~zSt-(``#t$+)6qeufxoqPavIyKd{kZ}f^+NOaqla}~F6D+c3do<FO%Qxe6`7-'
    'qP{Lr!(wM$T#?E`4;?d9gyP!@H=%A+aD)k)|oXaYheumCcAT9k|ePXjJjqhZ1ak42)ErAwkI>;yC=OOrMYp>R0;RQ;^MOQ+B(DoA?gN)5<XaEI'
    '~1<BLx6O!pak+*&JTqNbY!L*oR1d370ZLx^WIWdh0Z;a@+Tf@pi5mJ#~y=mdP6?K4@r4~)Zab&>31t&^h@$6%|GFr~2h?Wd$Zn_jh8H@=6M$*G'
    '?ixKUTPs1<bDX?I)NaQA9np)44!`p0H{*v{oWOf!r}06xzk<1J>^aQ7Xm;GB<@w8AW1+BGr@6o_)oZ#mNcBTt`5p6Y~F_kV=e?=G}<3rekRkj2'
    'hLD(nw>PrPDteC<2C!1Mtb+uhxFA|<zO#_NFj&ddqi`3jSIOY(qu*HLF4LdoqIimmO<s|iQ`p|gddW1KR-'
    '%>c!nA*15~efgI17!BB62c4Od+W#$h;-'
    'gP%XFhF7?FRptKKe0l4*#g%l2Q`7nyjhFsw~TfpWJ6TJ+=A9goHw<*<~}ux8kN_idIHr(Lg|*;U(NSpuasYY|rN<?CtZNqH_Cbm#ndW4@=6(yA'
    'H2Bcj3(XE8)TR&<Ux%#Qi-8@%U}&ZIucqyj<f3iMX>pB1hzed)1SU(H#A>V1Sy9XbV8M$B&soc?zvZ3|1U4;Jff`{tEJRtnJ@Zlm-dsCt>Ha4p'
    '8W#-s$2^V*K~N0in*^ug(SCSN$&3QfI%R5LgG_OG^9>)WkX4_rDKK*+Q-oDyNG~Cy@{d^qAzf%{8TZuQh3Q;n!AJ6gH6Z#S{-'
    '!`#rb?MzD>84fXMUzlbU%WG?{Qd9L4s{q`VQavvnrK3^Mr&B&jM{3@i>l_@8S49qf}r$n8k1JygL@=UXNu@xNQJlh|#03%ZT0eIGdFBNiSATv?'
    'W<lS4bcSOD}FRj{6kv$VIrT-LK0kI2G$eGW}mc4-4TgI?LGtUXIz?HM`Fh9Fz-Fur1*#hI(y&Sf4jmF0dtGUGDgNQFUHNMxr#J4Po)b0`gqIVT'
    '6i{F)vBM2Bpun51j`j;4QOJ*4IK70U&pdX4GSUeEU;@*PikTSG`?YuQ>B!dFr!0;ow(ws6~Li;N(962i-'
    'Y0x;myE>htrK4qR6Cht<C9}hc*r<z4vq;4(v@P;9)A(Uy^fXiVA>+fZ5C1C+Pz#7836l3K@AmxS!J5_6k?{QDpPYLC@&Y_{HzqC7>y1vggD$hf'
    '_RsC!c=S3~AMNzcwo(Rv!!6+W`mgV70=9oj`J89gl+KGSrqi=aaF)x2dH`CV4%9W?<AV}*h{ar=Y5^MtmhC$ra&SY|Co5vMXQ6KczDP!9<FI~i'
    'EbP@6+|2z73kti*eC4~&HSW*8oZ@CQAQ^=A!r8@Utm}mx-'
    '0VH>Bs?)GqKo0eSEb+tV#fi{X0&BTGl;c|2t9HhiM=U)8CEpHO|z%iUKM_|X^UZ_-*DVY^%XJo-'
    's+uMvP5S(4Bof=483}JZs<v4(yYUzg}GZFu+V*z^NSJU%0zEgf@cZ`O-'
    'cCTkkA+PUq}JO{iBgK^_~dW`qcrfwjw0LtXeNDH>uS>B#EZpw<de9IcG2U*Jl}8asN^dt6bRr%i<3G-'
    '7?MQK(TG<3^{!Y#&2*lzV&c<lzp6vVw1MhGg{;Koq)#f)Lm2jwE@VIb+~1tMr$OaZT*U@-'
    'r9>x7g~_BVism#LaG^4nfP@F!K)vgpy!EpR3AD0MZO<oU%O6#4tC6bC~1<`q++-pWDr0-'
    'SGf$FgfpckfT!fSmj$&DX}{$KZB%0TYRQ=LS)6*SAf)JGEV%$f6}?Bd5AT&qCMAQ6^xh=1zj<alSKc~xl-wT3+EaT<f#F%BEcRgJC`qndarvaj'
    'tY!gt)MhDby?wU^K@8Ji>fCtfIuJ<V6%WdB2Q(Qn6eB{eBxTgdx=5j6hc~&wUyW7u-'
    'mjgQ7?ecXC(nN|`%Dh5Q61i0YJlm)lBhCwjW2E*EG2*GZ`!WqR899%EQ*NU1myG-Mudv?ybr#;Zeqat{)&Mrr32blUO#()Akq03n4}3|pj?=bE'
    '}T46juYlI^%`gyjYb96QM4MMPa&wroB7Q%DSotyirFU3L`xn~49{V5ch+b&ClqfOqpY=DKM_)aT?<<|xAoO*=&Vr-pS^ePgVb2I2KCnDau9b$f'
    '(Zje1Z#DMP{d4Cg3;=K=;cDeLOF0S?`SR@ER+L>GCt=5qEf}y{Vb#R?|;|&SsQ~cD#%o}yuB_Z5$O(bP|>+4aAq*n7?h=yx$_fGgKl~nY{3HtL'
    'rraBxOEdMgJd+K4fmc&+YDge^0bp@ToQEH_JY9yi*8bNUk+(Afi@{bIJ006tFGv7p@4-'
    'Mu@{b2@3pKMUF!r`bZ0mA;|ego*$w)Ik&7PNrEu=nAYf)z;0Z{Mi+K=mpTa^fOtuvfaOsI2od5W*rMLQ1U<pSv=J>GptN>f%Cyl>iM&LID_#gd'
    '`lV1BnN%%tQjX&}AjkfMEv+hu-Yjg!lyWV+!0kQxsA_qL-bw`^=&Q}NMLwO}=>_B|)DcI?zIqrEq1nWrG&jY#*8F^yuBsJyxB<YLX^4B-'
    '%y0VX+rn3Aw?pXvzo{_XWSR|=0yK<^{&qdy4d?75$b3MHSQ%O!<E+*yREpji#g`pkAkMM0$NlA6T5%pYFM3Ydhzefer*ON0l8?XH3#F{T@0<hA'
    'L^iG?g{4FxBR_3KPPv#Vtt^!9mj!2TR+iY2bqpWE<K<s*ZHlVZzA+S%>ee+ITO0i4Du8M%D5r$Lc;^C;85`*PaDSuS4kDycs|GBYezP$=D&S=m'
    '6>dwjF)CSz7kdN+NB=TYTxO3R55z<cV%(CIps#$l|z7={t;A$_dx$n-DfSYZSf-'
    '~1=m|M4C6a=p=XK%j8;#pLz%Yn7~jy)W(%ssYsy;&^SNl00S1}dzD3foIkwg{MIPkk?73srdQfv8<<mMd5#DS-hXYlF=TvYCL%u>Q)4!8#Ruao'
    '1~F3atPGE`rd;8W{c>WIG_UV)Sz02h2(+ala?uNDMIM&KvoS@7*fTfY=*3FdwXi4xkuFPJ<ZeR75hJDnU&7X#{9P3m7}L);J4N2CjiBbk}1_uE'
    '#Pkx~xqLk#z&43oK9r_zkL;OmvmGCgJ`Kbq27tLJz191H8Z!RCT?IX30<N$US;~XLgX5wtFh_jZCDL)+rpQhIeA=`%9}PInH>C=);dnBs-'
    'zRDvWRN&Xp9<*M={u^%3oKi{WCM-O<xe)_(jXXFk-QW*{HHNVqtsHQu7hHSVpVGV5Jd8O2KY&kL)zWBnUolq#r=yp^h5<+W2KBb=cu7JUx${)N'
    'iXau?#_Kc&~`G#V`3kp3hf0<~RSKJy49xKbJoT}h3GpFUyAclc7QO%vlK%*=$Pc48QW5>AZ&gVv8{j~IvVI0pIDHXc!b+akg-*E)X4&^nYA4i-'
    'eq^WC|NQ5yoWw1Rw{qZI~Ie&wxpxn;#*2g=H(>T)Qyg-DgYxIrq&;iJWs?%qQsPw*7ncQ-'
    'hRWL>c+)Mi>!-+ffms`_lc6|l|a<V;d+AyOaP?VN7K_xg5s-#k<fr5Cx!(OO;SAJxAkB3c?2mGlqgfi3tTlNYv_dTC-AA?y1ZGscS-Pq<_ymZe'
    'zoYHaUn(%`K;bdoOYAQZdyBOdpzk~?3k51Xb%5P0)6OTNzJteCGGW_&3yD~k~}<7#HnX`PWukpww9Xl{bgTgri=*rIB<aQDQkW6?>Nx8iLn+<%'
    ')@Y?~G9i5KNv&_Um+1m1lsn{7|O5@j&uKjG@K?JDy4)k5ten1njzU&8A}YP=#y<`v~PSwH>_a4))sNFA=~JNzV_`5lG1(hw(2b?2e#;J4ztjp|'
    'lv{%+#~Z6m10w@vZO2DjI7SH<&f-(B3Z-A2)xw4pfLpy!9>h5;-'
    'nFae<;o~JEEB=mSk8?!1HPq|a;&9Be0*O?3p?AM2QJQ;1^!bX^}*#dI@p{=WooAy0>TyUs@vNQ7-'
    ')@(AxWnu<7bHW~bP`Ey3d0sT(sV4xyq~5I>cR+cm9G{Z(qWGx6H}Tw)46%MGF64T!1<e(*XzmY0pwiU;r`#3TZUd(H97*w40f&UlwYsp3+s2C9'
    'FET>Ly~zEC?Lj6ewO>ffH6l^l9*N9>tK|=wc9K?~VmuBXH6DjgG9HJI8;^r09*=`ZOd(Z6OpaJhIXF{iLw@4A!nS)6xtzl7Ac@=I_r|Tdg)et-'
    'Vp=EymT!UI+R!MZw>Nlas-%r2%RC)kBveCr`0ye!FP3r8$$d3;t8a>@n(EB9=Ud)RAVmrmA;O=t#-i-'
    '@nyC7erRDj|38L&25`y$SLZ{bhzVFp9+GUH1E3VPZ+Zw7)qQ-'
    'b3z~qlJ=h|I4R`}j=)_6P2viRLH!qViztvKG7x$FKH4noQ(!#rSx3pzSf3kX5vCeF%4*#ar5I(gPo`T9!48b+7e*!3deQ61y|Ho`-'
    'pg1|)QN3Cf{?;$?itR&CyVCaOMfcuAk==3nKx6w_UtY{<7sViKG43Oj&9nP57K45x^_Zi3D*tb`~8WVej0s;L!Tmryq^9#5U!n#?V9pL_tn-'
    'y?P%rbGZiwysHP4xQH&1x#>mpST&ybe+fYVvkY_+jgZ@DZV`lam1kL~ye%u=`f-|C$)-'
    'dY}Icck?H_)bJ>VE5vNcu~4r%rIR!zQaqXon!^=a8a@TX^r^Skc5?62=djM?v_B+31v0WdoGTy9nHgJB9Gf%yYm_KdlK7exE=r@St|7GcZC1Fk'
    'q%MBZ8b;OQt3*{P=MT2p!!itVT&T9yeI|D4Yw%^c`d|kbAZpc#6O|Ua+!U>d`Due{X(7j(7<=BAN73?kCLjn^2Z%@bQ%GMR=x<KM`T~@T+5I`7'
    '34keoE$t=#D-sk5XzI^zPFU8gGfQ%4Ogr(bW+G!Ifs9nFJ(i3Db0p_)JF!KuxiQ|+&SpJHm&V7&J?0OteU{vzDI;)zQR|2-'
    '#@Gd9;6yP4q2UJ6vom9S8`Z_|h(=RJ$pIMQLxCvp@lE1GReZoib0?fuCL89w-EC1g!Ey|N(|7C>uE_1Mv@cog=Y)-'
    'xx@HLGTIyXgPbLPOw7<~u2Jm%55e)zz5Vi%H(*xOEomEPu{Z3z4z{2&}tYOo1<`bd1V~+12+-'
    'f;mQ3J*4{G*h4`zdKGA(>8g#?tUXH%~W<Mbln|I08D+aj7i-'
    '+e~c%9M$`t7qTnQe2&XT@A*K!S;p<&=<9`j7Z;$f)z5O>&T8tj11|QprhFZHFql%^ed()+RuF$ZkiJqzSkW?lJ^ZY*S|bVN&D`tz^MU5RFHrJ1'
    'LZB<`sR%Nhf3U3=Z<QXs5g(`*;v8mV+8+@eQlk+9e*pxISmpEUe9*jcreDmkQrWnrZ`CZg4cmV(=$&{rMx!X=)*+=5zZsWkJXSl`7L>TP1I)b!'
    '?B_c(SOAIl>B@k;q{F@Fqavsg_`8S`R7u?QR!|}Az{K%d&eUDnJUT#6nhLNwB8=S#M%fyThZyAGXRrcVZQA*q)VrOtUfJ50-'
    'I3X{h|DtfPQAs#yWOnOQrBz*5HDu1At~`J-*9kZ-K-'
    '<_DidektXnRU!&yxo79Sbgp}MAgl1oberpY7xW=nq0lH!78xd6y0iV<|;;<7||D|c6&P4q49IsX_3FbSelp-'
    '2+Y<c#K^pwtI9ywQwM*&rUujIts@Al@0;puEMb<u_|~XT=RHGy%!Th2Kjrz=(+}ZxuN32dg!lsg3cta33Aeg+lh?*1iv{wN01oDtJj{<%m@1{6'
    '-}d4%pQeZ#v!hiZG)rj6fSej!3Ms4{Ha0?$-dz?F5@}7ho`U=uQ$t_HT~wJ<~X;RaAEoM*Ew!YBNj2lKiA|N2w-'
    'Y3a%<rx0b?3WwCq+`zZ)96Xw@GNYswGv`Fp4*U1!}4`$txsJR17@CHZn9W+7rc!77x-'
    '2_1(^P137_Abu{(N7u==|e<e=^fE5dgfG!o;g2=w4HT#fz>I=3h?<Rpuk%J{Z!H_(i`hXyoEcy991WSQEyW3eM~8Oppjp+dt?0mCZl$JSnqxub'
    'w=j;!#`)#A9dU9fwAtWJIJVeI&8Q9+%{G|&1|@FIqVs$Hio^-cKf4o1C-'
    'f}rW=YrD&8|iIZCyP8>wvAGL3)}%Vwn{1wU&cNu0wcaqICA6dWj9YSQduY=MzsM^ae?q#xcYJx!qybwgAneJRqSd}x)Ls_dA#>HTn&O<E<1tVm'
    '}IYYC=<zQq*mQJ`)ml`P8kb?9#&!bwCfOKM|iJWCqRnvOH&G$*)bRJ9Rn=!<$VO9&+cZyjcOT+p3FDe_**$4iR7r<}g7nad}};9Esh<DB^)o8>'
    'y8;JTl8te<|u&Th5I{j}({yqWKM4afKI2k!I>hOH`wWil8T@PWDG8M8EVQi=$V{NRJ7SEtc*0&PR)$;Xd?cQTT%r@|U$_D@5(C+uc!N8~{7t$u'
    '6R>2K4sM0`%UU(qz@=75rNwp2<@w|DG<`3_zk-r32Bu$dYBOP>-'
    'TZJem5Wm>!$Hn~ATH4zFm@%aM9>nk^$l`+IgR=COR_|3TEi5o9*Bs)!X@}gmz9}%uOb$VouCYjpW$c<2)1f+zTE7G~#aC8cI9+J)+fi7M8pEU|'
    'y8q=*J(HW|L*JyOx#KHV03Ly8$Q0Jy_awj;E#*RI`!O*?t0|wj`-DWjOiQ;Cx*Xxfb-FAJ*(@?RJiKv)A06JY5Ooo$vwQvZpyah=lAYqYU3bdY'
    'RmIqX(_{FRRf|K?w5c+F(*sixePTu$WA4Um)nzogO6O%&82hUs~f>IQbCz=44cw;>gg6qujmQLv3$AJ`;$s!;mCWGb{eKLaG&~^iM3Oly_xf7;'
    'Bd5QlJ`D9_y2Z_J)l7brj5p#MS>liXZ0s&oH+}FfeuJKaIPOkQwg2_Vk7~oCXf8E%N+(5>h_AGNrOnapr<_VdPcV-Kegu~Fl#byz@TfrCc^x}&'
    '^ax;_BdH+MRK5FZm!*sof;P%b3k?DH&EHzEi=cU?WvdKt+&G~tNgFZT6p<z(tWM@6Wx=CY4x*wogIj8Po!5SO5cg}(xTb10hHR$}(?oLiS-EOH'
    'OY;Q#IGH|%tQ^UikrDxZ7r3#qPcL%3st8q3NbjRaKr&X%%%e4mf!U;o?hW)ROf9v^+8RC6~iAm@arViavAsoOnJs{qbgT`R+Scr!@h)MN~95i{'
    'nS#}vrj0RKt<!c$yj>%LmDcoRbXBXk5UVGQqffGiLOWR%b`K!FRg-'
    'N9dN3b#H+8rCep)(Cj)v{GRC|k9C`1iPM!Jqy3Kq*f>tfnH)WyLv(wkv+nY*#2VOm|)%(=*Q@P9I(+FQ{7_u1Ogpm>l)lED90LhnfYZO~^(kAs'
    'dZuY7cHA0bD;T6VR18THQ&2h*^qlxUoaCrbBx6!kw>vVP8w9ecbrGsCT<%Yc3S>3CFc;9h@WpLyshh1ET@9Bm8jx=FAS#D9X@dlz<V-'
    'c!&ajf>Uo5vgFpNGkvOj1{<dR3sidF8BAKk`UeeK36ut#Q1!%2ppo<w26pG=8MmjfZuSQs(VO$^^cT(Lu1Bz-'
    'A`KGkLF)^XJCEeTN3@cF?+Fg7JkF)`De3gxNwht6_I1=TOk$<w^g63V-'
    't(dG4Ucgsjw~_GpXJVABD+(2v1g4OVBZ<29at8RDpzy_>7x~br}3k;yRyc<J#+A!eic$6Lx2E1q647Bp?pEHJ{rLE7!T_$qp*IM0FpK~wv#>kD'
    'az_a517ebEQ1P39|@<OEvLbwiBS7zq(V(ghO`t`P?3G-'
    'Qvx`Fv|j#ZDJ+#8eZ=|aXOayFiXoeYs2WnvM^Y3!$vYd`gb`~|`BPNwbK31|;f4)2B)kX)7b?)$ZPdH?UeOgh{inb0=<j>_`_`R>H}vbqapyOo'
    'q-Z{0qcFjkkGO+7{j=kH&aA|WS<hKb_;+875grSbt-nZmB?s_>oKGX>+N9;cASbK_&B@ANSe3s(6~Y02>P}Od>kSTG^{6Bd4AWmrSD)^HG5>-'
    'g1WWgnR|$GD-T4e!`;QFkPk@@}B$V8to&vY-'
    '>seAB4n7j`FffQ^>kfdNl&yRAk02oYjEE{vz*FCGI0;ShaSco`={naq%QnlE$`3h%FFcBGK<J~JRJ@hNaDB@od~kH%YT`}vf>u>p#zk@KIHlUN'
    'mNY(@Ciaf|65w4(J~bzprU3*DXnD}T`?Ba6=V{Hp(*xl5JoKC}w^49xhFJV}9-'
    'I@+;Or~T$WJ&n9{>)}?c{rn4Z`PRb5d|@TE2ZtA(AN&wKNJcS+`dz3m{ILUs2Q8h2CZvFaw&IDfsK~iO50?F}iTzC(J!j^4jh8>#YgvR-'
    '^w5{OXpXWd{)Bzu96Q>{t)@?|(h})%vae`(L_k8~w5z_Y%~Qon%kZ3;zYa6Lw^@o6|of8~CAZRW)r@zf)T^O<T1BZJ9O<8_||mbP6K5{aVkL>_'
    '?fUxn5AtV@ackS_N?<ZI+#h{qTASO6%1IpmRWR@~pB2T3W0B0r|5%9=9jG%ZnZPUVv!M`jO93C^+f$<J_pR7}RilAiCG{DEr-'
    'lct7=4%!1@mvKfPMKT0^L+mX`NVMkx>mPrfB!e2xoIQ4v%t&sJlDs?9AM>V1DX932n3Q<%n2DGLHTHDrg`CYnW09>?7MTS1g3A_#eJ-EY9-'
    'r1tuO}+dd-u~Z<w|T<W-'
    '(=X8(K)qoD`J+C(EmyUuk_*Z!>xdO%0XraD)sL8w;yJH0{SmJ$Wjj;Kg1HSCtabG;VQO3X{h<Q#cAu|F?#T2wGx?JPl0j*SRT6io8IyjyN2zzo'
    'DlCE8@BH#ED#<3E<9iUVB^-VP_Z+&Yj3q1wN#(BVcD<h=kz8mHTs#Ip;4HjEjl#zPTlZfy<(S?$dcc(gP86Yy3m=i)~Ok}(-'
    'po!u=CyepB;xP*LIppM$?Le`ZVajZ=+8a2Bw;H+r6{#IeOxKE^>DwJHA%plspk#k4_haJ?5^iJv{UecHdns+>kCCX^b^p`I!rE1DNDwTfcjUUI'
    'IDgss+o{3YOa!<&xgHy3iAX@H@t+W+|_}5vcngDe>J8#hw3tEq>&Z&eEA8eX2-eGKgNKX2fA-r)-'
    '9A8po}xR5ewY^c>x|t9$G_O}!vptdf4E8KXigcfQEdFm+72N*<>XIg3X3k+JAHUorVKUbcRu=y*bT@IxvN`4h{712Hd4IRy_{!5tKQxloS^N`+'
    '&SRET<C+sWe|8aFe&yX~Lb-JJ-NEmQ*r7=2ywM>Ye*5nzg4Y3CrbZ?eb1BJem(0#Fr4wS?m6etG3Bl=AiU+F8vKHBvEVGSwjsD=FY$BL0}mTZL'
    'BaGeFhxd+yBh?bVY^z%AGA<g)w3Q|zSZ6nnMJ6ss0q$*a0aR$$pR4i%ql`~fd=mGkdp$wEAyi$%Eur{SD_F^B(v-'
    'E(7sMPtB4rs#Lx4d<B2SI~6#R^$7s+8Ui!e^~ELE-'
    '*ev#`jawc!Z2tVmw1h%|KriR+nN;aX35ryS#4{=X^%%bV>pkRZv?bukb?WA^{u33maX=7tyf~e;pfcxhFr5ZMLd!wpz5=ttBQ&X+(et>9SSJ7n'
    '>)av##%8OvU!Y$Kcdi{yw9iH2nLF14H2nMxu!JAYuajZ=_3BYeiSO>i$+s-'
    '9gc%?(hlp$@4*GAcS&m5S^`b&4ZRZcf$Z0&E|>3)=m6~xkT%jYC2%MHla7#T*-'
    '=%b4yN$sE+YvYUwPepif3$%9acy0E5@Nj=zd|7Xt$Mu=|!ZL;*|yy}+}=8#|;(IX7$T8oKl#6_YwwDaVZ!(h)FJ6NO>ow*l=t{8>a9K*t^++O@'
    'aw*+5`cVycf(*Q=FEC3dkx%J(S?eIYF$_!_ZLReZ{HA#{AH)ql4Rtk-e)D%KJUN7y{C4=1B;eRTdt{zefA+x?NGdc^Q{w30IBwTP`0bbrjB-'
    '{^&<^N{)8rUW!yh!ZFT&VN6_n=4O`6nUCk{CF$zds0;VzIp=jOCwl%QW>j2{vHBiE7PAhzO7uy-wYTn?BHh0ZGhiSb{u^+IM;o5(Q)*-'
    ';35(QTijZ7Jb}>23IX|q3Q0jaJaj$%KE^eNe6v3FS={=>Rq`_oy9Zda9XrI8P)<i$I3G+Ju$rC?+ijlcOn!ZO+3jv?RZ+WVzT>PEn~Gk4Ka(oe'
    'YE|26VS6fRWpaXiY<Ii;4-X>AM+ali{N^-KnteK=h`Z$vL1`!)M1Dgu#BDwu4fx%GcoOp4PE$Z>c0Leq<LQ@wc32bkb>bQw-EG!c2kCy~H&Q83'
    '2I0gVi?2{W6tBvY;l(sG8Mm4gBu^R)SX2s-'
    'J00D3jG<C(P!w!G0GrObax8mg*$cW7MPVtgfe5Axk0y##?kcS!B!KS8eJe6f`MtDuwS&1G`nB(Zej$ZB-'
    '38SFCv~+>(*yN(UH+=ya)PPvuCY0hf+rw7tJB)nYMQ33pj8-'
    'MfGO#16KEZq#oJTXzgZ_}m}Hgvz%Pd#?^rJ_=}HZ@6kV&yZffkUi?npkprxC7lD#vz+ZiU7gfc6oT(VK(fqi>svbQqb8#D-'
    '$lR~dQyr_5cvCl<Ze*qQ!dL+(cnmzk0xKE?JM|{Y_;m6l6F^r?ki4@imsKB*KorPW`KNNyV+q6pK)N=goIg89GwYyz7x;Q9#Mp7gei<hW0lP{0'
    '5A!MlzwYOZw7=KbuL8W>+k}0v-l)gvxcJc$8Fi=1KXyvD(iZeY$l|*l)kf~})sAQfq-'
    '@YX@sIl>lvvis_zPEHr`Jqp8V?mv}Gsg&A3iQiS{y|1r$BDw2iH9`pKqJLaLNKlV<imM=Jo(TWpJV^kDAfuh$gvMv-iI4I#K_fPHeUSy?7iD^8'
    '%eSt_^z)=b=&9wDu^XOs!NNlYD<D3i53W80Z=Tq4i}aLl4O>^Oq@(WB)XboW431dwl8b*18ehe?Ck5>d_n!me95}UB{L#2A};_)srsm_tV%-'
    '0#lyqH!`;I#(N$*t16?|70|W;>R2N!<H`uUH4=mnM8fa2sV|!3znV9m3bG+GRFbrD5QE$)!K-'
    '$eCl6&oqsp%fj_h{VjYujc5e0uHC)Onl1%Jaz`^*a0Q?%^1yw;%v=b*G-cAs`e1cE8_g+udeSAbOa?ilD-'
    't&u1RyAt(t(O8?6y6WW?`jdBy+Kap&v#TZ`kLd;p!#*?|UQ;qHJJ{l|!+Joa=eWB#1v<&4*l+@ZIvShXVWWB+-'
    'i96g8lBFck!AeqR#h)Q_j&5(vJc6|4LgB)I8<xlbc+8v2Xc64t9SxEJ*S(W{XF>tbj8=aoCbB40<tL(HLK?wmD!x5u$Zj$?qRb{u^fFGzq}I1g'
    '?l2};90b7v^NV375p=zIE?)4Zr5GujvVlOPr0I(7b&il>aSUPCldKo<pZw*GJ;S14pg_@7Mo&ssz3iQg3|XR!XWRSLScQ4c5{4JB2cx8u*B3ML'
    'KV|iMa+-3lXZe7L`1<A>`K3m}<xi?ZdMbhTeP$Z%r1o+gYNF;#!TdwY_RBnzwM!E2EyE}X_qoO#|4z<lIGj5Zp!@jOFt|P9I${0$-'
    'S}AtqaSXd?Sh`cD9KZ*q}u0_nFy_7Sf=qjOlYQ5HGHEAcxY0mnO3CV7QtLj355l1E>Z5Z7`@KCXo2ahXu>D!#}|LHKrac=DeU&z^(_aF%WwaI='
    'j9{ji4_NnFjJH>vjUz#@mo4H3h>bmAY^`r7>aOwKY(ch_YS9nHDBX%zBtxJumE;w{b4_Vc^%qjXJ_XRp!^ZeK}+x8hae;nM=o&<V0g9yf3_0GT'
    'U-MZAjMIaB;(aA@UO^Xi6yGuV4&^DcVcGNRn!tR7ax)|+vT6$g4S=iHziVO$k$woSmgAs!p)snAaX!?E=-'
    'uVFaTX37=J=r5F?x7h%l`Xux|Sx285P#1^hjtE*l`;b>wZOC6xLfkNv;=fgQgcbs(hEdFX!ff+dhoFvT)V?$lx>lC8>u-'
    'wJb!WaR`(MEbxa(qwpbygA8`jzmw%A;M}jk%ew0!bm^tz{K#|d>O$NL@SUHe5%8dQ$tc#!&rpQ7eQcM112rFlVNmkHnT24kcUx_yA$d=I;I3DF'
    'P3gaj^eZ<K*_fZ{?JfF7=R4xjT69e+)KR7;b^>wCitL3v4rqogFn5%gT4|D)J{qs!a@G5a%q8pOaU4~XJfq&I>bvYnGgAk9!CJ7!l?3$k_+*$t'
    'N*EnW02%MPx3N|aB~*P$a2?c{V6NsZkp}N$|MB>cMbK$LsFUjqbmb!egKmOj`dp2;I#G=TskT;3XUynpUJqWU=BcaS{vvl-'
    '2I*2p>FIZhzhgdir&X-4gR;YLwm5_YM$)1bQAn-'
    'b>)E0)m&b<g(nfyH_I3Tb$6)45L{q|M`vV<)eM13fX^nj3Wu^oIBl>>_YQaounRnU5uVFiXN5(%@b4%O^HI#aQn<2rSnDSOzXXtGmKQ}!m!xro'
    '3-^~LW5V_CUjmQfTwr?TzOlTU8+Yo#q5vcZ)8;396R-'
    'B=1zKHkpb1H6jHxEghL&&nnpx{8zTT6oonPdP<74edvN&NXiZA560Ywu9m<~{T5?}4EG8hqHh!hffAkv|C%VZWr<b{c_zz})HEvo5w6HJ#AHxf'
    'r9TVq8lxFP`12<P<t7g*Kg4NiV-MIPKh7bIadUPu1I^8w2+vwsWJXk9E9;&5!iv^~qG$)3S9`xd&ukzL{&3D82n1>Z}y-'
    'xE|sYxuKo%~9Q>xM66s_kf7wZObub#iAFbz{U%_SK!Z=E+|4*&fIdSQH763F5QcjRtDWETY2iB-RkV?thAYlxZ)0ij7;JcRQ`<mN=6e-'
    'p{WGeC?_*yjwErJ5o#=Q<w{(FRF@1WU+&sn5pH+gMfO65MBk*LN^l7PsS8{JuAW}8AZ)yqP?KDdKpO*eqw)zc#gZDMB;Q>SF~jj!thnU`ijps='
    'dcZ077DaSE8XhXF$>sq4;Q@AMmmrydMh}M*K1}ibjWUHx4=~SJL&#;vSn9|WT?I4%MG4gM^sSc0b?rs;e4`Kv`tAKm+le)Rz4$Smz%PyU`j6_i'
    'OP5XN(+hF!6^w@T1CP8aVus2Y-ejAiX$y@fkleN@J4nu4j5-yyoYk9!PEGm4-'
    'U^=rE0VE_o24Wbo{oTx6Q?n$7yiW_jRs@lE;bks`*su4J{fE_*~~#}$4MOR7gEI<_~nwnXGX-vsNE2HJ47G6b0j;$W(kL7c;^0{Dqko+k}S0Ys'
    'Jz<mCzk|&kz<B`8?#^A)4XY3q-'
    'RlzrsyV(=w|okbe!xt&UYwQix@gz%Q5(Q<S*yi7l=ky>SfB5KaxDOv4&2arKJWEvC5wmbw_>t7HQ`^vnL{`ntGj-jS(8Ro?{11R&;rw^J2*iH{'
    'v22v8<5&lFchv5(P2Z4Z<5|R)E8p&?+ql4bL$aYdME7;RMEHGaSmce**GaNHgw+z8h9b(S-h=T<8>Ui^4_NigHrb*8xugfAN=@QCvW-'
    '$Zf%lGNxOBc#xAcMLQs-+k3;g>rPMRWOm8am2p5D!XzS-'
    'Mp%iHGPU4icQX9G3xCJzEiYLn@@B8o8;tku!MpL{z&?|HJv{>PQTnArT;{Q1hKES1h@AM;K&!wc-vnm~@}n#OCOD%sDwioELlOVulQ|Z<jo8I5'
    'J#CZ`2%_|0$`j&4N(pOHEA<P>K?8YplC#L?%)@}vyPrJE?`*E%8^1}g1Fm!ZkKzKGELSwWzXX>XPk3!go|u?;s&)1dKp;1B3Jy9ioivXj=IA`4'
    'Qbd0vucpxl3hMc;F)w^!c_|ALL83@Q5(5FB4Us&#sLI(gai5YT`MEe_HcuKtGYUFhw8#>eYI;{I@#-'
    'Mb)bQl^*dCm52^G!p)2Ssq$>1F=*pRexEXH+^P<#~1v|_8At{)U9L5c(ZdD0yzx%<=p1LCvd4H4xCI)P<)APFTgCNN~3q!iGJn7=5`j=!d^;4L'
    'B;iwdMf*4@;Mipzy;7{6D{g+u!G7Z7pQs^AM2Vh8nQ_g~1{1aLFBlpFCAT=j_&gZ1-'
    'L;XqrbJ(@5!Aw6!qj+f`Vx754^^5u=U*mNn%>oh%>=5$=!UT<toN>+@f9rF5f<9IW+>?kSW-1hgJ#bW06y^n6X3L9|?gaO*bI-hYsl4p9PL$rI'
    'T&+pq_Dn27*DQDZBkE}_Ofww&ab^ocWf|eNg!aATGBdfeP`pMGCv8D2+uQ7`nN|GuzQl%)VA6Je9MPv{JH<h?NYx)#q9RmC(f!0dI2zq)m_E_7'
    'C_#PwWGxS^YV7^2llA4Tj?$(?-'
    'o(W1o@ZYmXBQYz91dd_b_<18qgmw$h#vH|t?9RcPl>aQB3bTZ^@bMJo&}Ag<G!qPTx1ab7)eRPaW$(%ZjlIDB(3^eS>vqoaeHveq8Cr!$Z*@nl'
    'LH@9HGA#4Dv?7*{x(J!z41=>A=ft8Lv~Qm^?SY9H^2;+@f6=1VdXxN&&a=fS=A?^$UV~omcsytwwud9}HCKxf-fXQoNYS*M2}qmbqbJ4Ka>h*>'
    'mKdD4BKOY*_HlbZxwVFQOR(Ryu-$mn8xFOzac?FfXrM*++WF*Ke!xf*g$~Y`D&CH}gM!t{a__u_^!B-'
    '&L&LaBl@Fcb3q3d`!;$f`98sWYp(z!tYlZc}2Q5-'
    'HyEQPjYIoa*_Hj!eKx$^zW|s%1l#6$n>R?Ij5E@TArC@#fw!~l&(Z}*bieEAX4I{!mkb>Ans!Jp%gy?Uey4TNzCySyb3k`&vp?|0JNf8S*D}{!'
    'dQ3k<FES;oE-'
    '3;9mmLav367XXV{K&Hq;C}H30c{$ASWcBaK}kPAGdbk4aw2PTkAcskI91lcBPLODCr=@`C|x?tQahjti71;1x0r`G&F#_uc;kaO!r~}$0Ort2;'
    '|NykGCth=pQ{ltkmv(tBj-'
    'C<s1)tO@YnIld<s102*gK3@o<jr9lJW0VZpmr&6Y1Y6)OfHGRY`h736J5xB8~6oyrT8rNLqxYK?t)cW|)#qyPqvU<YT(bd;aXmkWbMi}dM%x<n'
    'qplk<WOJ~V_3W6RPjgG;98yQH=&bD8lX%k_yrC3hH{kpA3Z(wd;H6-'
    '`RibND^*#n|JAy0j2K6Ar?+vda!FO6y<^N}@5K;yeLT!A@RiU0vP@{v}#0e)EkX*(CWPduQ3=_4F_x<BS4=!Z@0Mppe-'
    '(XYi92heO2NJPa000P)bT`V$;H_YJ=22_B^iIyhD%idGFG7s32n=2*1AfWRr=kI-'
    'F4=&j8>p{^Ya?M9aiK<&q9Gb|S3S3=AXfAPs7=NPGsly$pcB7FU+e0s%RB@UdaOJXrV7JT;1!fwDm=CB208X<D(c#DG|?0EjifjjwBA(o}2YP?'
    '|j{t>n>K55)j=sDsIV@A^0Eb!7Un1TQN)_NtY=43V)8oP}9VK4zqlO=b9)6kjQVX*Y4W8zO!$uh|Bao7+s=8~?7N*XgHGAZ1a^ohM6MB)@&|0N'
    '?EgGY&|)a{M1Iu;Veu%$$e>a<GIX>Z&gw1&ghzT6%!_hAceU{=#aE!)0^;MX|U6lBkOTFBYO7goK1(*%(d2x6NT<Jgv+aG~6K<0U*F3II%xq<;'
    'D$(TR_OctUGm7;Y&{CD3Om5fH;WT;AL`;VRA345Y6E4mH{)T%;Gy<Rj*E+-'
    'o4GyJZR(n_)=Y<#v;+k=$WP@VV(i%o<I4c`e}w8XNRfj!UII8uK1d>m7-&6<LuH7;em=>F#^Yca&IaR<4ea4*Gn7ekHhcE(*k*4&cg_=FL-'
    '&ioqMlRXz@^$|h5JkvvWi>n80(x|1uD=16}G0>wEgBz)%Wl5Bc>iHP$Eur%>ydj(0mo!3+)h2ldebdudiBqD(vR8nGy(<8oke+ltGUQ8aQ{*DF'
    'XYSG9r>R~Cb^qpY+MIZis&>LWfbo)2j_Dook#LEkk5{;yBf&YVyjDB}h$(Jd$UnnwmoM`dhb8p=#5q+ob9c_$WX9-<vxTtR9-'
    'nCl&vFI<aYm~yHt`S15`#s(fZ6}j7p96--46;ec%*Q0s`OG_`*#`~QDULJJtJJa;)>;V^#<B$w+O=xxz>SE9K6|2%7Veyd`x0+{5*80?C`PYf0'
    'MNDLUts{y#gfL^GB1T>02XcpgC?aXG<aq~<*6?Xs)CZJkfHO*-'
    '9ydwReuq__=!(J_5_;=ksPRN03Q%S>#yRFIkKYI)5dUFX}FBSWQ2Fojm*qzyO$MK!pXzI2&t+y;Kn%H_ip%ohEJ9ijX+Va8jeMSBt}qv+>U;qi'
    '0f>-w*QK7J<qgB_qh^mpp1?7Ya>cYgz3DKkbZR5_>>?X-'
    'kM`@H?pnsr=|Ejo^<gvmba=4&NSt$+}nqKJZOzh2Hnk{2DJ5B4LorpzV{jT`}e%t54qQxeYv3`EQTC;VYKMb6eyJ~+<Ct*Bt7;XZ<9Xn69!%EW'
    'xD)(t1@?i=cBcrj`Hqf*oMz|C4aWN*B}fCDUpSG8^R-'
    'B_W3nQQN=F$bb$|(kXxEOwf9AtmtzhHt5vV7z_8A6{m=#FEsO_zvd%+v#<}1Mru?)wBGH0*CxiCg-'
    'r@N2DE>(ik``~IL91zZI<0+%cMWxxpviUUh3<(vMXS?nX5hV_iC#|pXq&wB3niDbY|O;M%8(rsgdUu_SjNqm8$BLj{c-'
    'AEdcJEdP<OABMBc)it@0Vu1|*;B>SvnOoPTbppIM?X_W70axgpQ}TKz1~{hj(*p8I?Cvpn|?Drl_W3;X<|+FSnoC$;x*=1tvwFJx#@(biDDr|`'
    'DtM3f*|0~K=(wSj;;lD8$fx9N94o*aTktaL->O^s<0HQXZ4?|_-'
    'm`GJjKgY`)&1$$er`QX6wz36&$8ys^PTz>L2>N^+<<9iFwnPEyB>N|k`xzw(R;Vf2!Xtx|<pAyrnB`bI-hxF}XjJbv-'
    '?(iN$ZoA~T5P4HA4J6JHR|OiiJFR28PwHe>)v;(wj<Q3Idi~T$r>s;#(Xme3`=g`OC~+RaqQe}uFrYa#PFzdrrTQhI>f)2^*>ErH;p3O$=~*<>'
    '4@vTqnje*&?_Z(aSo^7UVEk17VNVHuQFy{z>qUK6lebRXDlEiSa**uSLgNID^+MF%Fp_(t2)Wmbk$a;6xz`Jkd!rD!*K^3dQH<Q{dF0+Ol6#{t'
    'xz`_r+#6<cZ<xuwQH<Ohg~+{;P410S<lfMeJG~Dj^hcDxQr|~fX$oT&&?{6rhR^w_WVG;S%xP6s#%W}X(~!q$7{(#a$^jjK_zGO{Gy+&oBn@m$'
    'xNU05ZBY~1eNE!pr6z0WCTj?jHIm61;$)5VWa-QZA{Q^(vM#nP_<jb|E~FbT@g`NQeM9a*Xiwy%J>Nw&Bkix1A(@jwxKM`EM#ww_A1dNQ1A-'
    '3qmW`<YIe!;LxU6f3iaErmdSwN?zxAy}9AQ8VB7c{IY)0V<-Pe-kqU?u7kl}x<G7sixnE?r4JNh@@z5O}<6Cnf9E9;JADMRZ2bK1{WbeyM+e|l'
    '@ZYM7b{?f#rLgvDS18t>q&iJXD}DIfkATKM^vRb9HvkuAk3UZzLClUZ@HbY)fQ^sgG$3$b&GuccsRxX2GNKwxcu%F5`)`%3fekQUEFAhTgOp}W'
    'jBdnN68lHZ&DdFq9N>r50*ekOIT>3>fJ_z(*zn!1atJUydbpV7Y0V)9Ar0<&4np6F7r4%3+VUc5w(^^$|IN}%9%q?9W%4H0Y<tf?SeA_GM*fQh'
    'DILy!{0lHp#as#_TW2A=YRRMX&Ix340bp}{FpPOWv^ynx6dvHuF|_#v)xH4i?z7tU-'
    '(KOk$mYgpgBW&Pk>{g@;jz|fc%B$O(m!;r8FntZ^S?O3Pi)DeI(8c^1>xDAqo?#QD2fJAV`$yL2L&Za#@zm8#l(8g-1B-'
    'R^?Hr$~q7XvMPK8FiF443mooLY71hc1l=r@&#>ZTRnWiG~u!DS^)>Aqq*MFA)lo`5~T0up*@}Cw9xi+7R^7m4!99KF&y_3rAR-'
    'q<7|hq+u7=F@ilfvO6@twugQ&V#ZgJO_eIOY`zHNVn_m5Tr1513m5Arni@Br`@#iKrWy=H2;v$jkop;MknV>rjTyZRlacWEtbS_39rbc%L-'
    'ISiyy+vxoT6yS21nCjeU@)ws3|I(@OYvKyW5(w!RKrUbLJuPF)*mP#&Tq0VC$l(p_qug3C2wznk8utVnYHkN3hmxP^{tbk|$XqkS`6PXBl$mx@'
    'JMlZVaOW7sB!SLFCa`hS)?{OkmDCxl&`vyaXIU-cO-TLuu2H+h_qNmO&$lWpu2^9d#R@+zxvr<2NForW7Djd@R2w9*!pHezF?hkzyeRAn-eJ{G'
    'bXk`KuytDM#_StaU4=K>127%G`~jVu=6dwOR2cK5YtKqmLNX+g~nBN%(RNxf>1B(2nz;N~>QF)$0tTM|L@_+D|FfMR=mWHcNa6j+e<dWL@8I)p'
    '9RD)q19JHu=JiR^BBSE0C~!ov@&7(l9nD^dtpa(c~o>7!Nj?6N+3^MK3FPZ@IBK<-U`85O}HS-pKCWNOw=?wj|epB7CBaC}QGze-YNH)kyfIA('
    '|D~&#^sK>Y9ibceDWvwu=A6erv?P@%jYP7|NKeeuDH9zKck3&^CNdJm*|3k%k6kgtlDew_HhMHnPTSNP}iIT{RS~Ngc}6w-'
    'JMG96F=xDreS4*0ebwud+I4uD3zg%XcliB`$AOs3lp=T})t^gEo>;8@u|$63a}wqLDg#j!VU8gGUb>1N>jZ*nkuC6QSt4%LLp4n(406uU@PlhZ'
    'rF&?7)fZ$Zs6$6!GHXR~RgB6I?2}6s!6yOo?xNrbAHm$y(l*jolol{KiAg%-EZV96~3_?{)T5Bl)SpeiFGKxhmt|xV)lc_|HVLN}CpI)-'
    '#cQ(hW+CEm)9J!wTO@j3}FzQiIB$1wm}!zHmP|vn3iE(byJS_qg4USxQ;eD>t!-'
    '645cbb>_TIlht)^;|`vG?ZTgEGMr@?V!ayZ^#Uz}7Vsj`0LaTtc~U7XYA0NT0NK@wRabI>Xh@D7G&K_YD@)oUL?fd=JT>eQvmsq`h4L5?XAHST'
    'dNyhj>k!cQ+y4dYf#ptJ0?ivVqlcaoV&-0Jjuw9>BDP-ghdDrw<Q-#d@8r-rX#f1i`nRP6@}lL;T_4(=99z=>nt!~BtjN7uh7L76lc4Heh-'
    'r!BJWp|DAeh?<xCz-'
    '0K9QoIAYxBxySMc1?SK8B|2OQx+m}{l4$Ag#|Nh(m2yg`pcjiDREILt*K|BU{9O`})H)JkJAmTcf8!dkOe=N8jJ~?ErAYyVoY?A{-'
    'LPm{88wRr_8RiY_@9YyG>aOuE+&8dxq$vhC4BoW&ZTdLq_()GvhXhyNIPeEP7)Diwzx_K5!YuPi|9Jq!^uPYwf4A5Nhg9nDuYqFSn>m{OV?y51'
    ')VR89j9-fPxAF8Qf&lNjD&BRabcI>#`mXf?vli{T63bti2ujHfTGuA2)1Idiqc(C!P0m`JDw}RNr5bv$0`k^^X^(-'
    ')5aNmHT~7jp*5r^QX_E@QsK~)MhV4#0vb-gvwOhU~mC2;O_l70Zx3+}3aS8R^@_qRd>e`$yxVc1S6}%vc|0D3sB`Hrh3@#TJ0oI9?<WY^Ho6f+'
    'oi6?ii>xP&Cp{U=+%W6i5y+I5s<=^pm>B#=Lgp+qE*a78Vuu`A&12NOdKT%_y^jjk}QbQf7kshg`8Hw2!<aV0hVnc)6GX7N`z0h?0i94$o&ie9'
    'sA`)WNp&cpZ{z$fls#0arkVr%zm$V=AK1L#e{ByDNNOny6hAySwL&*&v*x&EX9RK5vh2?V4=?`n0*2J-'
    'V_ZCa7#u*P;|EtS8Qoi&e^xR8mZ~@$&k~yhB9kP<vaJ$c@;&3cG#|t@sV2#x`<*))|FIWjwEJZzYqU)Uk*(nQ|bBpCk+)ZT`RO*ct%o@e=epkz'
    '7vlSA*G<5N4pC`d#e9%yg_`*-w*1~dyc;J%Z!{y^>h0c#1LyP6Wx1KJG%)jScA-'
    '#+OoMO$qSm}XMS=^dbvt=2aR=_;GX$N_hM*`OIXtEsGonF%>JX99J4g=%~R|FW`2t31aQ?g+-'
    'tKVzBYmHdFAez4nfx#ri2%7Gw(qRRl_#6zJJ^K(L;xlN5)F4D`k<Mo~oVydxnZ0*Ha#E>HN=aBP7Y}@pWI;ID1_^?S7WiT-6l1jWjDv<e-'
    '{L*R3r1Yi{L(~kG38065EMxY{usEXCMr%HQ6H}B`63U|vJwO9M+ze)fzqD$LcyOjsZ~u&rwp8(VNFNb9h#gR0D&HOG;ZhbsRkG&=Q*65Q&fQvc'
    'FIN+SA#SPq<zmw0r40+E1vq|8>)YvmN-a??<*AzOsR^i`lR~ljYv6W96Fz3g9N`6^LLn9-gtdRVWnkB#Y>oVnl|Yy^<vHe=2Y(nw*cMgES?-'
    '%#W+JJ<5nygK7oW8s*9plWoN1M_*o7TWG=EEQYAEh{YhK>(%T6*LTy!>pun8^+FawbS|(||0%306`iyQGR}Yqx+K?@qIJES9Du~PV)`TKSFhPx'
    'vL@e)5%5hnd%XI@Q3@|%;z~cd8gFgOt;ao}Ao;{uN(bFWusvhF`G+hHi{~~t)eJX+;2g}(E^!vrg`RIyFLj_`;LJ$<-'
    '!qpwJ;@?dd2{EB<@iyK1-I%f7^p#m~!A0-'
    'RtuKZvYUG5tQ}v?J5ne9;+o<G+xlWiVk$grHc|h<bT=vY!@<ge0)(xI)iH4<WOFG7vK^WU)>jkyVG&IRlG8ImJu5-'
    'PtsAm7gnwjgW9;`wowG{*{Ct5YHodwGk8-'
    'w1mhiBs^nh0nOE$CF!<Z!B!w|s=>1ODfH=QaqZf+f$Gq81kkhZUDu(@ffL4TcDCd)Nn|l`1#I^WO@CYrRu8skT+LdQ<FNN36r{)VifWCHz=bng'
    '?#QoGp~A>{o%9J`$?H1tLwzl^Tb+Fv;~kRsJR4;JQ0jh%!ws)3ng~U>ZqcSKNwr4_kAJrDu};(CGV*p<W593Ey7UpIjUHtD#S4U69~rD>Pg${V'
    '7N+7TiMD#u<n;D2lEeH_cyj09s#b(AqEFYV8*r>ukEqR-'
    '?hCLRYtPhpUp^78N;N`z>e8TK~$FJ!upm30o@QsAo<Pk@et_U2ibAu)2wl8_a82@g8n82|eONMI;ge=w9#V@qTOA93R>5TZOQY)=9MGSV{x1-'
    '|LRnh2mZoY|O%3o{+<>|6Hqjn7WvyZt5@Y6^U!?aLbXKKkx~rh##n4J;y4^TDx(vbZ=X$gt$%>L{&fGN=0lWSO5;>RpsjFinVP+u*7=QqagSw1'
    'H%T#59*ac&`sqe^XT`vL6D97*HryoVmy376n#B-`XaY<6&bHrzk?&SrqE%Kgfk1buDjmRbr{^*x6Z1)`BBYSE>b#QY_6p^)%eRZ6{kQfXe-wD+'
    'p_eyv87p0as?R5HYk$V1Cc6yB+IfSSwij?_hR>P%yf@tpcB{j#pou&<rH&u(G9wY{X~%{wyo|wsxZF+5ts#fVsZOV;-'
    'SUts6{=r(#^|MmQOlAwujchb*9_)(84kCxFET#=b9ysAenga1Nrfp)=0g9$^1N{a3s#kt=U{KDQc`1`fgOJ?e|=LjoY>#ly^K#eX&>&Ao9b|^{'
    '4ddrr#`@*j((x#8a&cgWBv1^kGmzEb7Fd?f0Nw3@{^_75Ys%)t>yuV*68MBDt)BpcR=!rWal|<>0h{hXtjalD+{&pMf)8!?U65Hxa&z;0}!~5A'
    '3?|I6`p#Zm?fYF`J{?38F<AowI`rO$HIv&O#!zuKSmF-gQtGJo3h_xn6<WV*)5{(6@9J9-'
    '?{_ZtmM_@L}T5rf6eIwkLfk)i>W<MzmX!<KP6O&NG^xJ_p+=YsLLCysLiqdb$$4*4TE@oqsBg@6b&IYt{+n>54fgNBmOxwCqb|%EvZSsbsonhM'
    'lT_ZW#w^8I8Yd6foSxc-JVq9=kJW+52bXqh4pf-8~#rZ=qyKkF7Hkc~%>R`~c^IrHE#Zz&<;$73FUEwTx4mxm1n7Vp%Q@nzF-'
    'k!!QW>J!(;P74vnhtTb$CDP)}^{QwUI>l?mW2&hJML0`Q)8iy4|ap@uNv)3jQpki_k{{dDKdTzw!Kn&QecqGcz@~l5g%dxy~zR~&kT=D#aJ<RA'
    'F`wxBa&NIvHW?Yuk>Cil?CW!tUt8SJW4AxZ-ddU{ngZ5xJTGL^JJS5_ZD<ZaEU=59w9|vaRrNji(7x<T6cvH!ddWr?#7MA7JAY8Gt7>le{cm-'
    '%bx#6OXn(Mwh@ot<MJ$zl^6k_6?1P3*1I2w$bz3zJebiYOF>HrUKA9fQYmU*-R%_Ruk(Y52_R4B=&D)1eEa()t*djCA-'
    '4t0Ah8vHg*8bPUG*#29qTtRyiPwNKA3s%LsTFv_9OO^jVBfqO?d6O~3f&lOf0O0LfzW@L!<^ex*Fp99pUkH0NeMC^si}BfClw1djilOp_(vMm8'
    'UZ*vFRg%}L+oi!)`Ath#5#H|IVV)Tv78ZB^$Z1^kvg`tQYhg(??;VHao4fKN%q52!CGH=JkE4)0f>?Wj6HYD9w@!RaKQah{8`HBC9Yt?0iqK2f'
    'jT&p)aEAR>v)vkwdxLT7@UXh8j=br>)r4zC#{rOme*modaye`HB+ofXcev(b6<n!<F5Gyd*1<_<-'
    '0G670i;U0WIqGVpCb`wIS4|w2V@H>&w296!R7K0bhsv_&RTdE-ppI95G3n)72rDxq6KR~-'
    '~>I6<39dV&A7(2b*^c5N8>^3ussBbNg|SN@AS>u&Qxen+H-'
    'MX?z9`+W;h(CCf?4Zg=YjRTW`kJ)m5QYa{t95wy9hdF`b|$OWgX5W*>qsdyc8$wA<w@BlpB#c(Z;8JoU?{hD|oI{*|$nU~FW{R}C~;Vjw!p%R%'
    'lCyg~>@*)Fy>;cZv&cLdRQ!&E1c^IgSL_oyLc$XQ|XW#InX(v4^tWBNRw&o2cpsCcO$t(*+Tqk#>Y6b~&@1)gFICDI}+`Vdcr;)$3R-'
    '*DbHKJ#0#4Xt<fKZ{k#U~k)mL-Vk(;T(i1vYl4t!od`}AXbsQZ0JieBYBE=xwF4IKp$>IzCrsrNfJ?g!a@sZWk&C2K67s{%_eA%Kus)LEPTQGW'
    'zOUp9aF3ecY@eW+rInlE+tj88`3&onAbOh5jM7y%W=Cw8F1qwV(Bpn{JbXwgPcRpY{wps))zQ>{%nOp2gq+!@5z%m=%iheU&`)0nrKC*g)3)#)'
    '*3yIq(h=_?Jj4Hy>5|%r8xE%2{hcm=lHLEvNAh#&w}M}N&a_=kD!4_UJu8b;#m~`gyOQ@?@7YaEcpxcp_1TJy(y5RyDp~LMjnj3T;Y~G)*j=%e'
    'gMahxm|jgMI5W4(nl;%w9i^YtMamnK2Q-'
    '}5tQZsvWyni1g{nPsx!wWk!;LH*R3?T58$^|PBVF&*ZER0kcHplNm^F46l=|{m;5UhdePii)P*zpKoAYAj1JomqDmEwO9T-'
    'IZG3b+?!9jfc^y71uFFK?V`qNk!ghw%^BexhY@;qQro~{l{mbA(3?>jb|KkCn^tV>`q|>RU7|j<D^M!4W+}Rws^tc^$JpW^S;Mq$m7L#xLv5;('
    'jV#VQvt$J%EI3FLkJMYH(gLd~F4rgjL>>Z58d%bq2wO?K16$o$K6WFMumL!y$qTO|)#XCBV-'
    '5;W>_I|Ris+iF!gRM~y6PoB2gcNcO<Ucgqvl&H>g}WJnM0pv6u5}8^-{8RRbV%jiqvL2tLi*Eo6vKVuqwlvn6(L^B_YsAT6LyJp-P=89idh-'
    'T<>@KsUKD3(8iEo#Pgp{-l03&T&T*3-(r39b;cQwGeUsTvAksIf_lS6<Aekn4+tXap@RXpNZv<?o-y4k5lf|qG@ZAHY;x-'
    '6p(=mDGVITHZhrr6`wm)s7oFaz?%$#Te&1O7t>kf=Zn%Ar%O}on*&4TFc=>Kx)`flh=)b~&Z*^8e-'
    '_X_<=ocWM?m}v1+MpEX~hJa#C&3UlUjL4`yCa>0=w*X1h;nZ*3DjiQvd}?BnTWgQ^+lO1<UN@RJbNAE<=NTI-H~QkXv_-'
    '(f$D$)Qbbl|qdC)ma@1`L<gvAE+K$AF_tpIiD84F2&8Q`UC;Ke}V$BE!}`%vBMv)SRbgT@hyOiR26ia6A6#QBFOgM&9F(qi`@sHvBnsH$sHg*`'
    'mVo8|zs@0Xj$xV@W-'
    'Ii)snZE+|gcW&O{PU#9;RIpQ%X2dAz+kSaUwjR!cp$i$EA5!&Qi${Gy`ZCoKIoSAug{q*iX`rSqNKmBMF4b&fwfiCnW<OfeB(O2=925!+wQQ4c'
    '2!bflIV<_J2RHRcPHi*-5@D*y2jJB479jazx0>~%pk`8g;*k>_umXtPezPKIChCY-LrZ9i@AU4>od@B9dV@Vl)MyqA%FIMq#sn+3T>vyS>teZp'
    'R#cbbr5CL^^T*9cNiwSvZHpsP@PMtvzQ?;FR7Frty+i&89NhC=a)gEpEJ(=8_`=^~q2$RE=y1cg1yC|RwLxELcSpT3CW~whYT~E%XnfEcjO}jw'
    'czn?AwueVg?ss)(+lXglY(($k7m)5+pU@KbJVq)8NeEvej5!ttrk_Act;)4f5eVx!&O?93KasH{UY5{Nf+MsX=+L0EN<7UYKSeQi0lHvCs4;c0'
    '3dQ#b)0{f9k04?O6a+wU$0aES=j!z?EX}-'
    '&dapARX43t2*b%mkFy<q6n9<hSzNBTw(4fH9WJH^=Xi8SeQsch6Wf6TZR@&lA%({aG7G%1CPl4B51DwI)fcXBjGvWp)|88Ag0*dVLYI#G5n<xo'
    'L;e1w%u%YkR(v7TT?qUlg2E?lv9Tg0diEN26o=qJYbRvLGeA8pM^4H$kxZ66d*yFvE(Wuw0R?*@Y|GXFfEHHnyrkE)QLWZoY)@6Z@SAdBMNZp6'
    'y;n|QF28jr+u_BcUw`q5Atn~{;DOO5liSo69T8Eq-A(I>_B9oXM)WA8l2_4}Kg@~E`*1-'
    'V*1r;C)3f_sY8kTH<OM^j}YV+Eid=xJaKzZe$*Xi_5TZ1ujAcA~+j3g7N_HP=jC^&Zz!~v5&##pPxHJLRrLqB_Ff$&VZsDs7J@H@V{9{_*C|DQ'
    'VO8JTmEMM<o{6<t73OYfNaq9~-RxPOvfe<qQOdZ)SrBVZmBA@(OY?jdeKRH4`4*nSVkdO)`T(ckVKR@bC>-'
    'hCsI$3X;|*Av>oY_$=cby_xP+JoN7sFhD{iA@czDD*|bD&)5j7l3Skir`$u);6?|VKWT_N$s<Qq||n2r$(W6APEn0mJ`*#gcuok?h=~fWITio>'
    '%<97QgsXqB%0PaOxMy{7oJqKULj<8?2MdH)R-'
    'QDr^Rn3S@fm{h}0ymSu3$1PYEJSX3iu*SliEM%>XmU_k4G_aOZ^W_>0~pJ=B$F0K~JE^jL?eow<ANwe!gf!ZFA)@d}R7$m>n<`d6CSiwZ8Ms^z'
    '7~U@&e8DE|6$GtYQ2<vFN+e+R+jV{_)+Tx9L<b~YlO3a_FfoAG&29D|vO;{01m9(7+W68JD@dcXZX^ZMA=)haA=bjbvnr&hnPIxY-De%%GafbS'
    '`ll%s&AQxbFY*mSV(eR4OGQ#ye|E9nleJ%2R>m_E+j!^=Bq1F#YL45Px}vf|{!YZnA_=A$5X7CtlNVR!l~OABW1#u}urAf5z4>;gFQNUchq??H'
    '%FvYxYI-iqCWRaSo<v4kH_lnUf8ev0S}tory{L-ldV`GXEdEFMZJab>vkq_#%u&H-@dYzfw7h`FM#T`OA7=QGcp($!eF9P0*-`-'
    '|m##~ML{$ue3%+t$A=of#ht7#vn2MuqUjOUs+UfS`n32O)Y-'
    'RT{5ruU=whdgmjp7K|=c6y%9Z+}bOzzOTLhzPb}vm%#c9w3_hCe~GBSEt0FhfI-45&#w_!KY5XdF0-'
    '&vVPpl9$#TB3?%p>3w6pX2WsMKEdix4~_^$rO@@{V2sR!2smPbZ4)ara9j=0Q20>?b+qkDvt_<|8|y@-znA{-F?lp>6-'
    'f^z+ug)X@(f`o6w;P%@|Fk9aE)|I=U4q*{4XO3@`cyf1yoqO@q9c*5*Wx}Y)?Y^<<tcE#nzA`qiljh&c%>(CV2mTnq-'
    '&QmbQFWmrhSNC9N9tHqG#O25RuQt#tQEk`1(eEZa0QY%rE*aCjXm2#5`qyoe45pAc+~EmrEW^offLVLW=Uz|04%j1#oV)q{$b?az}_$1af*%9t'
    'e5m(f!7<x{<C##|2(DurjnjyvM9bSqMI!=rXyptb0wE|BoG>%kBZ|o^++Tqgxw|yQVV@_9V}<l;dOAEm0~@n$fr7rRQ>_^_h~T-'
    'O?S+v*WFmkjAq`{{kcI;Zkj}H(2&P4{nT(>BtxWkS?GVhbJq~{l>})zldoa7O)zN9<NTE55ual7Eq8eD^D4uaynJ)nCE3#C$URvDV{4ylxTE%$'
    '_)u*PPurvB5xpuGw*ef4J2xWEe-m1H8?M3N@-iaj%XX||2VYyEu{abQx8ME)&l_Iqa23Oy?)@FK8fQjniVWbw)gM@n<-'
    '51D)r$$i&eV!1sN!go;0FB>iCZ;@2#bY-RU1f+3Y07YfQlY*GUpB!u^5tY7c>vK(;cCTS~j@=9iy8srTX3C-'
    'ByhxQ2##rmTXV>xhc<@YBb^wBn4f7Vl36^;uW?0N)Aah!3n>B2m)e{_jh+%Nh0p@c~M3iT5Znmv`5%1ULOzWQ1X2D_nc76xoQ@z$yN~M@=^rk)'
    'hwpec@a4;6w`BWn!6!CT3kdDWfvaWsoV!fVM1iaToPcAH!3lVv`KSs%s$n!guh13EbG0n>NV?iEm<wBw3<cl60=w2LjK3h8=7t*U@MAu4$*%-'
    'r~kik?yl#m0|y3#Vz&-R$g>JIrOi?<8%O=|9-'
    '5m^I%0Gc<9}p`)O``9#S@)h1{?Ws&}wzp7`mQ6^jQmS0c(ui$RB$kx{?$g_*KDZ_QC_cE*O!aJM<F8Xc#7^8Ij784(2R){Ve8$(lWG2^A(oghi'
    '4NZpyEMP2>VCS4!s+6Xyq2E6jsEHc!~VZx(PYE)C?-'
    'Aaqh5j{d<$Vr0da0XO+=3TPe*7`5u_2d+~aM`816uiD@ZjiZc1&w&bWC1#nXU&VtbG1xtUTg-'
    '$gYnR`^U)*vBR3F)VKgI5Se2J3f#w;nqdqFl+FKQ)jW|Nac~=7JpdU#y1Z%s^(lL7C5uWG`55WFY(fDkB6&YFW=iLwZ}Y(U7%rbq?4llKEB;%2'
    'HQUgpCfI$s!1U9RHYUmy=9sQDQv94%`sb@h;rZK@5Tr0vm?HNDyM2APC9JPi{yJ(I8vXfqKr(F}A%+Rv`{I0(snlO$jDWXf1C*m<~S0qk|+3-'
    '!9R?E6E~;V-X&M0YAYc8DF#`B&}%1&P)p;wG`2LFpC0`{b<~?kH_}GLA#6U$>7-'
    'Tq>W1=F!7(|W^`2KyO<{<vXj4#`NoZZ_>Kq0CZ>tF9Yb4k&2!Az7<uUsQ|52~{@ecuD7MhD7&<fW?|{yLn;Wsh>)*X;z>&z5m$z00gv1x*zt2@'
    'VvA(q$-+fR1x2xFfzIn?=P_1*q2kKEM%dv9S=L~^Ysf)9=38ZXwIjNT0(~Mefc*sDDNz9ReMI~p~u2e<{AF-m5bA>M*_92;X+-~-'
    '|Am`#ha^tx(!={$nc-'
    '*%;t<k8(J0TU!(Q@yAS~>MTdDA86r}H2rpVLCR7o(I&>GpK0@D2`Tje$Um5Gpyz^}`jje#rg(%U}R<NQ8%!Jx#!eHvjnpeP74qXs!S4#O{onz0'
    'S#T_dF{)A@NfiI9}wE1&*BXN=V0C(d5$nRco(8-'
    'N^Ca@O0eE#gOhd+4g7Ff35FoyQDP_5lckcu_E$@z){~1fYrjF=O9e2H|9z^rVRP{hq`9;`_wOS7-'
    '4i0VPY>Q@+Rc%i=gk&4M6)0S49z62ph>94}q85(WRGzeB^9%<&Q!KQNi86&#oN&>yvess8`?{i1OFFPu5wWe#BSjnV~f~<0|%mx)7vHORT1)Eb'
    'T~eN8dGHR`qViS<eOvW7fYKe2X6X*THQsL<ixFyVTUE!mq=EmuJyCuJHY~#k-9QK|^Qu$qBg-^grFmn#NKO$fn*E6N~T--'
    '3_tnbQz-1N>mMp_K9B{g4y(ERE}!+r?dD^^bLakC@4?#f#sS%vWvu-aWy7VM%+`CE*KcO2W(gDaaN$mO6p;F7f~i@$g>pbvl9B~6oF?s1EgKN&'
    'CeyKj>)`O6FJ&j0oBFwjkX>0fuJoZnF{SnoK;Sn&CmmS1AQi@$VqU+iFzLX_W!|;4$^B}7P^q^`Bj|zD$acs=e~+_U&Xn?;@n2k9O30ZeD`0ZQ'
    'Sga47AXYj1Fc}rCt&N643c7+%GJNwuHaR^9`^A<FW-~cn2G$b#;mOGStC240g-'
    'sK9#^(xAu`I!h3XF_UI;uc0evp{NJwB&%Ar$o<Gd37Hs<{@+&87aiyip<`=N6y&Cil_6T9$plAEoGiD4u1%0qwPyF-'
    '7wz4j*81ZR>JZ8xi~p4dlu+N7BjX;@A2^rq(E7XbSp_Ba=E@oU77oRWK9UWvUNnM=w|L=2QNk;J%_(MaYc8xWBKwM6Ku7O4rxmJV`Kw<NY`m-'
    '6Up`R>i?Gh>TaK_GQV)<B)XVZ|`J^gcpWIFC#w>b=Vg;R4Y-kO>Xq<kh}=Ti6+r!&b8z-'
    '+^LT{{j9ZPD;v9JdvMXh4C2=W_PZ>1$~@)nbk!1%*P?i>PMb_f54|-'
    'j*;~Hh3r}>cCT@K7Xi&MhUO_uT|n+zV}N1I!jAE047NJqnK1@I>T<s0`OFhrRnhoRaRaI9w$UD>>&C(d)FyW#T`FMR!GSV<Yoy0oWsJ4T7>ld<'
    'ISylZDPO>LK8{OuQHQ0u1XY0}i(v7km^_odKR12(;XFy{p_h|XfCTbVsHX(BGyKJhqP(mp*zW+b>9~L`Z3}1xaL-sY5+5Wf*SA>JF5r3of?6T{'
    'MVy-'
    '8N4|M%lD*|(AwJ|&|GbrWGp&bJ44R{OGP(08IBD#f8tRwNf}N84K)?pW00x|hn7IIULcDTKSQ%oH_=2cm^B2bn8C*n+a;k)&Z23~l@su*(fr3L'
    'B@59k_>|I?iEcXt;^k}O685+5)i<#qp1f7xu`l0J^l7&KA$N2E_4#%+<G(HI9ab~U)EqD}<h5rBeY3XC`d;)+qxtT^pwu};ZM;L&aMwE5y!baV'
    '=m|t!YSQnt!P9`KOP1e!6C&Sjh>H)+EfbKor#}pR%Um7}`=6RMC!g-'
    '@m3`h)z;`X<WA5}y3t2SKwg}{GR8vO4HfG@hW8R36zxOn0iMv+{~#4w7=uQ-OF0GI7bsI{;HtxTF79R^>P(U&E}L;_5jJK;*<e{>1NEMU4$UmG'
    'vl?-'
    'WmCp**(j%`mhNw_b?=DIl<jc+C)3kVlY~4=1^NPHf87Edil?(dmE}O;Crl0F#_^Z;J6%Ctj1pjZ2|)&we14&=m`s+1w|LQj!q3iHi0~nWyY_=e'
    'X4!5yE(r{<;5dFnm)2<9gvJ*AcxyNTNJZjp2Y93f2QqQ7u)AN}9(DyRZ(67Y<Be4lVZ)v%jF_Hp%=FgsAhML~;g$V-Tm}ApVIy`{kZ<mE-'
    '^*PlPaLhXi)Vzacs?d5u_&n}3R~xcLJUzmSpzG$UVPK1foBp>3g#G7R$j`dG+Cb1>)~(_Azvf0`7^+L@jtIqwN1h!CIwR`y532yvBhUEm~1PP;'
    'qavqz(jKrRBFs8O+>{6KPEk~wg^N|Eqc!^8w5rb#t9ds0gVz>qR%`UnEe6-oc*%-%a8b-'
    '|sIKx|^oY#ki5nlP5#9JKbwb~@#su86WA1FDu<p}umaWmc97GOXAp5kZNq&9Z~{t4c|A!^@LqrQX`fsaa}DT29AZ44p~nPVMNrxhJ?-'
    'L{~ylYF?KvhjxTL?qltSg=v5Lz2>{tXgoR|A05kUPtQAQ+0CQz=}{a03y8}I1xWYBR4agMp|chV<_hYJc;&2B{D{=VBcLRx!kLkZd3q`WTaC<G'
    'i@AtK%uO@HR2rBj4V<NCy1xP`&71Oa1~l(c|7>6%xA(`LUX#=bQyvBmgJf`o5l?vB6w8^_*ai*9q(ozl7Jbp=1EV7eaPVOn1bg-&0)eTB-'
    '(y`hsS!zlDdj>o<ZP5_RG+Q!=@q-BFq_PdL$Xk7gPxL;lyJHX9xGF)F4w*$nKMb|gW07yc7`OpS-'
    '2qB1qrL6OR4EHJ;zCrtHc8@?lX?DVG#?37ZE`zB~a1_m3DO0AGnhM4H3i^&)*F>`e^+ie1UWcW2QGq!l*0EQ7OhXZ>BE>l*&#=n}hsqJtK_$_4'
    'ue|caZn3n{`g45R#Z`>P<Y~O+b$Gs>e>2w7MwDFK~R^sU|v9xtZu|mnx!)7gO_O&>Hu9?cqknh7p?HWk2vDsZgBy8kw4S*lD%;>(6@%s>I2>QD'
    '(-ylfecH-GeQ}dM24Ql~Z#b3|g(f;s1KW(H?w#BOPX8LxHx2BYSi*tg}Ay!7U5z=-Ro3eOWFP2R+k_47|-'
    'I1xYPhTzL3eS{6^hzwFN0usz(I5<%^sts*ZfGkvqyJvbS*H#rDH-'
    '<i(|%6pe+q+CW`xdYMe9>8vpOKg284ub_I(`@^fu+QX1Edzqx>5M5&Y;aE8iE~3JU~#=FIQdb3+<LE0*$n0@VUh-'
    ')<f#9ue4)z(JeV6t!^^wvW15YqFs0g~cO~GoF*C=<&jss#>!1Xz`|hRdNABkW7L*Urkcxu~Lb*F_d^TXq(ZO(TFFt-'
    'g%$6gB;T%Zea{=4$k5Bq<jNgv!pVwncn2|E-_sfDqq`dyRGD`o{i3V=82tw0@8q;0z@lOMPapZh*sl=C`Q-aFU-'
    'C#j{w~zX*_b4y+{NXhSpZ+h7-'
    'bAa4+Ik}hX`z}u2v5(<(xuB>H#}<Xx4VC}O+vY@*od$~5R%&wLU%A*3NcC|_|$QY!MfKu!CdqwBT`#a`h+$c{TG^~gnrCW0a8*ws6bSkvZ6`o%'
    '@+~Tqd^b@C5US9HhG&JgOY@6pytU$Yl>Ad=$j~!HQ7|Cgyf6cNdoe-%Mc{-L`}!{kyr>MQJY!$H1-'
    'ghbjWPlf+1S6hN+l}GphPz*Ts~NK&m3<5Yu8UXYL+hb{M#WS;K?(pu$%gxy722LMY~p8Eiucrm1f-&4J=i-MbI$D~Mu5-'
    'JYHchRyagF=}E2MkQUbeYX%Q<!6BmOtRvn$<fdlwq)U-'
    'me$#Gh^nvM_xgh%o15iTy64s{u`;oN_6>L_lp%l68jgA(3Uia&`?%2fb#RNb({wkiysv5BatnZ+qLVYNS4?bm=~Z*1K<;X3=BUJUyvfNIavY?0'
    'Tntp4I7AsnQy}9LYyjZEaB0z(mdvDUM9mPbG8uOh=^EcMgny(THW(bmydxR>&^TpY(uB3et+R{Xl3mEkvXpjz#x8I3b1$VV<q7-'
    '>H@(+lq;=;`mRQy60*<J|V&9l`EJkiEZKfB~l|B)$!3KV6*o@y1_b*{n6&}>KRB<`=0+7cZ)9E)&cT?d@BXu(fhQl<8C)>pz2o$20uMJ98^|D2'
    '~l35Nr_Hf8VE!`j)jw8>M_;L-'
    '?GY}hNog~v9Nm*ZbKzXetSVzJOUZxK_OSDE4m}<oZd0web<#90eE>}nW*if(QoShubdO=bX60&A^LY_%=8+IyFWDsG#LhM4u<deUw!B9$Dk)R8'
    'c2!*%nO+NaV)QZ3?6hl^~$TYH3B8_h?wK7`CN~UEQ&^k;A)ha@maL$gLNIGh1^4X9{8KYZ^Fe|Zi951dYR956A6_anw&5D1k3*YPuZ{{sl=(tI'
    '~HH2@ZaD_1DE8$yjHYGw6{PUWLS!D5SyrwgcV4rkV7KvUNKQF;Y#LNej<j0jioMKvMYZWZ5nfK8}Pu9t`<6pVfufx$`{N5gn>-'
    'YZ>{j2ZLX|O^3rE&k4Kk($#$}H2scg1O>(JVgL1+lXJt1pcB^w++PO!=fcYIkVy)cZdO8L*!tVo<P?w+(+)BJk)AWz~YE<)QzD)Q8?tpU>GIGW'
    '1sX-'
    '%*xe!j7>;U8Y`|y*{HgVVG(ckx+iJ>gwmGd;nvX$l}sVjs#O)im7kFMY4)M>)&OI^5Nprgu<3(t%IJ@a}%RBS|;g!!j5732P|jGHh6Evi!UZLA'
    '#8s2d<TIjZOmlnyt<i?Dvr30rc4jvH{Y0TmGw8O5SLZZ+9=T#DQK++$Q*mxNI+Ys0JW;C$;?L&jK+UR#ZqQ*>FuBVGG`YP&Iia)(Hn!h<yaA~$'
    '`n~Ny?l+^6v<r!2*U*R4%**#q`?SIhl?pSQegEw^n@M-'
    'qof2(<$Kv>IPOOKFkma+=P)zDgz{Y>ZbY1ctmjoY#HT?x#Wr?$6^n=bt}ZMgs)YASS1nwlsube{{4V}7&im^%&wH`azmsxV>wW)X1|Dk%_Ffya'
    '){na<$DkmI%r}{-oF%dFEtcbKoLJIKa-PX@UPxA2@B-'
    '1y>c%9{w`ui?edm&GMv8$ndfBsx<iIA1H>C!X_KFN>{qH=X$uRpo)~w1BsB69m$BSx3vqjZ>!>7CriOEy^*vC}LUnTJem&C<`s+FN*AzAwHRbu'
    '`sF@Keqze>zsCFZXZ^H+)apI%~Cq_N+ryqp;iRY*z(0jZG?hb(`;)cE_$EgFw4VUukm^7S8={?xr>xKIAZBs>211lsr~f|dAh48(#aeAN_Rmre'
    '0q2RM^!rA_!<_g4B=#DsqgC@ZZlv=`P5$&umEI1pK`$Ij8tzxp-'
    '+f+|I{WPiA2`6{rUt+!ZHYapXrH_i$(JGx9ynOf5&Xb`M|9}PE&tl*OT^^4OhgiVBlk!;&n<>1Rw4seCY(!1DGcZUcn!&iy_tHl3R;{Ph~f0g('
    'jK;l1Y@9(#|<E}kA8MIL5Pp(XXTRXGKaz<;lAsmr@*e^&)kY%sORSpCZq>OqX?F2WcCvs;TH#~GfoSQn~sy)>?N<W%Fk0{O%<Wo{QT}S*&yt1?'
    ';pNdg8`E{kG>r9zM=Mt9|Ps#=rB~b0H1aYMhpP>$_Y~BKVhWckypYu*|do({@M&6`J1a+}0;HLgs`U6`na$xhkwj^bA9Whpy#K6#4pUohf?V{g'
    's;tXlZZ;%o%BxmCi84Xa0Pq><9G3@MC&Ag7dGq&DG4;pq;#`&H)V7GX_gU$TA)1KWds_Z{wP|q6CHX7L}&kee``)V0piCf<f;H*W2U`N5<+%PC'
    'Bm^~QAb;oMDoVcy`pZi$B^llu^sHP7|LL8IvE<?}tr_r^S8S!y2Xt%oi!=rXz=<0sLpp#_u0Q$B*(Vhtq)rUOq92DQZJy?Gs(7RQ1EhY|wPt6q'
    '(nQs-'
    'K;NnDty`{5NzjCB6fFp?;jshudR7p16WLiQ35H|a%ve{X&5kLe_IT55B(aYy4!6|1e9;<%f#%W$N9o{#cr|I~M14o*xP^?4QdF?5P%8_Ap_g~I'
    '!z;kp1Gf6WMeLT9zsMQ=u;+KrHM@q7h(n)mFA?iZ3cSaZu%(`Ztk-'
    'V{K`)a{VAbF$F_SM3vI`YQjJ*tKCY2=TXz2bDzi~JF#Ro{yN{4Z1bkbwb8#7RpcO+jtl4w(wBJ~*g88P1x?Ys3N5S!>qJG9wPENiVZ@Iv8=>R3'
    '4bM^R~#NDhXTGPOu`6s$^ElDmtVMHfJ?-g#r#j=2&P<iZ~@kG%UYGIuc77WA;OCFK1&?S?ILg-'
    'S3@}X!oHY;o+c6c2jeaVqh|!9@0ffM=IoDh0a;lIZ}I240VQ)>ee@wC!h$Ha0${ESpW=lK>m!`Y8RAce{#E2R{7*sYt})J<X#>e+Z_^U_=89p_'
    'H-&(BIMlQ98EPg8;gdNNB^;g2zYMQzpr9ZNVpkWKg0IFYxl?d1N&5RIf%=dA`al{z_n?LTg98kZO->`vQBEyIGNAg5X*EngV1-'
    'wZV=u$GXdOqfJCm(yP$QZ9bHNS&8s@l8-'
    '9VkNWD{4L>Zs9!eyfstlJwMwY!Jo=236h>gr5BY}B{Pvr~Quvi3!Z8^=Ic?)hv@zHH$s9*4|DBPu+zGxJPmbK;xwp?<DDak&e6>f9+}mt~hWL8'
    'McY`*DJTTtzuI7pB&nZODvC9Dz;gFZ=y55_CpRV<mMoF}{T>mQtqYlT;px<;|c1mC)VFCG{ws*ki5a9;QV3I<iO|yLD*rC8t5nZjiGJG|^m!Q4'
    'scnh#R%dd!s<EKVd1rbJ3*BS6s@RyAf&%5ssRFS;Ih8tZBTF<iY~h^Z6pA)+_nVt%#8ey1w{HGH+pGUEjJO?-eyGau=2}pN9dK17En-'
    'CkOt2F>@nUX@?Z-@pyZdh-#-`PWQF*LVa0IK^q3^Z{inJ=+=3pyi$g#DBm*8MCgyOlHJ1lDI2NEKV3im2Ho?M)mttiZ|b5i9zS7$KU-P-'
    'KC!Syq~sVmQ*c&sP0^0&4&wr~C5VGU`9ypt$Iq;k{4<qv?@9w@*t4b6TF_1`aFtpD#@EBU&fzU}5H?Pyqt~>QBvMSXN;Y;^V_sCEi0T?8sC-hD'
    'm!Bb-'
    '$~KO_P6j`jKWO5)y<Trf(wshi<~eSFMctb6eDZyo%Ad(BVoHsSI5C@46~p=q*E~kYN5^bH+VqXc0bzdn$_2#x&JS)QB1IXqkrG0bEFf#zCo=86'
    'i7^7#Md#F5d(}j9sg$2|WqZM$ZgKE)yuJ(4<YAUbrzflA(`<dAqDaihz2iC|5s5jiC%P#hASrQK<ZS~xl<@fxI7mr*hyixnpAz07ascgeOlwaT'
    'u%<r_2qU;VAL{4UG;ky4nNNXme3DBR|K3J_O!)Q@hz<AOTVSa2WU+)>Xhr;B;jU=!Tj)&%aHZHBp4D|;<BLDFCt{G6<%qR9G}<dQNh%*_9NU5$'
    'VHQ6w>OJtJ_`9en5?6PJO0NN+PmNrMa%5KUkTg@D2AX!a+Z&BLEqg$Z{2SE-Vx-wP@mo?V0VpPJUe%`-'
    'q^0XRgO<I2Hh$Oboenpi)}Do~GhGozST!XyOk%dYPlPDQgP?#KYEbQtkL=-'
    '?@<6m&t7a(kDI)+=qf3t2$#j^L6?I*A8jXU1J4e=~U^CN$FYZ8M2@EzO6<)J(VI9YqSm!Y78%1;tZs<nVq${XvPk&iPi{zP~Ze`+9GH$)c>WGx'
    'Gk^iV^i<ubFzL^K%0_*;&DJt^><@*OX$Y@Af)0<V;&{q$1tL2d2ejvbb;P{uI#^$(xW_H=86DU$H8^3aVG6cGK-'
    '|CD{`o#_w0kR9TA(*{T=h~ie%1j+i>tk@@0Bzsl3w!p=s#N~kI~#Xfrxkm=cQP9Fy45Q2b>cto#Xnbbs(h)J+gmY7o~(P4g^WVVuz+m%a@KtP$'
    'OWWPMH`9lesV)Am`s*ol+F<;aE*Z*EoTd@9-Qlxt0-'
    'rw?Nb@*Rw=Sb^jEIlr9znXHjvj%a}TT$L8cG<%rVDs?Qs+w1mTsNw#Z~40u|Ze^5(_~SG1rUA0)Ypb<gdlXtWHw5|HI3NW6>dFj!t)Yr_GDi(t'
    '+V3eFEmyO}T2RG0NkpTDYY(qYl!eZ{a`%nx3z?U=n-'
    'vC<=HNh}rwyHr4tx>iIfMeD38HlW@OFYx7EEHW8)0?M4Z;)d2z`a^cPO7lpm3YO7<2iPb1p>eZ>l+DJlFkN6wtc8<14iii#<I<9ei@<USpi_D('
    'F__WwCqWqEGwlo;s&!dNDPL6CjJ0X0vPTM)QPpcafJ+Q?g6RtHu7?h6k!z7^hpp+V@#YjLl?%Pr<Vcx<RHD@KOx=%L0=;?E>jCtz{SOGd{+7%o'
    '^^J;?G9ejl%&}5L`I%&_s%F}Rk)H$$QQu1O<dk=A5oUgGu=Qk2yj68euzcj&9rcK;KA1@&U)!xW`ay7+peSF-5MJkF5k^mzx|W4-'
    'uXR;h|AH;En~BZ|ThZ_D1^zOkJ7L^A<-NxI!bdL=K1gEvC@^-'
    ')Vvv0V4ChA61o~rp_>NF0DVNzE9Ftm=#)>SPoR#8K&J0FHh&?3^l+xc#>&J%<=HaOzvthjv3ea_f1>2WL*ZH$Rry{HZIngu#dO;6Sn`C(ss%;-'
    'GMl@SH&S6j*O?mwqE&1<@2JJzI`Y%s=)q+`2g*Erx-UYj5CAe&O=6Z~0ojR5&HnQ%s`ub+3jgQplwLWP)RJP+4@;G*j$0N<he*P$AZONjr&Dmx'
    '#E2;w5Nf&g{eU2_T$}|Mq_>4+IgYcMBj~Nn+koF)^9D<sG4}`vG`ylx315w{NGrFf;d2=I}pQ!Tie;40eCe-`ugEHZH&BDZTAP&3-'
    '!C=2N?z9d@W4qHn1f}%VnlBrNjt7hh+COB1j;zo^O^7)+Z9Hg<x$5J~4RqYsH*LBTp5UA?1RRlev3q5r**quypUh*pOj?LI3P{=cBqZQS{!rml'
    '#c$MT@9?;xD?@E1_N!`A0TP%oCeWe<)EpLC-jsjj;zt}c2ggz9pbqg9F(HtNKx$3?{6=jlXn{{Fu>bY|gkHP5e+K{UqrFOA)laFZQV%kFOMoxr'
    'd6`B*T-1ypf$yGrwWhWzt{>b63A_t`qF|YBS-PhbHTHZy^W152c}XpA(TJ1b%*3pVG?(e0)7X{;=3i5{Xdy>ZPCJIA1L>e`O)k1vDo_@kelNP0'
    'F_2D>@KhS3r0B6mzJ;9S>j20mt7kDQ_|QE$CgoCx=hghGrV8My<Ca18D3JUG&-KDVQ-'
    '6|~mxn~lzRau;H;jjpf9q2a!y(E!BtuDLeR5_?8lCXciUKQGT!T1w<2pV~fQqg$X!It&)v@Oj#zNhOfO2XAPXs@eV+o;0qRl?>5Q=Lrsyq^{`U'
    'Fh$@Fo|Cfml?Wz%hg+&z2ZuITF9oeQmw((fgJMDiW4Jt-'
    'g3dVdoRX)vV@GtBFCYJ&A<me5?`xPvu>yn#(6{5z76Z0wVsS=5D0cGAp1CCC=RSoyY>&w)@-v(Id`{fz|deJs-DKMtBBKeVW5l^&G8y{K36>X$'
    'PU}va+E>vW(QEpjY_HM1<5B<+AxtwA{;G_uMPbk9!R#uFoWXY13<#xEXmdANwvyE5Qoc&6<t@CH?=u00)14QAz_Bl{rPBYjw@LpNJ#EY(M2)&N'
    '67J#_JS~KbcQy)=9QaSTTeUYa%&ot~8A8O2&Aym1Dl<5&w0A(4zbF5{m2B>PzrX^7WGyzswwm_V^#V%bUu9-912IRpaoq&Ml?qe1+A>WL-rR#Z'
    '9u+wBQa03Y?CD&L<^dP@41Nam5A0@MOJeg`y2sTu^aF7lcgZ`Fjmc3IXxzQPCdj>b5^sw%}DYQ`-'
    'K_K|HZp3XpU%C&F|8s=juGaYNu$$vf_|Q`x4bno^r9nrt5Wl2(mv`PUW8lTy=JbYkzM5_RKArV@=st7w^cmg%H!9^$CKS^s0_Zqp%-'
    '`g=~8I|S=bH-'
    'RINbggLH@1W1u95pprXh>DGryEu;U<Q0?@NLnv1-(i5)bSSF$C%PGN@B$f#hbeK=I63dmyi<D%QDACmO)+LLyxx-%ieI+jr6Kz-Ts@mR-'
    'L%WMYL)PKjhp*K;DaZz!TaN7DV{;7Lhd%-A`Vyj0FF=g3nrAmjq%)*$zdyB)C+pz8GiuysGu@6q2O#4j<|bjKpt-'
    'E}S57E*2Te&v@wEvaj?5f+CKQm@eV8#~;2wXPJ$fy-sg{!KkB_^vk|IcsD*A*k{tOa48*)$j|Y6#eBu;B+zp!Pu=YG&raLj@!`SG8wTp-knMW7'
    ')*!E;tl;;DGA$|VF&4kJ3f6Qz)7*p=QeDkV!g18=u5$SQ{8p5dm9IPwR+C3_Gv{1MxswH&7+;v(A@HTwLxSf56KW*ptQbcn0SEVeh}&h^z?i!O'
    'vd?b7Y^#fau0m`6PraFlp2}L&esYzDtJr{*X6hL)0rU-'
    'B4fK1H>dH6)D($J~==CPdih5kn38K*aQ}@zY&K6lKOndg#651=a%KMa6!9X&a{`ch`=JmWKB#s!nPc}Q<zdm``Qyp@5k#&!=sw43ON(auU;go+'
    'W%b&;+r%_iQD(4iIKY^x6@=o3+r%o-9q&;rgM~&@W=34G0`=Gkpc|I=MfRqy~VwLE(Vl>KC?CD^=)p<R{rD`y-'
    '7dK%vDm;`&^nGW&({h8Jc(&^sU+8f$=V9?79u*A_iu%XI$9oEVQsVLN*C&tk=$H8r_Irv@GC$fCIG$Oa!|Oc+Zu=3?_yA~p5qpe!M;q2WdRSNO'
    '%p30EDrDvOZqhhha#5|Di@@l?`5@5=>3lBY8ge6w(r%;1ZPF&qNT*kNq@5DOtiIH25t+Gmwv|f4=<}q__Z1fp<lDt+O=m{Xfrxs<-'
    '%eTm>8$ql=$+WOk=b~^bs#o=o!OY=n-`mZm(yGs{Z&r$R%@TiYPzc2*>$-'
    '!mAUs<Z~~k=D$=BCa|`vil?vRfpW<R`s>GdL9Gi`05g`5*B>4$Q%9vd9VrA98kmA=8p5D^H*8Q`t9ebpHErb0}Q3ktIY3YBuGP;ciEu$+GAePR'
    'P*r!B&UFrB?eO+<PFQ{Oyo>e|>;ar)0m8qR8Gr31Afh!`da4B4ImFe2I@vR2iGVS>!<Fe+yJaU*rhW5VfIMD)o;u!ILsqXmDfg5aUN7wn=t$B|'
    'U;gjwNZQ}&o{I(MCMq+`l$pVbQPhz93=S#R2!#VP+biK{Ce`KX5;%n#x!8|iH;dN%E#8~t!6f~i|j?Cc`TV9Fr)+*y1lis}zJY{qmSKa6`l1JG'
    '|;6<vh2FZM$<hl)}-'
    'sS43pCq!>bgE^Ng7pH(rKapls?s)_nAk3l`msvHr+rz2L8`k2*+e2Z<#GwyR2!5o($Kb}_jA{v24w!4TkzS)DKk42<AQ0M{x{!fvTrB0uwnaet'
    '*la(dHbR*bDj2UEvZjz#Sy=(?r@)7Q?uNn(otaB2<6yRy-87m9CcL48C8GL7I}0vGnEIlN*1?WCE)C>1pVp}!-92Jq98;jd?WrTK8f)!BA-'
    'Z!c!^zp0UF%86#~|H8ORebitO*Y(noRD^JSM-'
    '79OQoEd$+))YG`K!MoNOk&}ki4Ps7=&t&(aG4J4nW{Bgx>hYJ8uKcYLe;Kx#z3%=v{`|^h8`Nk!(tDsr-$4-'
    'yJ;22NqJ<FO+!GU_IQ8W+!uLjeFH+|JKIwnyg%R|}mP(@^w2he3#vA>3u1v?WeMlqyDQOhBlfa)UL(w%0NLl(Ym^&nGk2zqpm4KR?<OM?ky)Gi'
    'Cb+-r|G?J5~IQaa`TfGv1k8^3NxT?Pvpr^_ENtGt0)pzH5*Br*M=!%=yjxS}m+m(}o5r=KyZ3jVkL)*3|n2#)Sya~6|(?-'
    '_wi2NU)q+z&rL?<Bi;6QzgC^?DVKdfXawFtAZ*uIk(YW8Pfe)La-xABwmfem<`ut2d7tqoUItNscsNvfd{_x#`?(}*Y&PcRGT9*z<wY#g-'
    ')$L+2?>J5x_HqxW{S0LYE?s^0)#)PK0MslF#r%cVb(u;3BZ{YQYZR8EBu$j!dAcUY2I!a0%h>vow8Z5mX{z)uxt4;a$=%pb@B*X4Q7K8XtT<(C'
    'r+qyG%;bs*6VHBd!MY@0v?j8K~#ZU0p#Iwk&S-&X73N%%Df0ccX3sl-kOY%4yh-%S-'
    'r8=XgqCy3DQjx@QO;%|<U6G!&9;M45885dc)mY9>W~pmQ(DMr{&D*tpQPG2eYw)v(A_=f-?{Xo-'
    '^$Yxq6_v}nuL^n*a}3)L+z8{5K%%t$6?JdVhyg20MQhh#+9p+`D8gJ`x=fKOfG|%=FlaP*sjH4}DOQk(WV^hU^mAmZG$tcS4isDH-'
    '~$(ng@)?5vOJgw1={(!#}dD{5@e;#gK~dWTFfvka$u>*zn+_3aU+Q7{e=tT_yF^&Q6<~8TQJZ`Lj%UH>hqJX$w;9M2^HpUvA!V<ZXjvRWmZB*E'
    'm2+iv#76nQT9GvmYJAZ5(zwu^=0t0#EMy@Zk{YEdFSb88J>CSttm52>ghBQ?$NPbwW|IqJ?*1=e$a1LlGsusNwDS`kg2zk_jfnAtPnJbyOXLx0'
    '2d$LS0-0MBFnV>PtMGn^35>ZL`>q9wIs41<iaU?#}v&jE?(-4`7Z(rcZ$VGiW&>mBKOX7B3fg;X)+@_(5yv=eXH=bDFIyw?JsnBe3%cvV6-'
    's3(0B?AnzFdn-QWGiEOW&nEaD&q<s@O*2Ag>S5hV7K;G@a20tVr-Ub-qyNn|1iydhzcs7a{!u7Sq};2;(XPP+DcyWO$(I<2B8B>jJH=zArhuXT'
    '0Bj$C1^z1k3KuRa&n^hgsFszj3%7#7A&ix!_-XCB`h8QdztJTZEa#1-csFgTU6pDBO=L;s5Z;Y=x*P2-Z{HOr^*Q{-'
    '>Eyct!>riygNKE{LLKjL6iG7vtBW77ah_VJ$ofn|^3b0vnCB9qm#CVQEltSBGXO<k6o3td$TM-'
    '8pPG%}%?G@YawGb*OL`^)(U5e?^6wOeW&#d+(-q}M!?CK1tjE-xr|(0-'
    'o}Nsm3I1o>bd{d{LWPtR~K{&1gcCjRMu4U=ja2bfH)M$RzH&92^r4Mcy4KBQbJvIi9tb0|4%1yCEtxf^9BSM?{|>?t);aoW{t9$7xTYv_T$DrM'
    'E#Dl_&fwK6p;P%Lq>`d8Gx+{fIW6q+=$1QRqBO&gMI+EB}||IG~pLjY_Jux0c9B^X(6HEL;lMPDI{%Us)f(`uKQW3rIdR;^pA)&~vUPsN_1BeF'
    'A_EN3)%5ea{&$Vv2?!Oh&6Bqk6kd@k;+Y9kp{9MX=siKcrz9)Ygg?+r%PLLSa*qDylK1<hWnoTkWD6STht&JC~%e0I|Mf6zurP)Ply@jD3usT)'
    '6&un!8MuFWK|9b`U^?W*Y}4(H2(dsP{<4#&NNgJEj~3}<M!n>EmFCE)-'
    '3XRF?*TK|xKuan<@tZIzHB{`cRu`@FATr3MM&8Suz>F}+#F(O@PxE|(<VZUKQe<K_J_ohs|-+Yrr>)#uRodkGxVO7pdsIyk-'
    '+nv^E)EbU$jJ<tH{;hvsvj&HIG|7zJ=^xqI;TmZka9`Bv-'
    '&pg_prsThOA^AHDV|tASvhxC(b^>PxG!GhIB$s!?uEdC%g~LklgfW(cy31UL!o`g9jAM5-'
    '1pKjyxy3x<4w{GS7Qo&MTtayxe0LJ$z<4$V4efd_o8ceD#n_m5?U8b+q#Y;+bDGW2sEo3clrh7ODuD!zh5(w=hy9AIiNlL5jywB2ljEhb2ff=b'
    '~0!kr+yx^hDYszeXP^_bTUNRnFg)Pr*?nb`gt^<dghQ#M$b%DH#FIYwC#fu&%4z!bp6w7xOA}1F;^&S$zq8X`A65E0*vq{?Q*1b{;l<H(0iCw?'
    'se?uyLDH&2WQ}8*;OWs(R^eZ{iMJ;MF%Rmny!>)UE@R&d*&MltmWJYMUo9?Q+{GZ($N0f4gbM0$PV3DCqA9miix4J??w)sTW1=OeSfjpKR5(%u'
    'NzD~1fvGlG_Wpa!6dL8%x7!;umASnt!X@?HFrYCazA;%`r+p}P{42huRrme2*&|<7tVz{b0RB5zXERxf5JrIpMc5!_CMjK@q<qe=3cQ}WWu<xo'
    'vk43pOfPVMD|b3a|*0;TU<xK(u3aM5cC9Lt!ZxbtCl|*-'
    '~H&C%^ndNznA#7)_Js$_epJ+JT@5@03}|HC0S#dJ>G9iM)~1Q&RaN1d1XDX9_IKvR13%A(q$T*TgYH(uT^FU#irJCY)7nN63B@)GZOPat&yRQM'
    '>THAVK&R_ksDb>|6TreR(+z$Qbz>ZH!M%W#GN6vc0q4*5HuHa=H;e)OOE=Rl&Fcg<hH$(gelKz`<63<;ioGy^%Uo}+L6_~4kFjb<6w=hU5h$#b'
    'Hu6e8Q$Ee7Myzi*9Uq%Qk2$Nu%y7iR?TKxiPEBKAjNp>dV(h)-'
    'Aqm9kY)p0^03BD#%P_$Vzn@tUq6Z!GuHx+ZA~zcG{Q~7{LlDgF>!qBg1hZc3sg1BvMA>Pf4(#0IY0~&Yx?Ed>@e=dWnwfHP@X+gSjYxY8^Wfu{'
    'K1Rffaz1Kb#2#l5rRKr*YkoMSj=Ze@MgNZ6hHAcmrQqaR~y%s&GOdI8b*yY$=;Bxk#u5>GMKBj$Xs9&k)p?xKD{meV|XKtZ*6|h>U-'
    ';0O`Z&*yJt4PW!jhg`oOL6BDiyCM#%#t!;*K(7Wv~~>Brm=S>S=lA#olQ0An#EW|^F0lKM<H4qW{3HSk@M8WVnZ{Y98xR;L^b+kl1q(=!mY)Ow'
    'uZP$;jy1+l^u2Jgzf(N}XfJEJ#^6kw^^pXtWDCEwc94=>LRr&|?rhKnheb67^n;o-'
    'P>)awyZmB$;kiC*}S+(L<MD!??J8bwpeG@NiHu!vYLMFM<eeh~`%LN85m*1*2r2I0r(k;JH{k0M6pMbo9(Np>f5tXv+Cdn_45ibTxhX=+GpNuD'
    'TLamz{y+ZJ7b*oUxB{BHj8q?3D|u(}&qEbj+$@h2sC``V!iMO4EKb&#(-'
    '$)XTDQL?`aZk6m8g{#Ir6E+(Ek{mtFPhz45k?Q$xDh>1B74e$?ERbwGYAo)?V+yD6$;NTg+@{3sPDEV6FR@Pq_j?n6eR*!ZP#V_Hh43P^@t<R6'
    '`fFiVobMI(tBxtf;iOWzq+4?j5#}S2?T(RJK<tm9EIM|`Fs}WrX6?L<<msZwNxV(k<AnXNzr49w?PgcN;2b3;i0!9D)5K4e_6<!9uQ+6G=6U(}'
    'u62NU=)Lc(I^K=97zG0U6(74CAH34e3iUVZ_iel>>X^5QlS#?l*xYpw^PAZIlx3MmJ!Zm*i+EQlH!7`T#`Dc3ZAlqS7c>g*@9tD}FflsCw}<25'
    'QM-G_g3dBp_FIEtuWNVOqoi@EgmhnB6|-Fx*LIG}r1-'
    'BsP5*g(njXWc$y};^&>QuR$4%fBo!%iT(1AZ&5q*3REP@+rLPOSPc_p`5?f`8T1tB!Z9t`ZWakF>Q9aSPSLvn1%!*5l|JdqXer5ykisOql%ZM-'
    'e7c04*d>F&1%z)O40cL3aBt2_P^@!J&e_44k=moHx;zG&w?n~3-'
    'CTSYbD2YBL6!<StPMX#x8Mcjv)Ua7AAg}<YxlSOD`T~m_d4J$;k6F1a7tm`uZo2yGfS79U5#gGnq12_&xcK48`#>E`Dx|DgDSsrA7zsx)jF%rI'
    'JdH7PZJgB}a#ZR2}n2IK@>Tc!)<7VJT%NtCR37>MO!$XiiWwm5R{xpE(c5A}1p9NR>DK|HHw^*lh{XCsVdk7cw1k-'
    'xj<iC;RSE5b3X*WmhUU#U7A(HJc9+ZJa3H!9&-S3_1dt|@2oF28CM`OF+@3if1v!ze0D%gYW4i0j2uhKWI7*dKd@~$OaCdbR!!kb(N-'
    'sItoCttt~GCn@(i~z~Kb~E!f`8+iH#av`r>6gD=aKEbyu2?4R0_lyK%P<PU=Ea!t{k`SvBF!MgBNe}hG0f|97gcrH<=3X3A(^URsKE6;xqd<5>'
    'bbxjwd~P0fje~~EPq-MzD6#5r}pq@oA4ck-c-l@wcx$V1@B<c8*UYU2TswweVq@S-'
    'Q6Z=$HA=|76k6QT;PsDj3^15BB=dsb>)Opx4FD<|JmiVznvZ0gZ<XHd9v3kA*QizLazsuxAde#b`kfp96Q~BSV=qk!kc-ERXH|UoCui&a1_j@L'
    'Nk4x$sa9dnc>f~pIcNs>UH)Llk*xPnQY7M2K&p&N96gcQM+a}2WR8=z0S#TYdjb#f30ribuQ~c$oxpDdzlnp^1kF}BkfyJ-rM8Jd@8Ky$eodD4'
    'h&EFdP#D{rF(OEG>PWoU%7A^|G>p?lFXeIMxat5`e=}p?&yyr9uqv^%LtCPE5@lncM_Zu*BX)rBTieQz9BX>BylIlqIGZpoRd|Ak9!N<kx@P)Z'
    'C{S}+k@8ls6DD$|M-U`G^wBC4`QcRywj`k;R$eKLeteu5Pl}-'
    'boWUrsd^fYq1_y`_QxP3WsaCMGmk0&%2Om}jybT~AlH(n{82yNF6LX69(g#jM<*otK*D{5ZVK*Tp+Eg({ZQ3bdJ-mk%SZ3DT77MvViEA>3G5wd'
    's>xli8@AtT57h`<)3~&4!GZTq1_g)3mIVhr7_?e{YZV)owxv?+9(*l|5PM*E&W7z_L7edB1&5EL2#XCLH#d|bkckN&nw}=J7Mr5oJpj73N2y5)'
    '^#*EZgr81Ao51%PPe}zkza9@-'
    '@7wQN);}!zS5VSASn@6NJhDdS1OA#H!`I{1ds3S^YdH80&5Dk8l+7!S`k7;W$H)2($D*~ZGuc@`4?1;3EPtInBD5$qB38)G9uZoU7%>mRJou#j'
    '=mEV+X^=Go#;ppC+3)Aw2c$)z)k4c-'
    '`{%sDph*s772$OB`|@dl0T2QCC#EmJoG%xsu6f~Vv|I!sRf(_=hF{38EL0Y!l|^EP@YI+YDY^d27^Z1^5@7XAt!rYeft}$DqN$CNQu4o3>r-'
    'b}D^Z6O{d^E~>a-'
    '*Trg7)NrsF5C<P_%AP#X6P@|@kYyWQRh#20%&jU;b$UMgz263{e=xlu?C!aZI9m_^*Ynq8)xKwx(UEqniL{I1(O9c~2#o5m`?^Ml(c2Lh1D9Z+'
    '@CAt;(kF)5^GRE;tFWT^FG(zOVS#{ny$EcahPl^LwD7vt$53~oq_07>YD-'
    '#IU6``#i+^~GMtTHTZJ=&TQNSi6O)IsLg~pY=}Q9%*+EJ1zbrH3;$GrDIIAK<wK5yAat#J{m*6Y6Ri|LG>s&@IWIx^%mE?xl7DC)YkFsw-'
    '(R?#!5Io4e7gBSrIk=z>i2P)+MZ!#PwV_SJn-'
    '5#a?z~1@n0j0ZX(Nfu@(|lRk4q1?g3@Zm&H!)Lvv=6L6>4E4J!jrv%aQQbqxOAP>AEmX96JkKZx`r^O1Z1hVHW7BjcM0&U)#c7ln6)~pIGvwAk'
    'LkK6m>POnMCJz7q{`iq3FJ?9FMWWAAoW#h4ryW8CFLy!iEQmEN(@@>>(53G5+&aqKVRkOOFFXfglyh(TQam@EZK=*7EWZ!{_t&};!t(myu2rwp'
    '=lU9n}%3gN50w`HvODySL7Cy+(5%x*Vm(oue8^W*0%V@FZQp53-'
    '1m<y`WSC4p6l3jZaKwl!wB3+PkPnuRK^5rKQ(RV!Q!*F!i;%Seg{wSJq>WO9p`bQRk16CTejTX}vSF-1R4Sg~Q#6E8aOn-'
    '`vxN$A0O`lZf_umjl1Xd^B<7%xTg^&JkRCheDdeS|bq}3SE;knzCpM4l17lU<b|lM67fUe>By^Ye-'
    'b?Lv1`SgSsBHP<vQ#{ARs>F=0W_SC+W++tj~iAz&$Q}l>I@pJyrSv50F|pRFImS&x|RVqH_(PHyDTYaSOY7o2xG2&pB&q5UIA@CXgSfUdF?EQl'
    'hAejN{p12Jv_rFlo7qQu}>|bxgi{py;(5%SSP{B2+jxm&-u=65Kg0{r6epMOudi^3y3YmA=X`ko;A(P^lf0g-'
    'yZfsQlMAcu5K?1%^>Z|rcq;zn;4%p#5<eErqW1ukn(ORP-GXM=sf57E1guj{#SuuKN8Br1u~VT$jed;lXNCxM=3qSN#CJ$sVyQtA#3Q>3;WHA!'
    'ov_GK|XC%43)U6N;L0j7%bcbO`3Z~7B+=pQNYGWmYVgh)#{H$c~d%94tdt4l7T2<(!!2}H3-'
    ')N$2y@fax>JdytU{UYvz!8iJ{OPr;`kyrX)k<zN4a!J5}#Iot%*-'
    '2Q_XbWg_0_R@K3vxnm#l5;RDH2DxsnOD*oha78A_$&9UWQqTh`q&?9uFu!-'
    'M5XQ|@2=llf1{2s|(z6?!hR(c+Wu1CHRm>_?O|UDT_A`7^W+UO)Q5o4SPfWtiv8U54wx;mgv`wcVw<D>@mzS3=UPPEx4((*fvqjR+V89!NjBV#'
    '6q)V8nT8o$HDQQG)PXj3=pA{~+vY{wmfM<FJE~!Z?_z*j#Mlcb(%ig#@Xbp$0{WnE?Tj3yH!ZxwQHezHp&970jrh&iEpVRFvNez>dDnb@9HKaI'
    'Jw$CoB)(o_`=UxV(OK+NzSw1#jJ~cp6J`>UN&2k8Zu62t!p93qJI};a8jO@jR=N`kJ7s~}}?96VRRb)li!E!dWE<jGftVGzBb@L+2yYgYFQ?yL'
    'Nj$6yfjX0t)lHf-p!&4nsSa}Osrb-ffsusP}3zfi_WzMa8p@PQ!rqVVxNy}E!SV)HdUj%m#VU{L~LhWd;_cPU!HZ@l=U}L2Q|K9PU1#$D<cjrO'
    'mEvhE#WD&dM2C5J1i?cw-M6oUCR?pPdXIlM{13>n+Pg2BO1|$PjWMANO-Zw&?Son*+{e+m$`$2S`7)uLiX&Nc{*Mjc;_{1U@De<z$zY?WZ<RF>'
    '0GP-'
    'Z^`x7EWbag}diCnwNhiu5mpd>2Y4dI*%CqV<)qcJ$@(hR4M68@1hyCe+`f{;E^AjvL$OgYO*maLx>HB<7ZZd}nk`zW)wp(DF<@L2CmXm9X$A|U'
    'c<)A;zn@?Dc*-'
    'eZz;z#q+K7o$XAYz7R79PI{9in{<2ku@VNaMPKy^~<>KouNrpVk^{TF)p9h@)zN1NSuf&%)lqIe`rc~kF;yeyep6SBWsLuI#HW(_eOGTkDMr;o'
    'jnHZxvtM)uMivKH%xF()GA@Hx|m`M{j8JK(F@KDbw;sop~kde&dl<KZ5<vau>Ip7X0s7-'
    'Ev#BUDS(kG&`oDvkw&SgY;?w+^>*Oo9)kEbN5mZ4{qf<TchaxmpZ4t0s6)Kpx}$b$!2g~+0q*Uc$wmT_q`*8+cX`8S>7E>~KSyaEtukp{$dja-'
    'g3bh!RNmWz1hfOY*+$pnv`Wgq&<MkEZ!m75??P+v##Fgo0lQz-'
    '<X}t%s_7w@AvozGUmEm!$8XFLZ``{9g>*_e7MyE;;kluZlB=Zey=<Fgm0)=a{2ediGweCO?@qN#Rf6g?k$MuxX=2*Ugz{k?xI_?IcCn>w>vyzq'
    '$YKWJH?L;>6947WnUM3WFUd;Z;@?U&>Eo_9p3lc-7~?-'
    'M$oTbx&e;JnQu2<h<*WjqAT2+LgTJuq`ZQ~#gs=$3TVQrNB#UNCQV;o{$B&&@57YnTh6~WhN5Q^}C1_^Un9voh3iX<}?wU0m4ba*2J&d}Kp3eu'
    'PvE6AOc4gyA3Jg+}c{sKQt#P;2+HdVkCz5Xp;4AY`CRahy<E`#oAUD)DQ4eqGhM+M(OgOz$_M88p?6;a}M(hZCDWsK2w$fa{g3#axN)_HYA%@K'
    'JsDFLP8Af#>h?jvytv$R%X<=*eJXtxV+T-Pz0r|zao~pqGN}wS^K~1|m8t=8nL;JXuE+#?nAl?c*y=*z466_QJ3r-'
    'jULqdv3r=e<yVN@<rm@0VW$u>(_!a}yj$TTa@kx8!8k|bs9+73uTn21*@44DyVE%SPvjoBdJY7EQ3c%v)gEt7W_h!HQe&r=%IrwiVq)~*9k&`$'
    '=f3=K+1<UqzO7?90!DicKjIH@4PXR3Y~cDVAd(%F#c-zzGA?VSOOKCRf}y_3<X*R7K9p7`gz_~&YI(90wvKbBIE=e}|1lDXffl$I3dmY#keN*-'
    'jVfHp`>6(vQw<Wp*lA~GHu#pIx@!Idi2JSMK{UpR7fI@qJqlKnFeH(M7^$`D1+q`D&z9K9xj6<=KEeP{fgUb%_e#4|(7w6>FO)$6yq>5WJNATj'
    'Ef33=3&f=aEbPQV30qM7Cin91{cMeO%fFJ^*tVQQ6<G*hA`waHP)Ddv?}4+(Gq*YO<tz2lZPY2bI*zG0Y=+mSIc70@*Zf*Z4OT?Ddu?aXE_N%W'
    'GkuO9^AD0I-~xfeJgkyjFr3#~7*-tL}sdK}A~;0vr<6A1&r=$40gDj?+oM<=7+Km-4%WjBusz7V9`*!iVDoP^$dfj9H9Ge2HN-'
    'o&uZQ!fO;FN%Qqdsi5cQhd3`?QZ)J1mHp|j@xGJ7ap1>=Ev%6chPAxX2)3t%LRR7#`8ylu*H>A4-S$LftjMswnb_6<n$-'
    '%>eF_#A1p6sZafOeRNBgSby7)WKXh)%+Z;-'
    '4z>#MJQ1UKkP02vk1?APZ<Z+M05s=ZWYX^%B%~qu1(3~1Jb~0h5J0)30rSJQ_lf6zWp&N{k5Z?0>8$D5~XkHHyfx^$JC%|E=yHECf)En>hgm}1'
    'YnrnBNHKUfjm(`jGR5sNS6G`vqOqv_G(RFaUH*<WZhfps`@)E~FMpBIQ(N~gtYKHFOWX_giSj7|S-l8@kDf+qDL-'
    '4%CmtbrazryHv3@4RTsLIwbB#{<ogENGS;3sHNp1CqdQig!d@RMdoBzG50i-RkQk5<OhgJN=)pH{Sn78Fw0pJNM2-cyCq@wC`GKRM*UNwm@-'
    'Pw&GU$%f{qm8)cn4`$9)WIeOk`vIX2d(i6I)$Eav+6N<zbt3+La(rwL&VV91XKBL>mOh}Ka6a1rRla1d?SMoYs+Hsh0vehMMq%H*Mf1+CYQX`9'
    '-$u@UgZB($>@_lMWYufdYwD`;o#k*&4+!_&@LwV%iQoR?h85t+xU6uK>GK#~F?jj#zq}Uz@?A=)*T$~a$w>rp&+{p%!T(4Us~ELfCR;i_ky9jN'
    '{GC0Ut*Y6n>vBn-x%x}5FFK3567;JbL>~lPHXHnr6Lo_YVCt&K;#8yF6}Q3?LBVLgYezkwu3+d*-HKObr<<&&Jxw?!(jg%Tf)+kHZH9$-'
    'XfpF+Y4b}UZ5_lhYbfW2+Mr(bRq1|RI$;b?e+-Jj+`76#dQL%`L&wFoXh^Pt7eCEI_mlMcKa5SYpM$vB9&v~Yt~&qbu=l8<+aI*vx4Qp-'
    'd)L<6#%_e){VUk>;7UD8B5jf)s80gOwj2v_EWuKm90Y=~lGgG%vQ|gCify#%Z!c#^?((`z$(IIg{b1M<uS0S!<jgn2fw3+)!#*WOw8&D%Lg?`L'
    'J-'
    '~wv10Nj*pS#0@W8)p?4FZMn14N3m)Me0c(>=fCu<Zc;LCtzRrCvw%2V2O36Zh7c2mNM}XBi(Z6NM$)d9Tt#tawh~BGb`kDS`Bb$iWD4dO02;NZ'
    'A_ih6&xgT)4ziLhP#x#;ZU)nZ=()v8LE`gi0(t!Sf05fNax$$0*5)%p7%@evCso0t*Fn57RHu(J0)fp@AVOstvq7V@*l=&XQ3*{aW0(3g0?v!?'
    'M?QKkNA)vXe0mhQ!kp^_(T$3Ct7q6&c4=5ehS^A!YG(B-e?bN6)1odOAJ!?mmv@$ql*TuCCzd^s+%-'
    'qbe0NK&KMEuh~t4b>ZDoD*n3h3X8mK1dWy=VL3T8R}NJ^>U8Ajl918oC1mk=rO7a(Jc50^hVrkx%45o+0Lr)Y@?LK6_5r_y2Alo^whzEPVEY7r'
    '?AS0c^gwj|I>lw6T&by^@~w*#w6cx-l7H3C`ruj%un7C-'
    '{obI9vH&6v;l8_bG^~%b$8$+xlU^g#tTN`ic?_FL8d(*JNM7^`CSl2Zb0udpQEB?4{Q2=p1(|s~a^)?z?%VQN_x<r>tps`xD4(^SY<2W$)F^YU'
    'D{uP_F`%b0G7cZS<?~xPoF@4dI{FI<>LYd->A5T>EPd-'
    'K!}jmc_@I)4nX*<nVi!Zas;2CYrQLzW(y#m@Dt&po4bfSS+H!LlEr@0i@iKH64a)xGl)!^Bs(cXrFr_nyC*d3=16-'
    'em;AZY2J&PHa%251U3{#h<eAk!AR9<`@U5JB`f3}Kem&J!W4s%d+tuslfMW$$ZpJ+)zlt$p+2s^wLJ`tM@uh;MQPN}VM&jIGms6*UTulc{q@ZX'
    '^_@YCs*gVH8_a9Nah?k9VA@h8#_wxo<w*{uY~r}pvas>%6$R8K{3tH6J`i5wSGam#WsDXTn}Y+`KtBwl<&{-'
    '#Uu6s=_bN8n`?f}2@%z2s(m(;?Li!MUfk%p|Ydveb{U-'
    'X1aT&`Q(_%TBwp?Kbj)9tc?BM%lJgRYKc3zI!K9SvYr1btAjr>uBSO3I&Oz&Eg_H%(2Sbba{%Jr$^cqQtdsrMjeleqGCJfg*8}2+j&zsK{3V3)'
    'nn9x)I@yXdma+8CYuwcc0KZul0_SVrHz*(AIVv?@ygQ1>ydePZhfLOZuCsQ<m+UbCzZg5rClLTK~asezlS176u*7(Ru1thDy!NOt5=+1!{}i5Z'
    't@w>y_vk~7YC8w-H8Efw`hZ$9_`Ge2IG)eQxJw{VzU!xQ)*O9g08j?nVPT#Qa(R}Vh_^?rm<#y2(8T`bMkvw4+-'
    'OWz3f;Z)_Q3JLA|<(pdp6CCgeCF;(j_8qWlBdi@&%omEte9viemqq}m|v#p2Qj{Q|T>+WDa&nJU}oJK?Rf1MQXJYC~JZRqcl}*b_IP(?6pO7mR'
    'UNAxYcwc`~VqAX@1epk6m#`LCnv$?~oyHP9ex@}rV=yd^X5#s6_BhR35_X;gH@@}a1+7lVO(Gx9v@<)lUDy#FD}BA0j^vYvh#bPhS^Y|j})PIr'
    '+dCs8=XZZ+4Gc&{9Ny<n?)Fj1?78s#YLWhB}2i<RBVSIG>pwd!$Y@}sG{Dp*8Rlk!-'
    'jSm{e4@0c#Xip%Fj@wUQCqSGF{lL}tN0UG5MH(>QVz5Q~LOv@B-WeNNX5eAZ-'
    '#Uh6`a1KT<_`z}S^Fe!{y9nFA^l|Q%!1$nl93Xc@;@%MPH0mx~zzdMZX&PO`i-'
    '=@j`bkO%PXcF&pDJtL4551Qf($PsaskLgRD+?V=;4c&B%G%S=vpcB>SZapNOEzJ;$qmqG}y?fKKS~tTpxkv@}UU)Ql8$cx1e@yv{WO)SU$A<*_'
    'RqsSem!3CjDuU{r6Ot=s^~y&afKC!!>t%Sf4+oF!2MB9h7o2BcH+KeIXAS*`B>6ZzL~>jVYIBg=33Q!d7yQX@q%|ixay|jQ%JF5x>UdnbH2}d0'
    'Hf^lewg+SHTbDBBL@{aT<cGZZ#bZH&#-@6-'
    'n~!X$Xp_zmMm~kZAFgYNGrU97Af#1sQbEHyzy4CyE1ODzNX91t8vkkMP9MVnjL>9+7|$$imo}bFWq~Sifer*u;V<h$NE$Vnf1|yE3du2>snqI;'
    'CV40#FyFPskv=Zpku9^R0iBP=)9wTAlU}x@p0S7vN4@*OdKVf6a4RQb8WPsc(j!r(K*Ytx;xF_lro?D2$mX>?aVdzI?j@NpEHM=3DYkHGcDih9'
    'Ya>^V@*Z|JF3peUAOT8PhflK=Yt}umi6$lroxEoqEnj$s6tTZ`fv>V?RA$qY%|HrqcYu8)hld%A1u<OHIDMQKW18@Q|w-'
    'Jo)1nIL~HS#9??h30Ip$TphN5KWLwI9xz1iJSYu;VD^Zdz1L}*u&P33-'
    'e;O5=C&*X0`okyENn|?s~iLrWP1)g;L0MhMVMgw^zi)Pq&Mh1V7eHWd!0-wWnpbmv{jJ<j_BKW_RDK)53Jy6Z+J`z1hXB8$l8t8z-'
    'nJu2*M&KtPLsDfN#4D<8@Bk6BA~sXJH*`xEOh5kkItRK(z*GH631-hG4hVccC?Zj!+DrCfN~2vr?&VrZ!=Tc5#4)*7#`wxLDi`Q-me1l6fk-Be'
    'M`i_y#@37vXpw)#^q*CER{kDg~ogq1{P&FEB@LAs)345p8n+q<!$A(C2h2>%DObTQMc{fo%;?4ls6$^|JS!YC*{g@-'
    'IOKZ@~57fP)IzDscUJr^C)*`1CA6Cx?uD;o2%z8^3hHXT|5m6S*h%uvT?35Jx{HJjBLwtj#<k&!I~8r(C&C@q96WrErca8r*+i7O%qS0L<L);V'
    'MqnDOoHhDXB%zXU|Ezcm^TRBwNuDr45!ka7u}rf!mgJGKG|TigPLYsyvnXpni@sDV?IHJeF3C#qUsBF#yh@Ii~GfJ;hpEx~*Jx+faXs9e^MQXB'
    '|v3**W`9F=q>T?#ZRA_Qp@A>8Y=~7Q_%3-Rb&z9Ibj6d`_U3z!Xy*8{g<!guFZoZ)Yg)iITFA5-'
    'vTKQixcdK8$t9pWdZ7CjI><M_KVO+?`>C@yHic+O*oO16Bb-'
    '%U=#yW+4b<0dNxtqCvoTf$qcUNB^A>^njkv;mQrtF|aI`Q;4;p%b#WpLn0TKX%^G605EY$iO!+^`CT7JpO~=As|C+>2@*C-'
    '(v+1|^JG%GXW_T#1%6*NSQNsJxxcx*^7;7_OP@Y2Q?BT|gf&+U`=?;ggJJKi0OQR!>)@#nc<w8zfj=EG?MyTcse37No<-'
    '_|C_ZnoC%VD<`Z`?Q@r@u501(rZq1U0@(w~t{w%4$rxIBXZGaDx}`6I9*{D1#kMXzC`Lhzb`12X=M{8$RRJPy;1cwf`b_gE5R21+#8oa0#}f}C'
    'NFHVU4nG0&S!RRZ&+!W^yeH2I+go=8hB!fEN&$BfDw=X5j2T_knmNyD8_&SF}oG!+mkeo4iBGK9le>XJB=Xu!6*F?|Gv<>O$1(oh5+y1mwpFH*'
    'xky&}gFSa|*YWU)?t+I2RTZ%7LopSeRdU|n{+<BM#QDaH*3b!&2OwJFO!%01MEN&Y7&I5O>lHZ7m+!`i8<`>yF*6T2<kIhLhe_WNdsP^sxxN$('
    '3+y&OQi-#_2)!QJq{sQ8gG^cJFR_dhKWr8E8Zm5ps=l;y;%6`k%X?bN}It;TAjd%LZ-z}6c~%GzI0(qB;Y2lb^Mr3!D!zvLlSd>`oF|Fh_xP5-'
    'ywv>xl=&997D6yZcDTp4|~V1w-'
    '9*4v~OjD^>0Rn?PsA9zPCoBlO;KXiXr*AY7o%X4Z<tg|bN&(3USK)!7$<rMG`4^`f2k?D3yG4PWRZ`6jDVfJA`HNL@mbzv}lSc|<pGlk?~T4f8'
    'F@@^X;@8s~zr5U>5I>6x5nSsr$>m^iGnylyGO{nQvwYp!dk2&ZnCyd+?x5+@zHPz@!cjK_PvYC-'
    '6h<8=DP{;Nohq}4lGhDF`?Zw?7OIG0wq&I*rq4t0}hMJSIbbJ1(56~!pocF#nJU{Lp9(EX&jO#SK^f(xwLpLlb5>tTPi6mPr+g^|}<}q`lY&Dx'
    'B$tB2QECHewSUS|sT1Kn%e1Iv>_}dReHl0P2?==IDRm)siybiCk476-e$XBq0S|+T(#PbdQCIBivr2xqoXJjAj-'
    '8Q+or1lw@+YC`PAA)8Yv2VG>g9sx=r+dyEe=W23Hgp*Z4MsuT;7ScO-'
    '2a@B8IUi$3GcWqPR;jdHcQb~zl3Z;b835d8U)6WM<qFMcm^Az5<(xDlXsl?GF*4tnc<Ol73k#_d?1$<ytgCMcAg~P$a*Q?mdFWATU#gWwq<X?!'
    '?IC}!Kf@hHJ?Lz6E5*K#xjY){RU6>H4fUIs(P!z^CnyJB!(-'
    '@3<)XN==r~9J{y~58fKr#Sp3_x8Q2;PG<vVmb6%x5i2?I^n~e9idF|?sFJ>Y6Ir|=+1zx=cBaH+TynkbkvS<vGX#@{?WB3z31u?awr~L?kRa9Q'
    'CmSS+(SIh}y2lhG;1I=?TvLy5Up0IbH!xZuWF1l*US--Tl8_n`5COH;i892W$>F@2uR9^O?a(lUq7E`mr=V%pyqx~|{QzJj>ng;h@)3J!=u!tR'
    'S4Q0tOr2Sr<%~5WiCvLPbkx4R7R^VmMZ{wpW8N(Ue(R_k)0Ku9`E!F?Gx&q4sB@aeqrA^q`4daD)QlPaYkC^IglUrn*bSDtD>!lBu9d*Z{RpcJ'
    'Qcy~wWh9NiX_I^jn{Lb#y*u{Qr*Oow=RqIXxs9<mF%FR*TCuyN)X4FbuiJ>TJI>u#kLw<oJVB(H$6@)ea1>oPt301$Z5d>zld@^W5;XpqhcNA4'
    'nJ0WmDc)*5qOzySk(<lSQPb3$xk%ylzV$pA_cDvJ>ssPd{WGg)K3BJQ+Y&Zsld2qu6dH^G1Nu(WI)^U@)jiftGGM+BiCy{Lh>-'
    '!0~jo~z)Jo%iTC6jLl^Z0tKx(i^T4wV#>ti778uL01MK?qbh4M-IS8J%kF=;W|-'
    'bc7)1XT5_D=LaX<kNXx+)p?xl#~Dr>$;{ZrdFPLHI0rr`SOi{h-{S8({CyKovrGKzG6H;-28YUy)6Q%r-'
    '=kqcjGlqWJyzHX!^{hkmV|;Kij&tmU@P`x$r$UHQLUIrijxDM131aB?x$;f!KIst&X7)z&y96%gY)0E6Tk&7>*&YMzX8_x1Md'
)

ASSET_PAYLOAD = (
    'c-rd>@N?(olHy`uVBq!ia0vp^0zmA*!3-o-'
    '7PBv5U|?nl@Ck8UV`TK<#|(y1FbYN_cocYZKadLcba4!+n3J4vfK7sv)4<4RQK6(^>xB}dMXytiBuaYv9o#U3<9aaPg}Ht$`3qxW9=0T!@i8(P'
    'I(k@!9uW9!+xD0v+N;*#uYvP~AH`ywiEdI148mOu^#VRSSwPl!y85}Sb4q9e03gsYmH'
)

def unpack(payload: str) -> bytes:
    return zlib.decompress(base64.b85decode(payload.encode("ascii")))

def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()

def find_root(explicit):
    if explicit:
        root = Path(explicit).expanduser().resolve()
    else:
        start = Path.cwd().resolve()
        root = next(
            (p for p in [start, *start.parents]
             if (p / "Makefile").is_file() and (p / C_REL).is_file()),
            start,
        )
    if not (root / "Makefile").is_file():
        raise SystemExit(f"ERRO: Makefile não encontrado em {root}")
    if not (root / C_REL).is_file():
        raise SystemExit(f"ERRO: {C_REL} não encontrado em {root}")
    if not (root / "graphics/party_menu").is_dir():
        raise SystemExit("ERRO: graphics/party_menu não encontrado.")
    return root

def backup(root, rels, dry):
    stamp = datetime.now().strftime("%Y%m%d-%H%M%S")
    b = root / BACKUP_DIR / stamp
    manifest = {"created": stamp, "files": {}}

    for rel in rels:
        src = root / rel
        existed = src.exists()
        manifest["files"][str(rel)] = {
            "existed": existed,
            "sha256": sha256(src) if existed and src.is_file() else None,
        }
        if existed and src.is_file() and not dry:
            dst = b / rel
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dst)

    if dry:
        print(f"[dry-run] backup seria {b}")
        return None

    b.mkdir(parents=True, exist_ok=True)
    (b / "manifest.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    return b

def install(root, force, dry):
    cdata = unpack(C_PAYLOAD)
    adata = unpack(ASSET_PAYLOAD)

    if sha256_bytes(cdata) != FINAL_SHA256 or sha256_bytes(adata) != ASSET_SHA256:
        raise SystemExit("ERRO: payload interno corrompido.")

    tc = root / C_REL
    ta = root / ASSET_REL
    current = sha256(tc)

    if current == FINAL_SHA256:
        replace = False
        print("C: Party Shiny já instalado.")
    elif current == BASE_SHA256:
        replace = True
        print("C: arquivo-base enviado no chat reconhecido.")
    elif force:
        replace = True
        print("AVISO: --force-replace ativo; substituindo party_menu.c diferente.")
    else:
        print("ERRO: src/party_menu.c não bate com o arquivo-base usado neste pacote.")
        print("Nada foi sobrescrito para proteger suas alterações.")
        print("Use --force-replace apenas se quiser uma substituição completa.")
        return False

    asset_copy = not ta.is_file() or sha256(ta) != ASSET_SHA256
    rels = ([C_REL] if replace else []) + ([ASSET_REL] if asset_copy else [])

    if not rels:
        print("Nada para alterar.")
        return True

    b = backup(root, rels, dry)
    if b:
        print(f"Backup: {b}")

    if replace:
        if dry:
            print(f"[dry-run] escreveria {tc}")
        else:
            tc.write_bytes(cdata)
            print(f"OK: {C_REL}")

    if asset_copy:
        if dry:
            print(f"[dry-run] escreveria {ta}")
        else:
            ta.parent.mkdir(parents=True, exist_ok=True)
            ta.write_bytes(adata)
            print(f"OK: {ASSET_REL}")

    if not dry:
        if sha256(tc) != FINAL_SHA256:
            raise SystemExit("ERRO: verificação pós-instalação do C falhou.")
        if sha256(ta) != ASSET_SHA256:
            raise SystemExit("ERRO: verificação pós-instalação do PNG falhou.")

    return True

def restore(root, dry):
    base = root / BACKUP_DIR
    backups = sorted(
        [p for p in base.glob("*") if p.is_dir() and (p / "manifest.json").is_file()],
        reverse=True,
    )
    if not backups:
        print("Nenhum backup encontrado.")
        return False

    b = backups[0]
    manifest = json.loads((b / "manifest.json").read_text(encoding="utf-8"))
    print(f"Restaurando: {b}")

    for rel_s, info in manifest.get("files", {}).items():
        rel = Path(rel_s)
        src = b / rel
        dst = root / rel
        if info.get("existed"):
            if dry:
                print(f"[dry-run] {src} -> {dst}")
            else:
                dst.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(src, dst)
                print(f"Restaurado: {rel}")
        elif dst.exists():
            if dry:
                print(f"[dry-run] removeria {dst}")
            else:
                dst.unlink()
                print(f"Removido: {rel}")
    return True

def do_build(root, jobs):
    make = shutil.which("make")
    if not make:
        print("ERRO: make não encontrado.")
        return False
    cmd = [make, f"-j{jobs}"]
    print("Build:", " ".join(cmd))
    return subprocess.run(cmd, cwd=root).returncode == 0

def do_run(root):
    roms = sorted(root.glob("*.gba"), key=lambda p: p.stat().st_mtime, reverse=True)
    if not roms:
        print("ERRO: nenhuma ROM .gba encontrada.")
        return False
    emu = shutil.which("mgba-qt") or shutil.which("mgba")
    if not emu:
        print("ERRO: mGBA não encontrado.")
        return False
    subprocess.Popen([emu, str(roms[0])], cwd=root)
    return True

def main():
    p = argparse.ArgumentParser(description="Instalador standalone Party Shiny.")
    p.add_argument("--project")
    p.add_argument("--build", action="store_true")
    p.add_argument("--run", action="store_true")
    p.add_argument("--jobs", type=int, default=max(1, os.cpu_count() or 1))
    p.add_argument("--force-replace", action="store_true")
    p.add_argument("--restore-latest", action="store_true")
    p.add_argument("--dry-run", action="store_true")
    a = p.parse_args()

    root = find_root(a.project)
    print(f"Projeto: {root}")

    if a.restore_latest:
        return 0 if restore(root, a.dry_run) else 1
    if not install(root, a.force_replace, a.dry_run):
        return 2
    if a.dry_run:
        return 0
    if a.build and not do_build(root, a.jobs):
        return 3
    if a.run and not do_run(root):
        return 4

    print("Party Shiny instalado com sucesso.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
