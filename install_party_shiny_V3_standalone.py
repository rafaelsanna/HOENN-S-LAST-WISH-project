#!/usr/bin/env python3
"""Party Menu Shiny V3 — pokeemerald-expansion 1.13.3.

V3 corrige dois bugs sem alterar a lógica de SWITCH:
1) o nome amarelo não usa mais a paleta BG do slot, portanto não pode afetar
   nenhuma linha/parte da HP bar;
2) brilho e nome Shiny usam OBJ priority 1, igual ao held-item icon, então
   janelas/popups do menu ficam por cima deles.
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
V1_SHA256 = "7127f9aa3430cc5ba5fa825a73f334550a03fbc9904cb505c3bba60ea4e49c5c"
V2_SHA256 = "9c53aee0a75f80eefd48ae8f2b0eda964ea383866a8953e00b864e7e2d60459d"
V3_SHA256 = "fa21e71f9d4fa585e4760110557c65df4f63099b3cdabc60ae745af2eb65ab04"
ASSET_SHA256 = "d46394cac8db1cadb7062ccce9f3721ea347695bedd85563cacc7b78ef17d004"

C_REL = Path("src/party_menu.c")
ASSET_REL = Path("graphics/party_menu/shiny.png")
BACKUP_DIR = Path(".party_shiny_backup")

C_PAYLOAD = (
    'c-ri}|8m<nvM~C8o`SPmUsg_JN0NUgp5&Ay%eFSMq$A0b$>z&d(Go3lBZ*p)itU|E)vda(aNpqmaqB$CzR7)(+uZ<2fCNa&c4lVJ*{Mt-'
    'l0c);Xf(QkM)x1x<z&8|I@TX%bMMNY@7(<1*&m~K6K`>SKem_dLVdrm=W}nOzPqx+aPH{dX#nsK6K@&%-'
    'hA%(f%g0C`feP+|Lf45YYVu`(DASBiN4*H`^E6#-nSR-'
    'H0#^=%AO^@&yvJ}#)D9OIkiJO@x}ovu6!p*bkVVc`|;$)P5^MeI?HgJ2E*QaSATUT;dtSFbr$fPEaJ_9Qr>bLOq^w+=hv<?p9+GH?XS>)uPfnP'
    'UqcJJFW9K={c3LCJAMYpVB$N@G6Qn3awe`l4|Lyd9Xq^nbZ{5;D)Dwcg*J5W#tSz{u<JFjop%d(FIUMgJ`l-'
    ';FKMout=41TnI#aN`S$9@oh058Yc6dZ4|_fiLf>7^G$7s3S)|{LVRYA;*XtlL1QUCeXm{=|zog%c{p)pd4kuB8H_ODE6c+eqeB;blsVPfe_(-'
    '~ccc#g&A&>&5*OhZ)e|5dYfC6jzx1K*w)LPkdCk&nBOFz8V5Qy_(ayVDs7iZxuwJ*o+#PsE_>%~g{B?vv=o;l;-'
    'K1hvSRA#+c*#13deYFfQ5YEvQ`+|tL@ovXl4C!hH6MG4R>1d}CRB%_xciwuLAZf7j-'
    '6TZ=n7E;aqDH1=9})}@+ChTxLgy|_zZu`U%c*yp_~6^q1Xk-MlF9eH1dVmoVHlwk%P@GQTZWQf$6|_`ipiod$S#zYic$&BU!aIz0=I<sE5`_m='
    '5|hVSjPAfu`qr#O_;cZKf5x03cS=n6SiXJJOi)`>z8L1{CCmnUXF*C7Z>%x$FlV1LwnRbmtLIqI-'
    'TB!)<E-WJZz10uLrHs<)Ewka@kd@H0#}Ft5cQUv`4KA>G7=nQ%iar)!(<0MJ{?jrQg-ton*DdyFsgdlES1WQ{udRD&snAbx+2<OZio+J5mVK?c'
    'pnxo}=ENr8Ili9;&rQgZfFUntUOnGU^S73a+Dir*}4PTy`3o*FcZ1=Jkg<^r(BL`EojFpPaRHAL=?l7YTM~p4Yo)Eg0m%Mfz>M(eAWIGDS|?t<'
    'DLJ+VI)8<7dxay|UUTfd%u=0_DN7C%6h*b2kVBcwvW@y;?c8Z{6NFOUt%sf><E8EjO?NXAaZQnaYe^Z;sl%?hpo}%ljnW$h;lBi$^(nr3|!qD~'
    ')yBf;`+&^?1aiS8SS%d)-c=aLl*jP0Xg^jmk3OEip-'
    '=nSQ&gdynjo4M}_y!S0QE7h+`9Pk;G%Rv(<S#?8w{0$zIl>%J&rAXPw;1p04Lb>tCgc>DFi=;OH2`+3}HosP!MUgz?HHxhpuw9n2>-'
    '&+59S?@&O63|EWvvI%ozSXFAI@VjOTB}sbsSo4f1^gYqACBsyOBl;0^nyYBBPg=4_S4sMWOpRLwZ9MW;*SiaJ|Ht}bz03)>jVK>rK<Jgk5*+%Q'
    '|`3h?uuf(Tvb<Y)Z@G!m#gW@U0ilX?Qy*`ip%Zl$}wOdJmPYDrgnR$qeidY5#{!E<zV7m^tzVZj{{w~%kJe+beESq+=>ZE;^d?~7@zb$Flg2Ex'
    '63}OzODI2Y=R$a>2JtgRIjEECru<AYHPPrsq9<&kBEM2G-_ETwa!bca#w}1MXA?ENw$qky*0dXm-it0CTJ&GBM^htgS+a1#ncQ7&66cFPUiQP?'
    '|@|ykgyEwg@d53y|ur64Yn}IPd^0Z{EKC?5|cHkzzb{0bX;plnrhj)T8GvR6j^!}>7AD6BOIo3Z3p4~+<`KF0Hqw?*@15)r!V@w!KmIHy&>2P>'
    '!mySvc#4_9{bL63gxHRy1le|jXzsVhqZ3q@WygMq<gnZ1SPBm>MT*h3g%vDHO|B*gr|0V?p%i!8tCxdfoFT}EuAvq?M!SS3akfUo7i*s*I9tl3'
    'uVAUbeum}dsnL!K%2S~pq%YHjEGa~>YjRX-iNOHJIYuxHpDd({)UJ5offbI%;DXNv0S%)(Hb}E!xojRW|spNVek$UtS^;0JN<b)Z2txL=wQ!!V'
    'eQteS2&fQ1!$p7EK>cf^^p}2328vOFcu?F-J9Or^Mg;Ht+&s(Y-'
    '{~YGO;(nMWTy+g5`^eF|K~p%3?|Gdx87U|M#E&k7rFi3zbL<l}O|luxmo#nl)IJU>aIe*LPfa0m|mYp4w~_p$-'
    '^$9xz$!Z)<yw{A1mLJT0MF3C2_hNAe{w#WcLxdU0fJTh$88@Y?DQ*LNF$;ns%*;I2G>YHwlvd#KN=kGvIBdP$X}|Kj>rwtFX6PmznzYD2f$@DB'
    'R=iBld({rOWZrr9sm%6{3ZR=<@k3vi&$RjmK-|NOr#C-~di0pP4yt$GN>UdzR*RE&|wmVoUmz-lI7`wFmK1F+W$ussv7*9x$G1sD!E(s%pm{zG'
    'sbcliY-'
    '7@OL!A^|i(uEaUF02_#ll@UIn5(sk1_ih82xgd`~kd#?*lqFM;bzdEZzbX|LuJ1FD2umyPcC3a6;)j{(D5dP_t6LIFLWqJOK#4=5>Adq{2yM0Q'
    'pp^hx*|}baYv1|wxeT(>A`=lY#H!Q}sAd5rK~VA*SQ#dw5uiukKvq$mCCp7=WULpWjPq8`(wPcc^p?=2#@VaOcGP#Dw=>=0)C6h8zLl*R30#>>'
    'Xtncagom|Pz88|3Oa+!GBY_4B)T^o8Cms4A^w+Rt5vDY-Ob+q+w1!1(3EF&PZcn}(N3X8%u@*m19cLvy+5VSm{0P+bC!Rf53&c+gcN#y;-'
    'Puhj0}gE$YDQ`w;YlbGvd?5ClgrBU76{^#)@dEIC6GatvY`mb>(Tkg;mGv8aXC1<?4EoyeZOd*bV+X=zBiVE{|EKXN!f^Ht3U2FTlKD~M6=iL3'
    'sWNfb<i8OKJ<D<`0egV`>bdBI&61-'
    'GQ;lI!HDUM!A5y+D$=Qg>3RYdz(qTQjP(X6@}0|;nT}m!<$kL!EWq@~v!0o<&E6$KMZVFmy~IAa_Kr`SYkNHpVdcgD-df|*A5bOu!`5+b)%wB-'
    'Z|(zLm#Pw16{*`;`!mqw?xniOaYd?LxYH%h6R9fjV3C@w1?pQ<xv#B@LFc4M-4mGPy@_KlsW#Om)-6)E>4EU_d9$o8a`vD|-'
    'GLW4x1KkZdW(Etq-q;9$eE`!3sd5(SETOHoqtWBj1#61%6&Tkjkga=D%PjEIFE`{?Z8roYlPHWm}V!1nr+xu_l^15ky#36Uon<iiWwlP;=C-'
    '>S;wB-'
    'M0HtbaoQHCd*(&VDC**@#;U2hFW9dH2%!q5CV#9Helji(G13O1P&NS&i^pdZ03jNT5XACggdhZj5rVt`ebzw`a>59KFHdGNaCuQS(@`v7pG|b+'
    'Lc<7xt#A?#=w*kozE}f|bQJQ#2!XAV85l4zVyw^B(Tw^`lo;zvEA3}({aBnBVJJ)SXAKM?SIqn<*6GhCe&o_6gCD!mjI#9nxHR)3$&Ak#wMotx'
    'tE1S+Y#c>RWG)ZUhWP3R?$z9}I<E%IezD{|hJ;CyCCZxjleyDF2>HUuD2x8Brankb%~Aq?Pbw^Dyw;r!))twtfeRKZSf9)&_3gzf5W9exyl1f3'
    '6ozDbNsn3?-'
    '|{VX{BLm9C{@cA{Hbk~>8S=k%hqoEv|G0J_|vX<QtI!)tFpDv%N&#~_;bXcUYDzta#g^t?v|^2<?3Pd(K@7$1nygbB{_+DjZoi>(W}LX>=Ck}t'
    '$jlBD1ka)ihDP_%#px{Aq$WJeF3g|P)77c*&1}~pj_L}MLyOBlF08Wbl+F#eyGs>NKja*|C*3L5ct)~65Xr&<s%@ycsf#sp$7e^QO|O4SM?AL-'
    '=sKYKYrSaiN8yj9;Nx_AjT030EMF-'
    '1NkFH!QVjaYTVTt{CS;=f20LzP~TNpeoyJhfx_~KY0@Jr#iZXyWFyia5sz0S)DPo+!MGsx4|7qM^)Eg4y9)OE3igKz_D4GGCBh?)y9)LPD)z7A'
    '`3u+=V0xkYX;>boY&_)BC>&BhYB9_2Qy-HoFO3cG!BO0EAT2QYp~UjL@zk#EQAaAdn8!+|e!A`|({)dot_R9=J=9LuqZs!?iA(lL*6d2iS7XtG'
    '$OHT5BQNw_y@cOYB>cW2(+^{zsS%U7Sso*MNMbU=wL-GxP!jRGglp83qjD{u--W8Jk?=J|!tW^(eqWx2ob!_s{!pHqNam`<-Mf;6-'
    '$ydX%no>0fZuabSG4>hLS7Q<64w9~HKYeV*;n{PUZL3PDznL6jQ?(xNWYhhf6Bth839Sm6Jtco6D|Ep{Ub%%aCX^M*d>-'
    'Xhd50mL61_tQiOXX6Q{^3wWq902QfQo7-*ju=yk;Viat|OvEL(#S0x78E7y(+EVJFwW^2?gp(@RTL+VBn@uPTb4rz^gEg`-q^@9+P`vHjWQ$O-'
    'JpILT#DPJ>5`F&*u9HduQ6yu6w^IB1CP<N?FQ(!-4Cq%naWO-'
    '#qr5^E$f_POyyc(;n2lS*OUd07TrfQ|Ut1L)+k_vWM7G12pMukRV6xo<XmjXH!10!ONCua9}bZ<0gt*&P|ccE|dbGns1!4rHsk^?Jay@+eFL#z'
    'vDxjv@nul9URr~OlB?p`^*O^5rzjqT&{lzKGIr8bC;@u+@Q8TU?4hpiDK#lc=?;i_7A-'
    '&`10gkihajmsY#WE8H${Fgx=9A@LJ99dWH_IL4I_D{n<Wh0-'
    'gwMVr^f6DDeT&tQWd*1oLO16F;wYt>fi~3o+$y(Su+H39~?(gPTiW;gu(_+)8516lm@?W*4IY~jkg)#95vd1}aU1G<a;F6P$b~iY#-'
    '@Ng>!09s=@A!bBdENs}%c@)b-'
    'ur+4*F~?J1BR^MpzlMk?xbDtUpio5jYhrhH|v){^pm<fw2FWnd7(X5diJV%kW;ZfnK(hvpCtCTe;JN|C<2Lkv)LLBt$s6)K64<?CuxI=18YRRX'
    '?F4tMH;rRxSAl8UkrXGvj544^Y*Bvyg8{4-jB})^^XaMyk@;S?zHNIE_sZW#k+2AlzLt7pil3|@%wJ?!!WD(xIG-'
    'V&d!p)e=wmwkh{9&P6Mm5y-$bd?qW4}CvJ%TMnT}tPy~h`>+H!5_eBLJ`{#d=L+a9MFWoTW--dVR1O)m+8(JQo0d-'
    '<O6LFXrZ@%z4?d7#MK<{$Csq)oxr&j63)!YqF*UQOPX${go`Tv#Y&5ySDLHCh0br;NeA^23=`y9V^f(Z^7`ro8pj=WXs-'
    '3Rp0NxeOH*r~d%18sJdW-gqL?BEMxZQ+dr2I#_emrZ*<zp^J^V9jtt@xa^JtyvSAz32A)`b{-'
    '{JGX;y$UT0Cb1!_edrYHt8L%<&op9|h@fX_<Lthc{8lHLRuz~JluYAPZx^iyATk_QK=Ig~Wh?-'
    '#DYVB#$TVA{V0_DdQVE5+mI9<eEPMo=}1W1g)o<Wf})xC&z>?TBe`e~OB2Oxfmw-PM!0G!x}%rXSpSlnIMdTH%h*Q^L$8GvW*)%nsAzOwL>TuW'
    'bC%z=GJfPU{dE6Z7W>)DNk*D@miY8WoZy7kbtZ(;|IReEiqvz6-vTgMhmZg&ok!0dR-'
    '=NfNaP0`=RvtXXo$u&FJ5nW=g+QFxb`p@Xk$$Yv2mHn9E;#yIs+e=vSm+pLSTjDgx^3dxAu>+z5VwJl_#kv6`VIGz$ch!Rm(?qstMnbb|^8CTw'
    '^{B(=fGQq}ShjV&p3lk8QU+41s6g;iBxo8jfHryK%-t^z;bMn`5Nn;OC~P<1nWKaNt;iA=FD$m`p@JiTUAfEJq)ZU-MvfaYY)Nt~C*G8~0*T9p'
    '@Ig2|(q+QPT?O7Y*4Njt2sX~f{my8_oB?0KF#X-'
    '}u1ip6ixWE_KbX+|R6Y27Y!WSeQl|HPlcL9Z;fkNfQWZQkW&GdtkgzH4j$VK~9P)`0y+b#`)XM;U7WHrOm?iaP#V1_43M^CWAbu@2$Uh9~7chW'
    '+AQm!u0}IZmZkdD^^fLYKt<}BkbdH~8)VF5wPgn^n-;N733Urs-qg5knEM1+(fJ!%JXV-Tl<`P-'
    '30x!*&O4lP=N2G3mY;8#*8vUP?@&J4$Wb%c#q<ZaXs+c14XMHaS5je>|3AC{Xz}qhZ6#3O;2P(%F`9J$saO;MX8x-'
    '`b$elRI1Xj}mGxd(n<4%2VL472lcRJ{GNA1>NEP0Qb#~mA%*b1FbIia*;79?ELGK+Dga`hpahk1n?UKo0dLggd3VzBjWpz&svfJYVYTBDCMh%G'
    'ce(Qn(?=I+Dfc^umQ%n5O1zrd=-J>NqQScZw6;1yqSEpcI$9NfwMaSj?AtHD-&w%}Xq)vfJMnO8b~B-'
    'ir5qu*CV8CW%M(cO9OEoTln$4}r5tR;xjHaeTXvS#jAXPcpjUY8u39RpbgwhNLT$9+T{8cKpxp%8j{*BCVhFj5P!i33n%T+ldYj<;|^FuQNj!('
    'J?eE@++NCa*QRfyHUDMghO}zXFDU++yYVV5}2G*!?Quq8h9LD!^jxv#U7qeUCEJpV~pg4%`V%*NA~j<dvPgnt&QuV4c=GU}fPoc%UfhAT(y~9T'
    '4}9d*BDKF3wSBmaZwVQP&ZW$)(^Dor4p|oN=0@<WhrfGq7p2_I<!pK2zr_X-&*nwrq!}`R@v+TfmFz!KxEj-nBI($L_MVw|z)O=($#A{>dJwF@'
    '~XUvjOS=Mdn#k{?uJ6rBFu%(S|O<$o~DNbqxYY+<}8ZFu+0o<#?n<_bVr>)wpzr&ALKmnO;|{EYc}M*r8yQQReEiseEKpNR{wi#tNdWKT@^C+Q'
    'zEWRToklKtTgV=2^3Mf%+{$;?~#<=P@jf%?7i_1WsEq6pjT|7&w6w8-'
    '^u(7hBehxAl`uUot65@*(3)V4}5PS+>15gxNcXIg?!p=n(wp+MfEL40k+l)de9uqi71+;$S&J4Q)H{uOCj<VJSGG1w5`wWNfV6`7}$8CfcJ)IQ'
    'f!w*b=5KPJaJW8Vja00c*^Byd-'
    't%d7uiKnuwQH<@P}Py6ZSoXR52#@$6}0l}7~w>+6c+`$X}Przs3`@5~7k?nHQ@$2cNwNipb)+X6#x?N6BN2O1i9eag9$T7g#sRG;MSAVI3Q7F|'
    'Wq4WrZ|vwfHvrt5fpwVK~6yH31{uJFLQ#^?+w@Y=y{(lVGJDl#A5jv)b;sBrF1otQTmd2e9Mw5T-ac-'
    '0{)%>^4{BP1PC6sQ!NPl@^`zI|J~u|{pIY(JR_4Zwo6b3_cx!`ti<*-'
    '#k23c&=nW1S+nOxw!~P*!HPz6&Ugvs*<llh{<66)FT8Xy&BFQbHiCk4$q^E|mw3Y`7d)MaqcXrF0LtB=sFTbOe!^APi6f8-'
    '{Eti*km5j!6hA+uurTgz+W{)-n<mSIe<F+Nm<9zQcOf_b5D%woz6<mLE-Tb)N=y;szLUhQp&nffGBlLAknE&qJ53MHzzuv=SmmYrf+qtY-'
    '4I7AvOwWKD7-YB0q>ek@5u6t2`{k*+qX679BbQtJaq$T>)~XhLsLmuu!Mde=E9Jh(C|02s$+44e1W8LdOl@A)keN-'
    'G5<3yVSpyZml*H0bO#j(1@;NJAwBzj@<KzC115Gn(IBcM8Vd@;ksk?|%oN7xvwEfqUKuHDM#T1^C8cft!HW@EC*?{{koq9ScNsdKoOruOn}SXH'
    'LlX>;R~GplEy`c;f=;9xKI7?EuA2=z=7*5O4XiBc}Ly14tw9)K#RP3<uCe&`d{^KhU;KnGRFf9r0pw$~+)NCyyX)nfLpFz|Q-'
    'm``)a|>_#f^_{som!G08+C?&$}!C1ktFbIXgs2T>|mS-veyaDcoWf?b}7))gI-'
    '5QNr@tLc_7fXS$jR)ebsxKP2n}Zxm#|=6}GdPi5c@Owi@IC8#y<}%(w5NpUK}*~%qW!cf7*lw}6zx>nS1`e?Jr0DOoK0QSe4Hh@+_1ANpCU2h?'
    '<GK)IJ6IV!_Jqual?+>Xw%MjVfx^GblP6Raws+!{)LC@fpRu$q@Dz1%(NS<FuS$FqyIo8Bi(YyPQYyc%iJ-TDv8FW3XekJay9)PU^UprM|n?&>'
    'SJK8h3z!N@VJ8M8tX8Oc!haZXq0-'
    'z#9>u}%<UR%9~lNLf4|=}o8`F88&#l_re=C)hZDCj#`UGUz<%;mEOtN#GeTcl#@FXNYX~7#TH0fZZKKn<JquDrnffCYMGqvj=z2aZQW%KEy>?M'
    '2s)Gnq^>V3|_7o|?Hw~FZr86qYuPN$9eK{REAy7A6T4E^FQ9zQ>;ec**P^D_F{lN1_9v^mHv2%Mlojc5!0v=^-'
    '!c>y9&Xg$3hR5Z@qLxPuBIaWna8}zdsRi)~$i>e(qK)@{=o>cuq=Vb87q(`zlB(TtBg}K;lJA$^?fFGXqX$Mv4jgn?Vb;H{AhJ7*%jF8U07f1k'
    'RB|NM5mq;_*T6qq2Tzvv@5wNfP}UYYgC+5TG}Iy`ahdD+1<DWU7+NY4XkoT+0>D=^Wn)u7Gb5?<P=Sjp!6y-'
    'Mle;DWEVvondT4A2j!KfBc`gAh-HE%RefmDktyO5Yz`4v5?E29Ox}H)x*4=>vPwff$ys%nB3P5Wf*gViGZ*hdEm}%pY;PM%!f!<!O)+YHepc71'
    '(=b}air!f(tOt)wn2h4oPkUCLWb}Yk=-'
    'ZrUs;;pYT>IEb_yUs1jfJ9kM3w;=*knd2JjHVvZh>C(}{b0Kx@NbGZ$T=XhRD+kV&3|4mR;lGWr|O9}^<A&w`2Kz0oqR!NGDAo*mcr%+=1TEPx'
    '>A~FqK)$Pe2NEwf?<dp*}LJi+(hHZ9prRIyM8Go0mv%h(QbRmw=c~^kt!oMfbj9}nF?D9w8UWimeB9B=oa;cxlEZSSPzsOI@5^zk28#&YvAch&'
    'cvj;>g;5+panuB>~O8Y(+oxxao%WLY#4r#;{Y#D$8!9P5?3_zW^GS5Xi8FE1Q??pC^{M;A@sq-VW|#+qSi1FM!iOEP1}x<NW(b{l&o9#md-GAR'
    ')(>o;<D#%(7V27vC>QnsF*57@vecnG=XIL1{Q7DbZ|fNa7{PS1izhod{f#`<^#?MrVfxIk%cLBNB|5pOKn_MY1%+c0!N_o#aXg&*33+IDP!$3@'
    '(w})35{@!6ya<5nawn?$f-^&KUvE9Q*Apiy~+y$0ZkB7Ker{CrYdC-'
    'RW59zqD@C2CW;v;jTQ4KJ#>~+Hl+P#0d7f_&gxkQB`_4`gO(3nSHZNbg2KyLS11nVF0S0=2s08C=$}$Ft8+{ZV5^JgH~Q$MZQQD-<s6MfG-tqw'
    'wT*lnYttd93}7w?H=?Yjdur+7+P}^yOlYSt$)}0FN)~OR8eIQ7wG)dr8mwpqh;no^?Mz(#xp87{vps5Q_tc=`aj&1oSglW68@wtjVy@Zn)-'
    'cMO)P%*o=cAI6)QmRULsn~}3hgr*#`k!%2uFe>2hCX1th;l}J%rnePqFVNfh%y-'
    'B59q>@`#ln)LS!zRyed_DWBGZn`R?>?STb7(+cEs=)6C0Fc%D1<eIsO42yJaQMm09+Rm-'
    '7Ir=zr`j9H2KFv*CX2_>#DR73#+*^J?e_s6#f)mEu2Vapr4BCKy50GeMV#$vMwQ`z#2&Ne&1`d#D;$Vp^d2!-'
    'Npib@Owe34u`!G@CUHFc5dcL}eQ!;LLP&J^WsF^9jlIUm2E}X%Nc02NbzB9+r$}sd+0v9Y{(%ppSZw6g-'
    'VF$K=l~QWb$k_#|W}YpR8UYA;grITBViteAvlr1id!<bfE?cikmM*Z8>uO}`VQHqy;9cfQ#Lszxk%u72X+$GL@j8iCXhL;PZ@gATtqowxz;Zsl'
    'FS5eP@{5kQFIR+4e^xb)Y;HL-&{{#DwHyj}om-'
    '@Ckg<n{`=7#T$Ji=vN;}RJsGrGnacNc1>0BOAixLZqNkEA2<VBZLCbhVvD{QoPEZ7CgU#x?$;joSL=_%fd%$}i=p~qI)nPC#?jaObrCu~Fy^7h'
    'G1+eY=}G*9fOBw^3z>w30DDcl;dW{f6O?cq6Fdi+hsCpDHu-IOsc(>P1){AABv+9bXK3M|pZj{2vuctBHPsu69@wdU^3y`oL@oZZqR>)Z~aoxM'
    '5>)zN_EM~s%{Kuv0h`J&k?tqb{ueHRx^tM9y!yUZ#i*;JUvZMkMUr7)m+YDn@|+5uyGSj;C!ry}bsH13CNLs7Ue=?4j2cgYPDYc9EmEbT9~O^j'
    'Z=IDLqU3pJVh(PnR(p?yWmM)B6-'
    'g)2IVFbzknHz;OY#xl)zUAcoP69VRq&{Sa~Td+tSV!y8d2K?9zBx8n$Y>b1hxCt4>F*T|#1e#_|8{W9rq)pJ7w9aJEa9soDb;AuQlL>X4o#u@('
    'EJKqnC}zfZC<1DLw;eZx#m=~!S7WZmYKR(@AW@i6fNh{uGfEhC#KdRXpf!IU*<YL-2skQvMVPOn=`-'
    '%I<=~J5fsvt>MM>Oq)1K0b5_D9Y@xAMjB+qICm6ObV&fFlo5!#`s<`u~5DDH%2e2#XDGN~Ebb8psI&#&@J^}agG{8Arm3^g#zFL>&^(^&!Jz%b'
    '4)bb;B7vx?ERB#>H*+(LD(B~UrBFMw>1#|Q|46-'
    '$XG_=_A(0=k;1+2|snMyp8d$f3ECC+SCgO9N&d*N6<OLp0<(t#cMv@FGJeEKurl85AnVG)9xI2TQ9c*zGszfP3z&JU`TVTSx&6#shEir8##OS7'
    'LcdI7eWPT&sSKu|m+Ns=1h2LHsxt>8Qqs`%>1f`sr!A+p2fl7tM>4@#&y`(JED6V>na%t3q+(GzDAT6HT%b4F)0$Li{!`U}C^kZiX?>#GX5%Ky'
    '-8*#m!+Z(E%1ZwI?8%j>bsVXMc3Bms9838ji-j`o)-aXWZ=#F6x~qu9)s41~vmB>Rvx%_odf9&z?sK@d6ACGQm_-UmZNuN55K@b#4ih!=78t-'
    'O8q$nwH27Zu#rEL!s+t&XVHMv3Mjqm_=@9{&#lWo8HW>>=nQuw^>nL%HjKpm0B%l$$0M=NGRp~ImTECcptspZ8qB7@#Su<^anFoj!rs8R}^SM0'
    'p6#GV=?gRK^Ab<vvlGNE=QVC=o&V{!yCs5HLc2D1taZ{6Y^UF0T?&$V1ygYz<FT3unzX{qCWo++B0}>$k3<B(4*{?b4NuZqT+i2RH5kOFzVS0+'
    '*7gw{$reKBSzysPCT_^(=@!mAVO~w6QXx|$_sf{e^pEL8h_^Vg_l@(fek3VWx*QwOH7j(RoQFw`(iY1Y>FW;><`+b7WA;*2Qh@Rj7y)LI|;*u4'
    'VK_tcfF9_@$nP@+J8yZ$JBmmjTPn>#K=i+G2{X!ufwQbm>^Po5aB*BfW-'
    '|+;_WC=VZcGK;Z)%=`jO8*dux)DLPp1Ku<0R^CAA`>D{*L4^~0X&!;$GjwU++!=gW(J2}OSn@<P1FeHhtS#J%Q@WOg`jhK-!XYEB|kea_-'
    ';9Q#rBB$9`-'
    'NKual_qlm)31+|r4<~pofp`UXVb7xYObSQUIjGqQm`^;URlH;pR9=1(N1Whid;A5}%*rwrIledM_VSAqT1OL3M?@mZTpSP<7kU^uEY9Rm!TJ~_'
    'wj#6)9w!o$6gK{Bg+8pBKpAHlvI<pEVHZOPLlp|_%PIukb;#4j-aDvTu_`rD1p|>+d5CIW<<|BWl-Lg=!Gij^xnPg)2NaO%5*;$7y2#x6AhC{('
    '{LW?i!QS0&?GZ9vsb5s4+d-'
    'USHh5#Lyw!U3iozl`&Pac|=hvRx@KJJoQ$dB}^+}2CCDOu1@s~4XSDXy^rNA*?ipBgDl{bqr#7`<{>jaQ0dQ2khA!4kMD3ju0Z%nl6zlpXv(Q5'
    'xD+U7*t{WsAzC)(b>iMBb>_Wy?y&9o-7J;r!V&Imji6^b;etC^$*$SLMiZ%5urdP%Vb;Q5F@-'
    '%wm@cu^~7=owdb0P45Lf}xgE+h3*=8A>^?MnZsxJNo;+%!23wI`oSn!cS=|H)zdfTgT7-=q@MoH7J08K>bzPve~)$1MPj$-'
    '3W@@eCzr1sg!AfM^<D(i0RJw)xAZ5<E`y?Q84@+ajP67HCFfT_T_Mmc+drv0rjQjVAeUjKYr_3NZ9}b8!zlHP8@66Mp#p4>Qa<tFa}n4P-'
    'tac+5V2jj@e#a^Lt{irgS~&)dJ5sIjR8#`^3BGE=Au2wQ+{g5#tb;xC=*Jk?*%-'
    'c+0PjoMwKf5Wi_+@2N#3`}miL<C5G4I&Fg0YGsMfs$l!aOa?ZO%3!<Y1asXT?8cJD+~|J!5smJp8m+%B(rBuuhZ{7ypK7#q`k<a}(&#~|(dzF0'
    'LwbsqYSBgy(~TZB9@5iI8a+xk+N?%tX?QXM+8^Ku)O5X0w7)O4Uptc9-'
    '%GY%O*2)kdMXe&xxBdeI7Tc+t&4uAK5FSVJQ7nfCtR*HJ8RH9?Lb(&fTy+h8vZ)MzjmPy{Og_=g6i%8FJ0ZQ@Y1zPm6zsUqtdMQVFddqf_)glK'
    '1{$qj9?!{un!~Hhbru9Rlu&+1ng>6z^+zR*i@QeQ)z-'
    'trTN#rZ{<AN(y}B@Yx<r_TA8fX3c{^^D_g(Rs)y{S^kqN(vaf!59e=@}A}~7(fdb1xfJq<#FOucA=)}sxFw<ftEn#ke(Sk8TFFUzGAb(()A}l+'
    '~!tn<R1n<xhkL%OwWL+T}2B}!Z7{r+(Lpw8giQpJu%ziMLtXFQFv&e(hl*ff$kq>Yg<NYqZ_|S*8l&-'
    'Ng9$J}#E&CYc1;c+5KKJy(XHI?Al>_Uf!viu$A*^{2X(~CP+XB-KRxp0?Z`H8<Ol2uO;Vb2ok`&K(oE|yaktX9$S_m99ife#U1Xd#a6LhJ1^d0'
    ')NcN(!YCU!6fg+$$N!NW0=md6ww`nifDDhsU-)gN|p4YQI8MR`TaYFd@D8s1oF;#-'
    '_N6uT7=q;z3w9Acg@CMymtFQUzdK!G+(JQsy2m%<i@;9grL9TaALY$eR8A$lLiovM|hUNLCj=x=8pIEjjJ>Vlm`9Q#`QJl2(S)F99kB^^zotSz'
    'EmOCuH+O!sg5-9idy9sSO(60%^{ampN1K}Q$9I;%o5g$@g`omIn-5r=sH@U&oEB~?yTHL8oO5f7G_cbMgCJo?ygjak;N@p-*-y7f#>BBpCJ&K-'
    'nS_29A<;~23^;rg_Xp1_owQa`-4-'
    'eb00hHR()v3EIAv6I+lE&{8w9}+~gl}av4KH*wFTJ^!8{*mR?F6q$2b!H2SzI>Ta3d#rLepUy0(+1<PrNtVJ5*<;)pyr+QK8(A)Zjy{YC<4w%x'
    'j+gXFOMU^NSAvjW!SQ|t*Z5pe~^<h5Bm9h)`t<`UbLT5)jxwM<$>PE!+xvTZVk7PA^C6WMj=d<p2}@Dz4bCgkd=HmQcqr5RZ396W>O4(hWA$}?'
    '9z_C4!z;T_vUkzSRfxJYg{jrSP0Rs6}PEq(vjT#_RJV=JHCkrxbhDU%f1n(ETB+!I2qt82ARUd1}NzQb-'
    '8+~xlw3dJk^}oa6S|m!Q9c)j$9%*Hxx~b8WxhTc18oo2Vt;YqKXlSRzwsr9{!oXr8w?Ad%+{O^S39^i5q9So;%Yh;ZV~9Z8{ivKl%1TloRc<&|'
    '&C(p2qVhI_GXS#(FeSap}bn`@V-M5{0F>x*s@yTLYIx2#@g48c^-'
    'e!!Sl#LmN#Xb>1X1P)fM4By|>?>nv~OeC7DTn8oSf?)4pa`DNftzLrR!V09EtYMgcDlMJaHVD&ofZN;Tj333I-'
    '!WY9NHHLlvE}crY^gX&|3{x+BSja&gWG_yR9Wn{!o>A(%${Sh!F;+Wg498~^aBO!ypUaYxG-zaF;Jf+~IJ~(G2hJ>z%TU~ZX%gtTpXPpy+{>5o'
    'YpKhGXH~*;VlU_J(qWg5>Eh%A0M_29-AT+rX-'
    '$gW?_AMz5fkXd4RHT|no_X}Vz8UQfK6FiqBrl(UJML_#@FLGuRQU?<{<aqsJe=oYgKNg&M1;I{sK&a7h)FI_jI!I0IUuahRw*WusP_%M2Ay}7N'
    'm~;qI66R<Dcj?PsyqB$Tz)0{!1}^wvy0iGdlUr*xe(wySj`KiIFWx$Ja4nZGMTAP4ED5P%*T@5;|nHP?)IMs4z6RSi&_}T#&*&#E7wrc1My%#^'
    'e_dpwg}ZtQ5oI0Z{i;s61|nPSP0T`#zx6gg7#%{V>kb?>n8U2P%TvOe4P)Zjxv#klEw`qjQwmfSCE&dkqh0RuVNu*ZoQoQ(US_rY$J+`iy}kV@'
    'C|bD3(g*w$}sH6G`D|%z>4n>D8}yTB8vd;`L4k9ZXdWi|H$TOJ`G@Bq`N!X6~{}M+LIxq#{@0_?6MYb=>IGo9{QG#MHUA*Yi-Lq6+1-'
    'ls1m?Ec%4WClyaE)NDfW*PLca^*hU?_-+dLzm@C%M#}Y5tFh8L^hCOjPD9q_1lt_hBLl==O^?%Qtwwe3fg0*ls&v)wqSDoV6P0fF_pZ|I{f<?-'
    '{qL>P9sD*b-C=RX2epb1=j~Ce-szv$e<dwQR&^hs1?lnq7gvQ$nJc*-RFq7Wcvxj+QBu>>NfTrBcLRzPq(-8H+Ki3jen0OjZ5%1=$GkCf&-'
    'M*x@zR*2lR?Usi4%mrM=797QN#hmVO2T}v(Q&{4i52wI{O@*XRyNqO^HZ0YHPz<!2xJK^Mt;u5B$JLcUmNsWL`1(h4oI<h8kJ<)nloVv;#6yS9'
    '9v}$)h3i4~!7eU_O7Yci~8T1)R29ofAVnao#R!vE%viu-!fDwB$NJWXo_BeDW9<aIeTEN*YHIfkC}FYWKRrmEoe-jhDcG{KLwxIQ-BaHP5$n#L'
    'vkF&WC_p?%bpoTxfp*UR|LJ^^_8bq4&7te@8yz+jMRl+&J_38v*Nb*m`x={;9=o?y<=00Xe%-'
    '?I1)4DZUBtYC@}Ld|!JtU(>O$0OnH<UQyaV03dw%teNjl%hu8h2`0I7Ptl9~75BxPP}TtMRIyXQ%_u?Z*p)-WCR@oBL3Rd-%-'
    'iI^rHou<6oG1ESOYKK7``J#^9%Hw`DHHZ?M|cjGyVI<ytbv*R<*DCW4FwN^51dBx4Yv;eKb;M@NY8fX&M6KzQ;QXS40f-'
    'W`t#E9*|oj##7>H`w*qjTTgDt(*bkv(QSuqUX3CB2BEo25tJk#%38evFD%-K-'
    'C={W<+zmNFW~7QEX*IqrWIbS<z8OVWcpKJ@wi?Vi%+{_oouh{sdekys}<trQ%drHH@=PjxI2b{R})eE#vD-Em<7^O*HG`IciE67!ISZhLe|T`3'
    'I20!PeDx&(dO%dl$_ad^gflK`qg#|J7k)enq>nF8faEKobaz7PFPYQiufe!ceyOUiB)J(6XGzcg3Vb!T9xScJJ}5?QzG+MMrSVsr}gjpLG|xSs'
    'lMdpl3Ziu+X%`a@hDlx;$ebCIEo8rF<IT0f-GR=XIe8_bNfMI?ayjG?vk6;5c=iDih)?M={kV8Ee2GW%|O{^Uh?EAJ)w|-'
    '>=xM7z2z+(a<ShLkWOKBCygMa27wPTukY&K!ra8x%65GaNpt5q+@|6E$mruP(Vsi?;)Vn~DiwGZ`i+J+Ahs+Yz2gHnq@XWQ6#vC)9OsqeFWfNL'
    'iT%0)=I2^H7Tgsx6o2*dtyN1JDO8n^V|CfjA1%6VA|B(45#_T;&Uo+>)y10?R^q?>%IMN402pi>JQ7aA5gQhY!J~D%=hqKDDIRbMaiUgX7aO-e'
    'AFJ#yGdu@cwu(S13-'
    '0B$WIn|_9FG6hu^iA+?>Wn|a(FKT#vWG361yfTR$KLA1rJSu&iZ&w0}Ii;6D%32ombu+aOTPbF2f{SJ4|s#e^nN!VtXApWorheZ3K<&57C`Owp'
    '4EinDXKpMkT~7zme(-'
    's{rZ(c&p<<97^t5e2|Ep)GH41Ct?=qGp8dmh+qgoW6g#J=r2?04hGocGauHl>8a<1B7&;qviX9y!yAd#3d2feu&3qA0I^Vy8Q{Z>vy^QCZU<c1'
    'K3)&Hai?I!u<NJlts2^13Zl{Sfqy{E`Oa)ThpI3Y+!aELI?3e?aE*O0<PvWSG^Ef0waL2{&{$e#f4vG>z?y5K5J1DIb6{?Hl10R+#0Ec%_5vtf'
    '_=_zqRrp5GYK<O^)q~P=UhPx$5M<GA4HmWd)sc9$TZ3PGCSfG(t&PCE&H$s4H}S3n-'
    'Weg@!H9b8>n>e>(#f6k&IhHe^#Z1e#5^<nO4n?v{V<O+aE86Lo~w1X-'
    '`&h_@lAaH1j=o{Ti7$eJ+k=#k@2t&7E|lzQL8&dwdA6H)^0{R2~`4lLs({2`>8d+f7OZ<BL`}68e%WEl4}i!Neo;GpJ*RYDJprr$H?d5o~R^{&'
    '&NGckq7vZ5i+bgSyzZQ9Q_~xCqlc~>+}ZvI@U?+w0_wc9Y2g;itsG&X&!5-'
    'ymh^XRz%DohA9zxR6na=B&T6(^f}go69t|LyCDx$H4jv^7$`pIna~ub&IMTST(%-'
    '`KWfH}G>RnuYeu|yGdcIcHW(KDs2mptRm}laEeI+#EXGkO3Q!rA-'
    '075>+)*a;c!);cL#Fm`IZ>aG8J>s{o|FkTVStF%rPR#JnX}@*|47YQ<@1{?7K@onN)Sdcn)eeh4!GK#w5r7w*5q9s1HRJD9Q86okZ6xGMbPD(x'
    '2aBT>71Ee&8c8Tw=W+z)b~Lnq&t`1+MhVo0I7VSemi$kCxLJ2;ECQ_&#lVcscNP3{Xx1;#Z2gHZ%J`o0*l{W#>(ylo@=jmcdV{M8~UJzf)?rpP'
    'P|Lb+j?t_Kn>soJgE=fkI%sLL;Xcppwm7(A5n=d{id>nYye6x_1AJ(Y7pyM91r+l2D!j)=Y2AnX5?JJqPBp!g}bWUe2ex07@){{0tG$rxJib#q'
    'Yvg9Y5W1DHGbu@+h^9A4mNR5*7soq;@&d~<CvdO;}<sCrSmoz+Lh1P`-}qB&ykLoEOiR{a}FS-'
    'h!zwjK|I4fS_7a|0W+A76mK&Nj#9!5Xy8n<pv0f6pR-uQbc~L(VSvVmbix^#WATI`77-'
    'Ihi60<MYhoj?NVzWYJV<`~l$_|Fr3EUjjbyBtsjd=&>YSad12i0^P!={z)5E4M8HX4K^N-'
    'a^^{7_0uI+_8zvuf}0#I`A{sQbq+PS!Fzmn`$43>&9&!G$+Cxkb4XhFNTp8qA<qZ`5u@hK|PdH<C%^=LBQ-'
    'e6Km+O?Q^bojQwb7O!7CU%GpB=Ia_ahBe)D6X|KhA`UO+KQ<`L$LjB3iI?>Uumz5@nf`=z?QCN*4o$9n%vm_#Ixt-iu+~j$k3d*683FF91qGEa'
    '_C^QrjE)Oy=O!GUYD)c<*F7xC$wD?Evl6={lR)_wS_y)s8fSK8`Y^%o$5w)_R91pU1yHl!x^=9%hiK)EkTHAzi#bg=;G}_<VmtHS{bYoHjf|X&'
    '9_%;e>I1>x%RK^i3o!hy7M{AIRPi0dI5!m2{FpcHKmV`<B>5@1T*>;gzb)*Oh@HfWy3D-mum;*+G}%{^>ejS-mSu)4XafT%kZbRzafrLYk%{`Y'
    'WqZxqny!H1+VV#MpDF>ip1~!CigJ8W)}y_CYb!nzE!PSFRbc8YNarTGtuo}*5|kOeE_eo5HprJ0vTn{yATQ--)~-'
    '!YliQvC<u_%c{PYa3vpO;F9_yN5J-'
    'EHR_Nc8>f|w<&t8hfW*eUYj%XyY9XOM&zfo=jtq&(uX0$6aa`Zc+5$#h`VCk)=T15@2emopT?f!>cwcFjwk6{sYlU>@+(M$3mnD)%-'
    'tJVBo2J3V7Ofe=vW6{}JMECEb`(PuIrcchAQcQOyE{=6YBdY<6^C`M?Y`-y&!ssMw#AbwOp|)G5KT-'
    '>O5;&$oNYRQIp;pMKjk7WFVf&<{iP*GNPIGBS3=3IIq)v8MLa$Ixd4nVC1wQpdzmRZ<&p#w@!A!Z4DaEAou^~4=V||d%b})cI5?o>MG0LTiTAl'
    '}@1HSGs?jd7Rz=>+Hcx5Q6@CXYRHCW>!t??BpiNd&}IPJRQt(DCJS|C{K$G3QV3cuvI8S;=m&z??Vq*r+6sEj?n(TsHhjn@$x)yl7m2V)h+CV<'
    'D86LK9SO5O<{N;1NM2+(9Y7EFsk#-'
    'kKYL~^C3{fNjR=&e<H5#jMx<n&Uc=;lronL%;{O3@}3OiL(+UXU5VnWS1`mk8#Ha4*I$M4@urv;VNF)*JGPPG8xGtI8uwlTY+YG#JTi7W%{}rK'
    'O2S8PD(taw=TxSxAj*vc_y*D1xLTqCbQ<oo4$Jpr@Rr<{q6KUU}h-'
    '#k}|fgdf<~4q0hTJ3tUjDX`qd!kN0ZSlP8RPa__cIS@0FtQbVWQZAR+pQ-'
    'gS#qKFr2E2z5)jOqHR<U~837n2-LY+>mWazLob$y3BV#Z>dZz)Qgq}gwjwU-Er^-'
    'hk|BmpW#zh7F_E$e?7_aUF9m|F`4+W`iSp0|mY4M6d$`Ls;G!zm#10~7O}J}0?(Q5120eEU`kI!VouKdvUG4kp#pmz7u8#P+Q03;%=St)Ajmyc'
    '5cuN!Ss#0ge*L1;cRi+=jWOi@WH5d#3A4!dw3_-BCdm=#jC)Mz;yrez&-IOZRT?N5Z#+F5lL+gj+1bB=)R9hc9w0$9-'
    '$EQX&U)?#RJ?CTPDZz!<O0Yl48Gu85Uv)vKKQy0Bz^!qc2`{$Y?<XMRl@Nf4_f$IrO4#suk0Lbqm3z#tEVLkRQJV9p?HyG~N2)~ND;S{vR_ob('
    'fq$#4+L_I1de<^^iF62SBT;|uwl$?2aCIL5Ey2%<=oxxHeDLDyHlH(fLJ3^(Cswtt1->`?MR*=C-'
    '2oQllzen%CK*uQwX@oW0bac4kIzC4?D6vs?Dfq<ckbX<y+8oM$g*q;kJ_}oUUq+#`xf;(psThD~6T0MkOxLU&^8%N9MP)6-e>!RKtcUq?-'
    '&dVaCYmw?7+9#uPY2`*KHVmhy$TuI{@TN(dwaD1@=>DB$Phkvg^mg2)fWnN+Y{nPTCauho*RBr+8Wm^!fn3dojx%Y%y8V*l59<h9x*44@SY+a}'
    'v`@l{{Ale;tJA4FpC^2W2C#~iSe{T;rA$F^cPp@hh!-_>jVvLt&C)$#6VU{QMKofQ<$7@i>&;&55y<!!1KoYvtBBXTHAamO5|8cTd_-ki`?4tO'
    'rTvb7Fy6v3@S}OX5&`jYwL;^HQJ+q^jDDUIw0SH4(w82XA!4#X4H<=f>AQChw`dG&AXqZ(pIe>rX}i-'
    'Y?FoORTnH+nX&_?8{Nx5}x`;G)ubGg;%SoUw-'
    '#9j&OI+Pswbk7l=8MN1J=qp4kI=20k<cj$X~;D;Pg!K|GAPg?O+W6!2M|domvY$gz1s*9Uj!Owc)j8lTY<^WoQ+`_!XV)woL4+8S<-'
    'pb;qJ!?D$!&tKxNFehu1;(%GODH*zeRoGN}bqRZtFw9j8;@r`wQ}^UQ%C?%$p1uCa;JUKcd$3%YTN350dpchVzSVR3AdZ6Yy0HGGcmm!8vz2@I'
    'uq%p~&=NV=TSi;|3q1f@Q~@QwXRe6N*HeAJW`QlR*X8`#41u*XkB7~bO3l1Fq*5GNLVg=y2I8zww`cTAwi_BX$eNxDn8Z$C8~DV-'
    'F=5(`X@^%gIXjGCyQmg1F1X@}|uec!ou?}THlx5Na|?PWOfPMnDgQ=Gx+me_(;ju0tZ!_fc?vF=Z>f}FHS6B*Y#?XxbMp)n4yN;u1@f&~MXS1O'
    '6?$P2+--fYN|A~-SqcON@$F}`A?q<tt@w253lXEV6m=L!ztQEZ(&ML!u1#X6hMsPRX<Pp#QWS9gvcGRx;4UM;9R-'
    'B3S%g6}@%1jqgfcImIf4Q%$T(pn1_1pu$X>{F9CZ1(yeF&)j>>CXkKCTX3nUBE_GJjGJ6Hq&tl(t!t9?uE+TQKgbfuu$+?g>rq4`=Dz9umBZOQ'
    'xr#`F$=&%B3tuhVedB9!9ClR6{XO56AGapxX?g@Qbj&kgm%P-vLWcURAeiTV39zuR4wZXCF5I1>nLbO_syb>tgP{>#%-'
    'Rh)&pl&8nn*1C*>GtPP02=Y8w2YguK13^$+Dm^<)h8Y8ISE=Y+sS(L6xq1U5)KR@Fzb(kL!gd8~!OiWK_|<TQErM>z?^#rBK{K3Q?xw2>}QUG^'
    'qpdpRAWkHuo;gEpj|I79ie^_-)U2)V?@G>`{5245EVtFZtx&@UJbj$4_?+86fHo;f~pIBpRzJ~0PBI*Iy-Cn#8hsm33Wp_E?7eaK+mIM8m+m8?'
    'Yhf+YA>B$8d;0i^B#EysUAItoC8NAFG$=>l2i_9Mq!ip0f2%*dUik=}cJBYU}x>_5Jd{oF<l9^c48ZX<_}Z{#qyk)ua7VhVe)QP3v?X6y{MyIx'
    '3}WZv~PtU!4F8J~V(iPWXM^l95CX`<}nQM0ZLga6rZ{QYqFr#a9Q6iJ6^(jV_A`Jt2`Pr3p*>WvnFUX;o(;w8iYKq{ciU`0pAM&#L7zFEfNW-'
    '^tL;S-cHE>gzv^`azU=_pkq$W&$yE+{1D^V>@1`-'
    ')qNLQI<O^<^N1N<{YU4Cb<+aoI|q#Jit&+~u{0J7q!ay#(Ld;w|qFhPI)DAv_$tyy$*D*5zn=n-'
    'kdQ(I~Y3^RnL2qmUJs$*4Ne%>+$)plA)wj6-'
    '2m0HU4+QgJ*f&I~x<em2GIXHy|7SlHI4m}F)9lo83u;bnxakD|eN<g)@@11vts68@ovf(sG1lgbYJgZ8K;ou8U`4QT&>Y5|Kt`mlNw4Q}(gD<!'
    'VxX3f&AoUDqB!SEoozH*j!fJ?Nyq)g81rENLE-'
    '`0*lwJl)2?mz#p9tj#A)kjUrW}NUzv?`lSblT&K=J~T6IdgH@8MVj5^WKMMec0MEQfBwzC@530U>vh#^VNqppYotgMu#n})4_uZ26<AchnJ2;C'
    '?NJF84&0fZH#)pi;O1Nspnr{YH=31sKh<qloW0B9qTP+S2t@r)g($6XW}xKO|#3}CVpp0pSZ0IY4<R=tP}OlNRFef-'
    '{VR^*}2Ww=*rlZGl7xAvgT})sn@y<ne={$mdangmj`3QxcBYb)?&pxHj8)m33=iP2d_{jo=s+M@2A#y(CW16gKle(R$<KZlhPykOFTqYXQwIOV'
    '`je4UU$?Qjy7q(>4CKogiq4CDO+g{22lvPr$FMO-EE)MFIt;m@WJ&RyiO9u-'
    '+ux;hNIq~HST{L)Gyj6<MUSMgaW<|H^GaE?fyORxf{i%&qVHrjD^7a>WtQ*=lA^9SI{l+@Gyo~7_Cy$ZTeAbT)J7Fa53@?=dR9`0>dHlhjQ2Mq'
    'M)l9&<{cD+jm|XDkhg;(@1F)k;1D(dpK^Loo(frt*j%FF17vcYVL-'
    'ZpF3ABSEN6b{O~wSnd!QdFH4-6TC7cLNhL35_V?)yZJK@0{uqFEoUhKjdE-pJJSkXqdB5vUJ>OnFJ^1tf)5E;5@4g3Ey6?X+*iELb6HI(}g`!!'
    'W!DYI3MTh9^lSI@RUekK9AisJIUW!}ZcbvLeY)-'
    'B_c~qwbOp;JkDNiD0&x1nk7U%my;J%rtA&o9N29(5zW`isy>{UG~A^BMlnGKnSSA5~&B?>4s8}i#mbgKf-wyC)6nhImbRF>8<^zU19cjjKXz*Y'
    'B1xFRE$<bTHeq(Y!2e$pB?!7Lb!>lmB(IOV~bDeIFPw8&`oU5u|w=i+Kw>$E-'
    'KiJ&=Xe^CtP=*>1>htVn@zZ6ogw0(E2mx=zLwg<yeLS;!3A+3^pdo0<J<m259RS?O(NU)?hZO7YytVD`uG+eorI)QK2yQ6Unte$}|e%@q#L=lo'
    '*;I!U`A180V1Dht#`k?hBcC@QLsCVDL$trf<K0B96J#tj_7;Z4cu?ef!IJ@Ne*SqHB@R}eRBY}2=6K4RAr2bg!rzlGOW2QiD6Oo)UEHwmb2e96'
    'yQ@~NNbY}3!kMmPdLSpX1w9p%~kFilAqk8Mn^f|Bp^px~DK{rGWQ(O!~=^U_Z@X*T;!-C^IDt2GY$7|}L<$z)S)uH4GESPx7-'
    'EnrTY22iR$NO|2_QtziZgFG7@-'
    'QL7tqYhdUQiF%4M@uAgu*c4SGW0dmhOOYMX(R3I^fQ+J^#t}$CO@gDu+eP4VF)vYop6iZ;(_WWWWO_SkJ?BhA#sRM&1aA0O`PoPzFXmfBSjnqa'
    'OVq46**TG4*6mM0s5#eY1T{)Cxuy=NHmA4MT6~l#sUC<J6Rkhd#TB<oZSNx-MRwUpy<Y0hA^j8`6=-'
    'W;lLmPdR$3IwCDElCKrE9`y}xIxd}*+9jI>DhsA91k}o)cmz@$@Y3N$s&?zA9&={LAsRQ&Tg~@n;@dL0j*7qO!x##u(k5&fG_fSDA0=*)iL#0L'
    'E$zIM^o-'
    '0B(DJCpRwqnhlut>et!Xdg(pni!wRFlFt{k*WPP6(=#y38kZ=PHg(5Yhe&Y)F4`8a;x?R^+Zs6C=xb{255Rm=_Ru`0>qG&uQ?(69hV_9>W+{Ks'
    '2^<r-O!AQIR1e8}Q?7!DTYwIF>O8AHf9fRqeN<)n(^y8SM(-'
    'D;HTQ3c)JND5l^)}M4EXU2ZR>QaTZCcC3czHgF(1afU0ZK_BRmE%oup9h`DSiUnhL%Zfm8rEpo{s~1J8+oU0sOz}WBj~)2a8q}|q80~bYrn|;W'
    'gZXAu~5`jksX{oh%BT}?wD}qD?D}uaXjzm;disjZF6DYVW~n5(%xw42?5fs==bWxH%;z!O+H@P+fw6_k>%4L?>)YJnVG#eGa*y#Kdaae#-'
    'Oi9){8UAF^+j{QlMA7zuQixzIvYa&HTg)T0j11?Wg@xv}u(!`-'
    '1TR=vDIX<F0~^lM7^qn6WlkDK=a!ekkVOK=`1sk_~m`_yLMk7q>nY&jf|ym`PjYi<d61m5K@(;+Qf+s@M*88V6xyKL(GyY0aC+Is4G#r>3iZ7='
    'DGCEx;@{D}(c?V2gUY1Drn^pNhyvna9PV7R+&;qn(n1kTYOz-'
    '>6h3<%W`1;lt>b$yi%@vm!cke{`z3RNNoK+}Z5(F5wuFAeof8eskd2U}Lw^CxNNX+b033PPM1$xx|ByJPzfF8Ffn*W`$H%cm2ZlyIbI;MVMts1'
    'GW6x^%v?uq_2q>qPrv~%&S*cBbla{#cg6?k=|Gh+$6;K92AR+XKCY^T6bhPCoI(Ygm9%AtDAcOZO_%POB}@28s05mF;DZI+z>of7S5x#3;!OLt'
    'wV~GUM=YHB9}`!;G`UXRJiJy;Ik+2Qc|c-i6d{kTiQLiu>+tXr_d`t(wtJk14vYhyOO#0n4OT-r0D2s1>8YB!KJW*F&-'
    'Y`O;+)?K^@~WzjD_&r909`i4_a2aE0|*wV=pt%?KT;{{U=WA8qRFN!;gY#%C-'
    'dE;7GWyo<}wVhzVvSrY?znCNFwMt>kpwB)G1K0@Zw6JwJZ^^F~4VEp)^DrSZ`lBJlU2^485;tZjjxeX=DPdae`ZG(1mb*ct8f$(xR2eX}Yjfsg'
    'R?6F{E&!EPre#W+m+s$6rdMQOhmf}@oQ7c&(9hzICQA<=p5#r7;<E-'
    'sj>%g9R7T}E++<QKT;8H21*_u)>&(x<>T2h<@)@6<o+tW@s|Lej1pj=WhNs$>}!9Hn$eBQZ>DJ*!GUq7mS1}f|wZv^e$2yOTCW{^C4u>%htJl|'
    '95(PxQS3iCWcOD!anGR;bcrfl3*%(?eOQ;mg5Pfk$T9n6N0>Q!4IAd>M6B6pNu^jptQsL`j{WE0o_>|n>D!wFHzi6oqp2mp?q!HZ40s}_S)A;y'
    '>HLioi>V=D%T$;)9nu-~+53F!{8%1H-de63Ulhr`ntsB%CMX@R1Z=pd;|XpPlE5aa`fAZFbS6bbXmOWc2qWA!FZDV)@{q5#1>{-'
    '>gkiUbizFQI>d{)@3F!1h){TRco_${vV3QXc9C!?=4;2vTh;^OC9_*Ix<`{*eyjLYh<|sCw*+GMAzP84ka)r?O$P<|%2~6n;s0l`W>F=<XG1&s'
    '7?)suXuy6#j=CL4Mfkw3?&V$?*exX8K7FD}58(4K8j$>M2IF!ZGRjCvJe5%iU`ieV6LKv$Rc)OZsM_`+3J3_=5~Tv`5YJcK0loPNLxE(6tE^Np'
    'E~>rLUY|UJKL5njs~Cg6XKo+m*SuAillRQKQ%Hv`(TOcrA{3#6lD}C^f%OoL3>aV^f$XvaiHu-'
    '6bX$ThXbiOz1uNVSg(t^<Ff1Kc<cp2>y&6edA^TBg}KFQ6G&uEw&j@AGEr4ax0l#*zR)2U9$3W-67d0+wU-'
    '@s@?H|kWE6El!5i`T_h^nQ``sURm3$S01b2gA-MyifW=xvTiG_-'
    '#JrWkB<$ORlzsa|hVxMhZ~<8?5{}CL3&|a|oWYH_tR0+q>nmuEfzgcjlk5o&Z+S)~etKHcxa3#MI!FDQ$tMpCij^rK3Xdo%F6@c2)CxnLe)3nf'
    '_*D&GVQCRM8N<BbbK2)~WCvfy6yPx4vBdb;@H#%oY&bJ_*`*||VzIQRPKn#a!!ZSfWKI;wWP`KDxY4OM-'
    '*aY|VI#pO2J`dI^?HfP;59ARms3zcnvGf!G^4_4d`VTDNvQ6yL?&C=K7d)9itX;0ah|#&Tv8?!9t)c`e(8oqDVdu_rx7`KZrB7J2&46*Nv1|S<'
    'k}cAu_#o_1(RbfsKBJ2Ctyg)83GYrh4d2%emZKB>}lWt4}14GY9&52l7Y<BujbkhJbx%s8RFT|R1pAtDyCM$;}}Nt35PAGvKU?A)r)CEFxdiTt'
    'qDD-An&5nc0BFO-`+S&3+aOnzx^iqIQsU?(We^c>MAgu=l7dxNK7m=RS>q`>hVhy@9-toN-evoqIIrjq@&5FiVpdOTdQ)MmHjKlmr6e<MT1f0U'
    'x@D-'
    'IcosJr`_;Oiguqu9ob3<kaK%EojdIM6tWPeG)h%y$umtMj?DP!BcMiYJaD`fCM@O^=;~B69Uv@;Tn5#OVV{7i_8<d#qN}V6I2E{f(n9CF@J@S%'
    'mccWc``hW_aah%Oh0#oga+>AKY1U?!7Ry@pDJQ91HW7v`gYm+m8;0Vm3Mv~cl>8hWOvb|-Z#|!Wu-y=(K*wEv0fp*oiFVy$vr4+h94F$-'
    '%&?YnGmm$)NGD^RV4*0Wiq^fH`OA(Qm!nayt2&t{Xb{O|F2Bnn3tR!W@J5jam^%3Y=yYnTZ6V_fHnmLyV<s)}{U%ss&DL<JE0=G^=`wTZ?+&76'
    'F>IBfFxv;v+y%_d;-'
    'M_+hLuNCl&h1_RnP>4OkhE2__Qb)1)c_6u13Rz4<3s|ElU?qQ`iY;N<JuUIz!>aiaFcUfOHD2qJpG%uG9c=1$P)9Jih37&vc)W$E~$eCThA#Ff'
    'dL4m{*qpH-vclbtaG;AO7{j35d2AX&IsKj!wYGSwoYhd%!sSrWnaC);c*)aSS#Z2~)D1Uw=yK^Y&GXb>n-'
    '8nVkBWfh2Wxi&{aa?N;YR8(3e>V3Y;pr2es4AGC6L4^;F%9s&3~SB*EHT7&I(sDg7owxE*%NJ}X(+ch!^6o?X*Z#dHbmZwi7Pjy18^KYT`n+vV'
    '&f>LV}WU+IR3j2fJ6R+4DU-`~9FnvJAc4zw?9}Vq{*8%gLsS~)fr88CJ0rRe-'
    '&OC&Yn=uqy+nZNoj{HMs3q!{^WqzFjiaSF_#{>HEE#)y9u=^7_GbgqGTkyn3pFq!i+LGE0ex5%1F>ek(*KbKFsbfvnRAg0_Wy4SIvz+GId<#QD'
    'A=K=$nPO&f(=kOWqp@fppw93TZXD3xt{1juvl909#a2<d{j^Kg$iIgrW$0apSDrg}roE-`V0-9<)Lsn#9)x)Ow)Cb-'
    'g%e(`aDznL10Rwja>BjpNyli0ep)a<%|^5Zpxfie9Hcy1*CPfi4npu<_%?q9c{<ki?<w+wg!7ZI^I01xbWv}2@OCo(``>_2XYN<$g6_b67iy`q'
    '-%tpwgYP9JegkUaobCDFho)>HR|%EVMW&NThy;2}a@*#bQoVaJZg$|;MpzU!kn+V84}beTxCKVAg@X<CF=l{>R3v0C0NZ+@--G@3AX;)CB-'
    'B3N7<|phpNjk{q$HUsCyNZsGM%SHoumWRJFD_cvw5)*9N|3M8?c}yQcMGQ)`2e-'
    'a%CVhQPAYwTd{XUzAmq<+E$T06ELO!6j}kX3sT6L&B~TNhuK@kP(@SE39!JGGxsnPyl35e>kQcf<Jh?zv~rEc#|x{O#Nz#kFE};6*S^HJEQ!?W'
    '691xi6)cP2m5n0^7@4pLznt_gF@~4SFywvs01iPv6gRMVaGm+R1<xVnf(P4qW7bFp8o+_!M|7nb<<x}smtHt@mN?R&ae8-kI!8-'
    'K;MgSSzQRgohZC_;7nx>}idkq|<Y}hy!^Y@ortU+=hhItlR~VoZAd)0V-Y>n|^NR;-'
    'R!>L5^NZg(_5S4rc<OFUTB6q*?M@qAW(TdGTHVp`O|CxL?w)O=4E~B+!1488-'
    '&qH2|CBOEPpt`^7h6oHXP4kCmkIR%v_2iEYrMw?CF~H3xjxkbHViD=cR=LehOAFk#B|3(-v)e<jP}N1{nVJ-'
    '%P+W@`xO=xc9Z$acb#k8pM5pK&1gU}2<^GEjm=osb33@%dE7~OVp2pG!-cO(!3o5U1E9@l%Z_FcYZnoE<UA64Q~WZlXoQ<)PqDo!{A$w{!&<-'
    'LxRL5B;`F`MJF{eo&U9$KZ~3`^_43@%lg7ANhe-=_x87&r0LSMSL&TMd-mFy86k?i^0>)vcFX}&&0*L!ZLv1QR5d`+D16XZDNQ7CnURrKatA9v'
    'RPrYwV_Fi+&Uhpr^GPL5}r5vicu>F_C9s0Xvn$3Y?+tL|w`V@@c;AV8|;qoZ^I2FYvZKr3n#_u};jopd6qL^-'
    'dkR_{d!$ytPNJiWG6<NKt7nd%yAZNuv%)o?HGo~`}>kfifKRQ9z6YZ!za{7yWKghmz?EoF@nEg=FB*IC>h26^_fO@WS88``NN=;Bu$#X9YY9Z2'
    'o%L@dl#0A!pG3B#3@s>eI5zAP@0){Gjk8U0^ER~>21{vwSNoGHOW;$2iI31PT9?05LdqTnHS)(kTVdN-Du3T~Xq{pmg0eIAADQmrTw*o;7(_rG'
    '<c<4G1NFf{d%5euYSvM3TLarob>BzcBp<##P+<>yis(SC&c1#Q$?!Hf+|6=x;99*M1yt~u@(}^WfW$qeZ+%#B9{?gyHUCXJO?xk215xp_U=?RP'
    'o743Q-e0$ZzAo#r{164`~$*sJ3_5eYm^Di(-'
    '6T(2bFdtnwd8iyG%xUU1&@vhh3$CMRH9((2P>t8Kn`cr?Y84f;O`3_8Jfaw$!{qL)(QJ+=hA~ENJ8}I)NCkE+Z0X$Am(zi>LM?py-nkD_V|miA'
    'pNud2ac3l$FhE4GllB0Ln5jxIPI@1@xlpiB4jjy7nhOUD<-'
    'nl~)VYADRIznG%jo^bKeT?<#z2k=GL;Q)uS<zZIs+V3bS?^<DGW6RWhrIu{KV6slb!|}@PNTkQ=1rU+=R*?8I5Q|$Y;_v1K77b?c^Dk1Z}pxU~'
    's^qn^c`w1KLcWO$rgtEZD)SOS)SqU}1*txntG4C)Sj%bpkB9vm5(y1sLD#2K~awMUU-LICm=$FjFh=1SH4B+zPl)VWAf$+lmOd^h6KNfBx6PTm'
    'C7qgrgaAeAszbfUWV9#$Pcb@EZdBbMNE0+xk!vzL0w3PkcSr)*WQl9Vm5;u0UzmJMXVR7NAAsfG51}X!FSV>HvKxR|Sn7i0>T*JKZ$LJ+Fsg9q'
    'IacKsO;HPu88JrhK0yeUV%KdYrB+`{-#Z%b(+(MPTF^NxOqZ5(Tp>r;7Jn<Xy%W!m>Qq(>pMg<mBaIQV!lC_flLK+EV-o-zJrmRQDTE&t*k43D'
    'x>XR4{!#IkU6z%3n^b`I068EB#RKv<b@JJmYF*Ub^&To^t6baD?NKBpJKSmNhuanx+H9uD53cN_!9j`$XM0@6@FfyHxC|2#6ZBI8`nlj;blySU'
    '#2VM-}@BN_Fs`YkTV3%Mjy?cI~h3j0{d~z)cGI=-x#lAC`|hhpieR?Zi$k8y>Bib!Y8bq2~jx_S~BJ?o<i5*&-=8b$y1pbqhv8@Wyg>W;-'
    'mNMa8=8Tifs0!yd~9WLwwk`JA1Elx1k3!dj@Xy&`3cfLZp$_X4(1g|{Av+WC61gjJG~A^@^B*t{T{378D)Z=4vcQ^6N^wW6ia3NYXz2yLu^A+<'
    'ra12RiSF9&|Wtb`KxJMxXh0AubP%Wr(|R(S@*j^)67uogOiVjwvUVxUtI$#kLwG3BQbpbgDo?ATi4%t;xz2CC3qj|sUR%fRTeHZ4Tf4UjIdKn>'
    'tGs9rJARpy$6`*+kCz}5;qpgs)n98XZy^(vYrKe8kD==q)5L0a1GsmM1nky=`(aG)CAiKXwateWIF<ISTF&y`4aLWxxv-'
    '{74qDWGo*UsUTO+UXX<#WuU6rys4|_({&Ds6Wj>K7f&MaZYQzMU!jXTSaBoyR0&bmGGaJR&C4rUw~1npf>VWs&<vvPL+&shO$`n1<d=GDo4v*h'
    '>QQ2UZc}!uoOo6lYj`+W^wt<Baq-qX*6^tH5z{Ugel+QOR+XhjF&Jo6PDVMVGv3<G5!x)Kb}2e9KPci<Wt*tMEz}p2*+IO_#s2<P*ylt5G~JlX'
    'D&u<2*lC~@^yw*7)<%4x7_BI6@wipE1Rmzq1YB8Rr=xvsUU}s7FW7^50yN@Q*hti;3SfD#iCG~X-$3mQBAArv-wuQCYO^lNwtAUeQdXLx)tB++'
    'ulBYs2oZ!a*w06y3RkUe@R5NG%PCVAIbw8@IfXoY%ulG#4<wG_cdmWmoJ}i$x19svE<d*-qobRTY2ato!dbucI}5e?p-'
    'B!zE&SLO^YCK{4`6x&g86^uN!83DKIOG5jNv$X3=S#k)DwRIXY;rgV0;Zfuh)=YPfLs#H(Y`Ntn0dZ7AG-omFg;73+x?<!#VG-'
    '>C%Nek+@8PrnjnFy-%Xb=h<kdHiajb`eZMo$@c?^)fYH5hU}9@~f;L{|j(0x`s#{uIfAdB%S#Ug}KrYCrx$hq3Ynb;=7INR%-'
    'rk;{$CYsK&QV@yi;w*Kt?H^KIXq-'
    '?QCD(VDcOI9;RXhvkL=EGRGmp&*{8Ekq>rct;zvDi}|>Q|rwy&$8E<3=8a+hj=_0ZQ#O2n6cRca{i&MtBjlWJ$qbmsDiRH^BC4_GR0+L203%WE'
    '_+b8K4y7dG~uZy0KlZ)t{Qhhd8r(qlJuhZsKGb!+>;Ekekm^Gdawb_6|!jV4@98S)c;-'
    'X3T(CkQ+$r3_^W_JLgrdsSjKH)#qAauA>&@;?!)#V6O`I5q~#issBMl!=D^kRhfF(3t4}c=`;Qur{U;fZ{l|^R-V=|<-'
    'Xo@vsv#yvtfm~Csk0$Jab02Cy@*^+;kK8=ZU1}YR^7mtJ2)~e6amY(z;A766w=!pyfanO#*$^84lfg`p*(ze5t$duIOycQ8r#+5;;E+E)6Myow'
    '-ZQ_f<=h%7p$=^Psy%}wNF`EUQC@J%1$96NZ%uLy6xusZvCQFwy3z`8qK_|q3Sqlj28k-{y256-KArN?;U4_x5F%p-'
    'z_67O)lJu<9(UC?tkGRq>M7m16H`8qeHcT5JYa`tW1<GkfN%SXDyYlFGZ|jbg7M9FA^TrG5&8OJQOMjOmu$Knuhcq;)C^4@(d3KPS_5(fB1)X7'
    'Xy16-'
    'Nea?HsYMR!j;GXNp8{MlzHs~rl)wHapaABdl{@Su}3Hn(BH!)0IW8@fEyvKo7LF??*F)60@uVW6DPaK@SoR2uRmQcCxU*Nqi)FSAjP02Z|8&`w'
    'tfg75z0C_8DKyJH|qksZ{+^3iIJ}N`Ok1Sf5J-*k7Bq&%$6Jr^{P`kNmC-'
    'lqnV&NT(P0yQ!q@QdV6gv_db0N>x@r(0|HbaBiqBd^1+;$u_eW^IkUe;i9#ibuUX-uG^*+vLTlf8i5pAm;uo!9R6V{*RF!i6V5^w;yu={Kg=!n'
    '!XJVJW`d=2y4|ae7qL%GAQE8#eP0@;&pEjtL7IM6ak>`DR6fJ*a0)kL=fOv#Ih4cl2{^~@m&q2AE-k$@S0GRUE(q7`fB0-UWrvCiugk{Y-'
    '(<Fz+v=hH-CNgFc$VkQ7W63BmM{@qU6I%qE8{r-'
    '8Y}S)>X?$$lWB%aUXUQF!G6Dw}wT{SQj9owmP82f`8g39h+f&B3QC$p=Xf$P%9Dor%6o>*Jj}srN;sYj{JL0r5*)Zp=&IyGREXNQyeMdgwirfx'
    'M`+~)OPS|LvYldL1rQRj;WMaTc`wJ~^0ADv0(E#uPVOyX%J&@hiS*29k@AQQQEL@*X8#Ya6J`t*0=J*c6t(Kz|HBg++&!x=UPf245$#k+amWB_'
    'ydAgp@oAxrq5zvW_OJ(`rWNHiGsNQ$IkX?D^b6hrh&-?PtGH&-'
    'qUoY&txBz{vewORDmlK~IaIvp7<?G0U!IbLmN?%2^g81v6^p!Hgik9i?{%4)l8c8T`>R#WU_cix@fs!u}0$pKGMUdhAgKfQhtMuqte4t*4bC{u'
    'Ne?)XhjYbIk1rRi1mCvv9e)Gned@;jHW#g8<RkPqWZ2!Tax8m6tjiQKKhm=bEW?Z82SZ!ZhP~z4OF!vg;pYKdz0VLk1D+Bg|4)>yuil9c|?;=i'
    '6C2`YRLWQsm6URGoCho%K(E+;BRDjhHVQfb*%GPi+z#s=dffaDlqMgriz0*GHmaSdc9hohQ$Sfo8)SJ(}+w}@9b<IWq@nQxWk`mAI4F^Zo%_?H'
    'AGI8e3>cmBIILnE{;v-'
    '`_RM(VGazW|eG<k%NH{|y$DK1!+3xJHG7(pj4E=z>Ba(C6)MBn0`^N(==lOQ@3iX;I|&S(w_N_}v{8_fun4dS89C@T^K;+>&2%3I7@ezRhCR@}'
    'fs6OfEt_`UD~jF`CemVpC*uv){J*cgus_t61eC}huX?fbx5*>uUSf|pd5j!1>hZ&X6zfL(3zCX=<V2s6sU2($s@h{P)Uuy)|*ZVj;9Ot1-'
    'e0S04>?j$i}|L*wSGmVp4MRgZpw7*%YHnTJ=$xk|WlxhN|;Hn~ZYbktG7R!gQn}QHCVSeqsMD3VMi`3qKlT6Y1VAd^(np?mG$2gMjpb5Ii3%pD'
    '2CI|wV*Myd`cX{5Ae$seIA0i4%?}%p6Gp9oI%=tm2?X0_VtWHT*fX~+f1>Oqir;=8Y-dNA^7VhYBSRMC=-EqD9F{S8%Mt;%ij_~_&M(z5b-'
    'uXCe56$%lf61sn?6g{aW8Gn=pHcU8&}#jqWvqOf*>K}>&^1<V47!=^_J*SdD6<(&HxzwTyl0AXlxh_>QrWO&8UaU^%}PlMe%3;gIEPQ-'
    '*5x56I8e6Kq}j*V0wcqgq_PM|KfG0XnnEG!hNwvTQlv%s&?+@m*)ns}`@t}qv`P|Lk<J#@5=;kuiz(QnK;23zS(NRo(BC|SlZafF)W*<wmNc9d'
    '9cRjEPH@erY9rRr7xiG45K0E#+Rya3pgW0D<h_)SmlS<ZIelF*mrsnrw~VO9IrGo!#VVoTx}UeKAAiKoZnVk$wCJ69Q{VL(j_=?1-'
    'N_dWTU89pWH2z`19QhSW@+Z66cHZz!3RsPPNV4r+J?-Nj~@YVWh7rug*D9VpN4Wz*v;II$bsHZdMAT+Z<C%S;&aOVil#X?2b7evrBZ6Ty<-'
    '>5xA5xl)>cM@&CK9m`jh}^<3v3z)8fsr$qfpsiBPDC&lf0OU%BC|j3G|4!cAt!Z^j)@+<1v2*=eGa7Y*C|h;YrR(<5^<$<)?HZiMP2ASKjXk<R'
    '6Yqf@~1kaXq<bm`K+*C=#pOgD-|XQ=*NqtR^=2lICnK<<&D&Q0Ouj&LH49D8zup?l2-47e-'
    '0$!d}k#m#!R+Z&BLt@?ncp<*QyQ89l2bUHAY3@7_)?hsyi3zA4c!Xm*GXg$#^52#G>i&+Z<C+%Ax^w-'
    'XyRX_PSe&6kV7$yK}+EyA)ObR6*JadHzN>N0fXaZc~jrBwbt~1A5IH7+Z2U1ifi-'
    '3@r44PZ?$q04>+YQ($?8x?KPM8YiCH_O?lZ8beB>v7z3TpI6%;|NkW5@^z1axh2UlV7s!b>Gvx!P|ECJWJHfH!XaZEeqU0~vGLv&<zi?Ui<zCu'
    'Ba}nJrKf4nqSM>v`yI1Yg9{i!TDn&5VcVy${X$u%&Mf)Ab^Pn>WiwrsLVu)HF$-'
    'muid2CL;wl=jQ<q`sjRxhCz*!o%ICkCXF5Get>G_oVxQlYpn0yIdgVwRdUN#zx{KoGd^v1I;D!Ry%ELBz~OFB4G*K1o?YLSDquq2?VXmb#@V>v'
    '8I8v6lTvk8uGP2aP8gCj?0t3oThE_Q5$`KZOhTV9b?BA~VGo|^0r4L1HTwO>LfqFuOsZ$(pvmLSvdds%G?>~iU(1MgOeS(k;RZ`Py9g)s+Pl6E'
    'oG^M^*zU5&U**LuOe#e<f{hv1?%4PZoJm-'
    '!maXbu*{bcrzlUWD{_MsFN_pyGH5G9#E6z!@UGalvyF!^^y7T&&o_P*&`tT}wLEYkTP0A3#<fu=lQHW?h)GRP<LN+=H*=TfAdvFs8;QCpafUeB'
    'Z>Q(|o%u;N_jUAdb9n!Ps?rixp`&v5f;l}4hz0)aMGog@=Ij&`E?<fHndL&647!9x;;fMQoXS$b0QHCC)1dLe5LlpQEoO;WUCAUVM=~Lx1*f6c'
    '1q0;+ye|$2if6$<nK&ihDRZq+W8c9E4V0T`gaeE5uX0QJdy*bZLf7V>?dISq9(jdVew7xL8^GGgyL@NpSp5UO$<6KIgl1|^9M4MA*S4SPgBvx8'
    'Zud_<zJs%3+@EC{U$P(lHS?&}jvOBToJJ!$v_ML*-'
    'fo1Wia!E&!K3XAo8b4gQOKarYQwPuKmmvi*1PIV0Isi%>$`=&t!#+%p(V%`}6xI(DK+?v>X0m5DMOnS*0W;Z)Wl$mMBjL2Q;WT(O5o*6jD%7-'
    'ONK0V_71?(_C4du1>*a5j!cy7NN1T6gCfR_X7_wQ2sv+fkBt@~EytAQA7_kzSKSk9(r`^8hZrE@`!i!*Vp#qKFM!k#g6<x8@fBO55{=TQbZ{2B'
    'lL%(hucXks>isp+I3KNX^h&#BGzc{|<OiQeo^@7!ee|N<g;jvKJ`m3Z@asWTb`7~m#O<E2Na>8oRoUHtnRrxDaAspbR?lh&jTI1kV4@&aDF#WZ'
    '3_2~{6^RE~}uyjv(m7ph+t<RvfKWA8f0@Oq&q2w0z6u5O)&yw<R@R5jzfk7-'
    '=cL3z5Y~8be1Oee^L{xbKp8Af%Nob0XYhZ$L$GOH?wq7h%e#jYo;Zb}8LLc3v;;k%(>sub-gQNRa6K|Rqw5rlFE{a=+Db=2}r18l#v3J~;0PjN'
    'bsX4|p4Ip4Z%Y**imqpJwPiyv_9ss}Vq349Tje=t{z~aC0;2dcNXIF7Xe!{W&0C0eAN8f8~5I!H9qk>~|;@h_rBAEhFOQRr@b#tY%0OGXy6*Y}'
    'r=&lz5GoYE7g1`2kh%D3)qYDRq#M~1luiZ|sellj=YV>}FU!794>;Pi?H(ShuE$adQ{qJYLSijbP|68|hqhFTeUV<93mFy{c;lIRp!j6n~b9$#'
    '_13$E_s-'
    '~^#cWSGqX{%PCEz^c!BiizcPC+EMU+cw!{V20E*K^8wENK)`s~~Qq&9XDGA6^eZX}wwlbPgy^o>jI$OFQX(K>lovMy+x8@?uNA7a*Fmp7S{h1;'
    '^c9oEtS3gBp$xMEANLWxtyf@2B31S&%$RHe)dAMF|IWJ5t&@?C7g?V$y=L@E1`CPCcJxD`b7CN}Y-'
    'OQBA1(S%5LCLKGE?0j+6));6_Vev|GP02l32k)e-r0&l{95AN`jceW^ZQ!oF`+yAq8n<s4jRfb&|ol_gPBBm(`{jW6eN*^9S+zPm-'
    '9AtK&Qtym@{bA-Op#Q>yEcM{=Lo5M%(iKV>u3`(6hMJFCoHiaFqX%DBE0M|d6euTv<)N#;=`CNeYuNsY6XKm?!}cA81){^>x#!CtY~0!vDt6{}'
    '?X7mBmg>_sEc;dcoZh6RMnAJNGzv4cL5D`(sT)45SL~7!S@Iip5Yzoa7ur+SIyEDAy23XIw!T~cv*S?Z+D;S6Xj*bmpZdM`E%fQaz*OT-'
    't9v#&M^C)ZMea^y$Ja`nk|(0;(dmM)$K2($hll>b_PeXO8`5PXjj^UHKXu`40F#_->v!+aOCYCQwP3kg!E(EzT+%yN7kWYvUiCp7-'
    'nh$q3*WQDvR>oQ7N$28$-Ab`)SXa@F#N)8?;UG|cL8l=mq3OVdh5vz-ny~@=-'
    '$<8#h7B7QBqX5oMq_WmoY!rdEdIS{ovKiSxz1Q)n!|TMvRIVWbydLx^lzqYtP??e=Qg$x_~~VoLRxjcLA!6+xp~IN_PoWPfHg!tkK~zN{xm04_'
    'U%2Jo203)Br0!B9odg>xWG5$03+S9~BOJ{@nT@&tEc8J{s!)hXeyz45?r3DdX}%8@CCN$xZ4=zTncZw&*X(gKT~)Tl<x*qA`ACEIKeAb9UwWkp'
    'koirNR%XXyi{U752pJEaep3X9c%V{N+MDC@32aO|l{CeQhg`duZIu^zO8NYIU|EOg2yu7+~~x#UI%W5XXTjcCnp<%)ZYahm62OH3>jf9M}?y!~'
    '4aRH&@EnS1XWJi5jU$Gnq<}hLsd>FcF{U@>ZdB`;5eD*PVL4y?l}hxZw((TzsE+iX9c5Vy`!uV%5Uyc~v*b3M{_Hq2iN`Kj3w)a{kRMS%}ATu_'
    '$-oG-S&!bNdh2Z8sKPGzMH`ihk!kagLdM5lwe{HNLf~t<gT|4eH(T1xD$}_<l+We}#-'
    '#U{u3WObzr%VRb3u6o<2=ztMZFxac!lrxO#vsDe5#`Gyxd9SPVVUfAe3K93H6`0Lnw%RT>jY_nB;v(=)_ZY(iLN+SYHNSCczzSunaoOOu@BP+H'
    'ZJ_e_tr~W3Rpfvp3i~~dA2}Yub_8=ky{SVS5tF@vlU3GV(rEah2Qn&vE`s8^(GaN!WH<Zpsy5`=AJ9EPT8qMa3#0F0Mh#5uem~c8^dpDssTwlq'
    'GkaJ6}h^UV7WoqFpCZJD7U&@vYByj)kc-Qe)G4EnPARo5hvW6&($sJkA;f)=Vy?V2<uAxg0QZcD>m2%uzAsqn&Hc>Dpekahr!=FWz0d(&HqFsA'
    'ypA7`&CZ_rrd%aqzRANUvq<oKZ(HGM4fv*t@RmG=#7edFETKx}e&w3LFv0^Q;poGoy`d~cl)Q9KC@;8c0*y;@>)gy+trInO1uSIO7p!+<3exom'
    'z&QIohn-'
    'b7;Ax@w`IRE_wZ>~H&P~>TD@xzV8?@>|l`}zsQFO6X7NoA}8`FjY6|DU~gTW%vs76jk*6{&7JI)Dmd5s*q%EtaYc1OXB)5WoPSSS%ebED0pZEP'
    '<IgnSe-iHP^;$&Gv0y*5(J+=Hb}v>)L!l{mFdEy2m9mA~GT`07$9&sI0q6LdM0z!^6Yf!!LzYe>QnhzL0GU7|!hQx}X{0@p#AUbAyZBgR_p;=Q'
    '%HtDCJ^d*0BYqk(LN@ivmebJgj@4K8$kBM!uf60-'
    'C*E2`E3r<a+=$wb&u71mtACg`@s>A8ymbL9@xqoryoUPCA{US{0f1FmN1C(y7SL52sQkX02*x&8<(VS|&rtS+mpWovwwFGY2!!JUULKX}5<I9$'
    '~%?NCWOB@`z}N=iD9+SOh_Q2wBY21VEY|_4%*y@ymWeta1HX38o_v&N}TNxsL2fc5}4BapHx=fz<25wYxRAsDviMRufX?37Y|zN)B`<bNtdrQV'
    '<mEAjB8P3&*lO%bt<ID3YA=5|CgDdo*EW_ipzf4+>y;;@a};Q}!yY7uwA%27c{9z|SRcCzl|*;Uog=G%Ju}?6PnD11FpW?i{D%g?K_DXSENCYE'
    '6@b7UV6WFqo2FH-Xu4T8yEx{>AzM6_d1frz}M5`?B?|B?Q*sOi^%6`cxx-o@b^bI$Cn7t=P`QWv8fE0?4$L6lx=71-'
    'pM@(zjCmcr*YL=bdhEa9r<XL!Sw_J`5GTdj!g(l0E&*sZS%kM|4P&;>SUln9Nb6M3USQu)w5Bora#LN)!&0)M=&3$;|P$=QKa3FmJJ>ba86(l+'
    's8vBQL?yR16`dTSyBYYGYmb9)FNtL4|%glt~%dq_s!=%Gv2no^VH!?1EHry{D)XU#*ZhRW1yrRyzyqTLK1|Y;^71IF0MTzi~?02~aXKLLIqN$2'
    'ho<?w5i5R0LT^iCme9w>0TMBV<y-VGerZ)1&%meA*rz;riuV)e<3y84wQq(`$Qy`Kv)~JPxl?vmoe_VjCc6^-'
    'x`C4&GqHTs^RaM`55zosI25jm2V$BhGebo53(>4oAH~698#9jz|W!H>RfhK;NTrzprhZ3h?Q*OB3jA1}o1hchu_~w7Z96px&GS$TgmN-iCls1l'
    '0TePP^W1<OQOKnXCvZ>ht-`#cTux!AR(T>10A%Q?5~LqWdS3%`_jw%U_N;t>$<<mv*Xgy?cNL%T{}Eyr(ah{FD}>JPG59dqkEj7oV&*7&mZ-'
    'J3`8oI7V1W?X37Sq|VXpjhRP~wrD6^7;wW9832!YV;L^|8@!`IGT^#*yzfjX;Q7(2FU52gxoZ7{G+0O@_)NvO=M>pZ21k_Hq=|N;q)cj+%lHms'
    'f<?>s7no%X9a_=#=DB#m7nWkAoXQ3Qky58Cw%0jAh9xqDU5|5LM1S&@H}x5o1_K3(CNz3du=Zu|WMs${oj>Q^Z^l~8bCxzdhdmf2ovgl?m;WiN'
    ';*-&oCq9)Ah={LmzL8&QBwYTax}_)5Xy2zM(~c`JM*$~l))dS_q-?*;Gg-Sh?cOp7{osIW%+c@Ud<Mh0JpsCpehvKFBd!xxU++cFIv4|S18o=d'
    '42E&GQYGO&m&`<H6~i)(>S01NrK;f@Rlq}&I?cBt{kHJua$+bfYjcTmr^V=X=7tMQYDLpNSwFn^3-'
    'L}zr?A^=$FpoaF2DZ|JTD(HTdX)(h;HWg%<_2}#c%1*D8Pq1fROneVkpG%Js+m=ojaV4xYjSO9dWD+e*x^!`qP0A^V+n{&d$!CK=~t_gBIYy4}'
    'L%(4jtke!0>GO-fSg#;$H(3ASF_lB=6PC_pZodi6yF9W1z`i?&-N#QA^NVd`Qx4mw$Q-TEF4mlt`r}Uvmj!k(0a%H+O7-'
    '$N=TJFk#Zd0Ca(1`~_`6jBN5F!n8ubdffvtAh7H!;O`-I*#PmbBX27$q}2a-'
    '?EUpm?D*}d10kKx1Lu?LFM)jgDHdaLrWPxdY?T)LR+w8PHz!ac(g&uJCc~@a%}JhgBzj5?A=ab`Ep#gpM*1EDJK(qZGK4FL)*&PKREHy{h9s_r'
    'u?U?neBZhTOj>X!!|3j8MuIM26y)xN`i_n%0m_S|TalqS?FdlvErUPQ6cGj>!>Z#1a2)p%FLO8=FTx2v=uj*nJlNnbFGv`QaG-'
    'V)@(>R4qspZP0x|_y3Z0ErKj;v<S~4H<7d?&uLWN=J86_9uVORZ21;-#Me4b?G5#i=6l9%PK*8EFa-rXeIm6b^r%>%oJ`r;v}&;HSo0X9E?Ndr'
    'fEt!8jq0SYc16&X3lmbK4#TvRXzpgOG$bOY}GPVZ1Rb^}C(nSVv^<Fy9=<?OINIA}Ib_M5s1epy}FpmQ~r7f$X;#3ar#hCtmN>M#TsSnkmo*<w'
    'vYpc3G-v8}?U><~^HtkSsyUIOd_&t8b<^44BqX)gRb%ENpVGp`h`>>bwniNG%bq?zT0;nE?=9O1(Kb;+1;_4O|BD9#0@SI!&Dy}5CwE-VT_vN3'
    'sn%s26BUtXZq6$hG-'
    'w8ofl(rjq?mamz$4x{TmzS{Xk&Nw~>u93wFQ&D^&=cVCk3}8Ay<w<n4JIY{0fFV){34}xMmdVTy$qN%<fdTT2TU68WCYUZKPAHB>w#Euqa76&1'
    'A<pS~FR-@B8=U;w3SGE?E=byHypFtu>j9QwX73iL(YjbJ#NpV2X?vDclRblJ_APLLBRj-55}<{C3%-|ZzbB}OR`6%fnxnc$al_D7-'
    'v=U&wk^Yy6^UMy0&6euUV%SfI-'
    'm$$*>lULMio9DxpXg9S{ZbwX#J^HyV*I=S!q+#aYY>j8JWZ@sQelAm6Rr&LKA7QQBG#a97*CbBh*Ob%9OYSsV*K+zTCCDBHZq}i|mCAiM~lqmE'
    'd9k5*N4xTs663LD+aJp(ef}fi?!{M&%J=iX=5gNuIMHVg^RR(h`>!C`!Jd>H(+RTNKfsM6s@bQ*VJWxHcYOXLbpa325|iIN`$--`^-'
    'xxO4&YoHYboc8sKsRMGW`6mcq0%hR`78rQWK(esT$B<Q#I7i}lj0QTaCWE#ID)~i3L+b&%;sZTG&wO242(hofHDvuc|V|bHoiY6~Ko<MTjChQ;'
    '?b1~{v)N)pJ7CJTL5Bn>83M@&+DsGmNRCqc9HjbUfq+a-!`e-y56L+z}c-XHuF!__gW|Phww04}>(S9M-t$|-'
    'I`FmzaY>e6sp|?Z$!97Q^BW#v%ScYfr->LG2;v>mYJI2Pdn!leM68uGu8UAg|er->)rg@Q^MJb)4n>3`G-'
    'J8>K(&sqep;*mh=zLX@`C|t8%Nh3tqLGz)nKI>%BpYp{p;KpRseweS@+U>zQ6IlW+Br|{i3lnuUMFQ^gvPDs*hZ5TT^{JXSUAH8xyVK=D`dZ9^'
    '9mM5L5y}u#(^9h#)MXBIcRu}uvp1BgfS;DrkvqWw!IUO*8-'
    'Y%H}IUGREQ?@|71d^cw6Ky#g><os=f|*68MY1%#5Nka(QkGW|T4A3dDn)BrDnhF}=P&oIB3+WKL$6OkF7lv?fd<GHHaBI4M&LK6WR=A2{%Ltl_'
    'fD@{u=so!(%4P#?S-'
    '9}eng(yymSAU;aJbcoA5HcaslNtBWkpBiW_nE0FEEJ1#h1;7|*lt$%ZWn?Jge|$2>lD8qd*rlh9A_75}987sad`Kx_O=_inAsJ{OuTF9<`HXoO'
    'P<r>1XW5<2b$p{Y33kABuK!_FW|L)%ruUcNa^niGP4N>G6Hm3y9s&sDW=_CC=cSWoF~kg=M^uXFZ{*c9{6IlH-'
    '!o>1&n+*dK_W;LNk}3f;Iko;Clgf}TPE&PoGL#PXUyhFLuf{R#|;;00#ilrY9(GBM4B3&93R&QXIw%>bNqB_2~RS3M+-'
    'J2tsIMS9V8SVg)*(!Dktp+#YvFjfPbEJM@k0&r2l~Utaw92If71L87@ddaf}HJStTh2bRy=j%CqBdi7R-'
    'E2*%O^36XU#F{9#gAsfc;6?5T`zWw<`oV7~$f`!;YecAa}@-_k73@+tb^aNLaV#HweyihpM)@hHXjg3i<8?U3~dCo00Z-'
    'IPy<1RK`it;*552m>y=eE}yS(D-wqiKh{{@mE^j4eBi3puyFeS5K(Ieqt|ldQ!?+yY^MHnGm99FX{#9_bM6Uh4DvwwH>}2x-'
    'dMw&x>jl4Rg*&p_ROs;ZzR2EMQkXvat^GLC+-baHH|yy<JqqK3kxij7n$P3lGUBS8@v`2I~PD$<%f1!;!>|B0csVljfA-jqGo_9DK=Ncjx?*4&'
    '>jXCzl1nv65<){JVNF-k!2->;8GVpb9f9K*Kp^G1>g?d6`0If@<CJFPbf|5-'
    'j2<_c}%<0;Ca%TU~DCK%{$Kk*r=>n{My?v)D~dyf5~H~YBP?VM%%H13ianz=`Bc1O)Y_OMklEc3dwLY9;|51HT$gR>0h#Jn4HP(N$b2PR_3F4A'
    'oMRf|^ZP5d)D&*rC?lP>ys4SK!f@t}Fw9*)G<TrEa;v$f_RrPDGdAZ_xG9+zax7&mTMU~uA!+&>%CkJ|_Ftu@SALj7G6+l@!P;ZQpp_hur323m'
    'Bl?N6A|l946~9h@<h+#P2J1*?_i+_?+s?Q=PYhEbO?A3DJodT>gHBjaZ|qCnF^Q!rT93af+<nxuAib6{-'
    'M?zRu>$4z|zshL@uT^^WHF5YFTgC(^?Xguwdvh~T^5`#rVAIlF3e#sOxj0kr@3St+jE|HuNqQ8OaUOg9{Eb<mEG!Sx%{+-'
    'Y#MJ!aT1R5$v83Zq}WRfa%GjvZ_hSXL{z>hibBg;a7`^6swv}pt)IaT%qCH(-+<dDnCiLA*z20ruRR9Od)m_*5)JcZz*bm=e)?SLjEqG%@jd>-'
    'O7w@3fujR)cgi=)T@m_sX#BUr7A_;B-ou13H>!Vi><obO<{QnU-hU&kl&De#;l5FZi6G#~Ju&ShBeu2pm9OHRd#0f<a83RXFJ8`7=5DQl<l0%d'
    '8i7@JySckf!Qy(c*^a0ELzi>IUfY`$C=ELx;b57Z^{03M$gbnu}eWEfkPTp3(4J<lN(UYW~`8(NM>{3*G^;Dq$&4wKddZLMfhqMpO=fiFfLKh&'
    'j#_?d7JzLi~eXtr&ZvKll7RGcS3D%i;ltgFjA!M{X{#c#ebB%35Zr0*<Syq+EgWSo&tP#8rM5EL>S=L~+*;&6zVn+N`a2_P=|Reyqm=e)reJ;9'
    '??K?lcbNYSc6<iekS%N&aq7!Ww+`w=+H5WTgTC)Bl#q21_m0jT{LZidBN{7Q%!;x9fK<QyTDk+N<VOoXpLl~1qOt3=D5IwTeYWWi_8EbIpCV-'
    '8y|rV%2iw!3KgLC5tz4xGuS60t1Bwc`cT_Ybgr(MjW;LeCLz7&DT@W{#J3!3_N4TkEB)nv>aJXzViX2mS;wO_tpCPXl{i5B#M!9TR_=Qkp@AkH'
    'dzDFc)`?RnmwdkxAjUq)+U9KNP3n`Y##T7(7ZurEYJ8HL{Q>hD{}ERHs#vPW$8jpg9~i59IcExeuFg1GCB|YVr0p1i#w3rYw8f(?Z5BzObq}oF'
    '<5zKoHxw7)Q43m<wfA9WUVdkON?PB=ythiB5bJ#1mTk!f;DrDu6yiiGT>+;qvCj4pvE?W*~hXaH!EX;36e;9o|}v{Tgz*Tc&`q8HU7NZZEzX$s'
    'HC4pPMekw9%xO*8+Z^kwH)8xK!GsG4DRL-jVoPkrf$%;l>=A?!MP}M~S6kW$FmYpwAcRSAt9DqCnKC1y`;#Z<czL58f!Q@^N5QHkrzc<Z*&nH)'
    '$Wzom`nTNBUzBD9%YC;WKZSWRv4dM4Ux{g^4fSD@fYytfnd{<R3bwlk`3!5eej=k`hCl9`X76ONa;ZV)8Kccgz`Ai$;b~4-0xF?*!|w`ta{oZ-'
    '5<=?cZqIGhs;*FE2<+G?K;z{tGfP`rS<>U#7%<p~%>=!^L~oxpk&Q^qo3)v@v>}#dNLVqPmTH*KGF3qQAVZQ38*;MhLa;_h?77olMev1{fkUNG'
    'BmPACpMuGw+OMA2e8}I8I5gQb|`>D+N#($reOt*Q%)lCnO&F?1?^HICB>6OT76>SUjkq7`=i4K(y3U1;bn{!Al_?fQ1{upmFI54W3z0dE!frs-'
    'Pq)WN3eK_EB?v*<S=Ne&SP*J;7!|BnRpmzz2lT`l~2pj;tv1v@u*(8ZM(S8R1=YBQx{b?q#`^aPn|4LaJ&GxG}Eoxi|bi!zas<Mxdyc4acHJ5+'
    'f)-Zb!e5#dWq_+kZv4o~PQR`&<b&P{v04wGpMn!gSV2NIp7id`b`xZ_P2d8`;+R(^7OEPr7&-i(AzNXPRPG?(IWA9yCWMgYM=}1KO&s2A;SP-'
    '}{XF{YT#Ihumw;zT8j|7DJBQAY6243Y5|o?z}%1k{)}Hw@IJ(F@w(cGF|+=Rhc`-'
    '^U+#QM_KnVY{O@~l0VzsYY+y6l*mH84dIb5{rsAwsC*ZFvcQK)$Sq8s+WVr&%P|LpRjk)lU|46ke&B%e7DNL+S?3`-<y>$DQ-'
    '0bTk!ZoJlR^7#?{Iv16#pa-NsBkqpxLN*I?V%ycMWwGpviUUh3<(nMXS?nX5hV_iC#{;aGSjJ3niDLY|O;MijW-'
    '>gdUu_SjNqW8$BLj{dwwKx}IY#P<OAAMBc)it@0Vu2E?DM>SvnOoPVyVpIM?X_W7mqxhBv3O8qR){hj(*p8K`>S)TiQ6*N}xg?;`(?Ja-'
    ')i`siQbEnRM8!)t}XsapT6L{OVLrRdWfr`1B+Cab^$=ed&+w?miPYyvNR=OecrpC008g7y0cfd^O{J@5=!TKbXg1s%%e9&?|H@qI*`o~-'
    'bm!CY1`VPjzc<#crXPDB4`VOFfF10ISIExh`+AW*dr^NJX@d|e3kiLD4G1suf9o|F8Z5JOGB5$gtfy6nYsz9T5r+HlOlRDXDbu5~aqv%khUOzF'
    '?DJxZwcdXO)!RRP4N|Z-1?=VMA3}{Y_6V+1MRlmekoqv-3I@}BU`1qxGdgjgaLz4U?=0|1c^-'
    'HuHYd<wx#!uDn_m$umg(tkVUR3uqdF#Zj!a{5X2T5-&G>*|&%|-1sBe~b|kb5;Bxz}=#do>ri*K(12HG|x1`N+MRMea2txz}=&d-'
    'Xxcy=Er&nwi{d`N+MNi`;AJ<X$U8?lnER)B8|De@OW&^?jt3rZ8p!y+Wm9_?(|gMhib;POGvqPAz4enmkU;Fb;86_UQn`SKx}L5x{aHNnk6&ZB'
    'vPFi;BqZD-zc(G+9kISxuO%7Ee|aC#xkVOJ+t8xp>}|Rk3Bx_cNe&A>DX^H>rH>YjOuddm<<8c@C-'
    '>Nq?;r$(#(rg)*ErMCKv*P!S&*5Ok=wY)Jjj`MW5>WnJ4;%ppG2E6eBot#2*j2m@je`MVrsGYVGdz7{VRWj`!}4F6%3c`!%I3`hXm(Z6}l?a$G'
    'l2pNc8S$8B$8B+g`Nk3oFah^8*>8<s$W@;w1`!Q(<i@*Xj-oaTDIRybyKKv21@bfLJx^$NzTZ&WcCP%-'
    'MS#i8{WmW3*FKgBdv2%j2C17Q^$PO_;VC&wLmC=j#mFC+aEuIHJX2W1YcbRSWO4{={zc>B!)C~mJnJ}3AOzK+Gf1e8QAr=xebr)56dPciGqkW%'
    '6<df6|X0wPr(WPJ=rZMxq*hP-D%RyMhQ1CiZ$`zS}2sR4VloKwIfg%{dM3b-'
    '~NHJo`aJz}>Rz`q<r+hEfG`QF8tH@?(a7vg_YaKVwCvr&Szrs3xh^k!8{g2LtJ)6-'
    'F$eQkI);DiiKR8!E#7PG*H0A{fr3&dVB&>oaAFyXT)+su5_@IpXlr=4G{WzgJvMA3d5nNGnRX2*WX;0CwW7r?Gv05sL^~RzNcc{umKntJG;ero'
    '><$MvPR$Y35L*v0IaF}%){yklyp@eZt;InavLR{!ego0##h^7&&ND0h|-O{i&1buX6VGXX2GZN{-5f&xsow*-'
    'r*u`~(U>A<;4$ZIaq92Ty@s(s#rAjTEFT}VQk^mOhN^`)%#rlb+#*OB_Z~&C41_L32xCRQOemWfJXTs>Ub!QX%8nK@2i%ygoaB3zb0rzSB)D%C'
    'eIKYPFQbBQJON2p1wUbSpCid_w+on-blt$sXMiH;KHD!&@Srg{WLgZs$P;+r+Na1jih{lb4Lir{bH-TuD-'
    '8qOg3B(LhUb8`wPQ{C?qy=5>8iL(YB;9olk(f^zMg_iy<MsW}rO^|SQ8J&1o^^7i#*#q`ID)*NLYtb>rY5)10#0m^MiNWuSdBXBHa@<O_DPO$L'
    '_SSoK=g)4V~Bk!P0;;h)xIO;Nen>Xcj9V7RdDiGMZ!~#;&WNgS5ATQmD;em<3`C4an7s3;@f}H_`F6RF^;&uT$s}SWtxsR8m6Wl=RcJlVLeo@G'
    'mswH#q@YDp~mOoiQd{Q@gX=~D&LT;3x=zf`yHzGI*ohF7k0F=F1bi$h2`sn1#Od>u}Q8+FxZL)FABkUu*rat=c3AcS;>3L&D#lwp~Mr!uBLk}y'
    '?ZU$J(*3DTmy>miB_qQiR=AEP^ES%;g_0d$Y4K57F?-'
    'oEMDBv1~Awv`V;%D7X8L6B1mH>W3q}3(ogsjBf&x2@Hz3EbG1Yo8k7;*a+Te3C5>528?z=2n$~nxQ?w>^C{y2B1iEqPl&-6cS!-'
    '$2W`Mj(>zumY8eK2nwe*&_yj8B2WHomYfu#;wi$|^P=?_aJGwI4y>MTeO6{8J4L~so7KQ&_mPS8(;GV=}-'
    'aC2y;drH4*zJ45HgfO?uD6S*Baimj3i;LcUu%M2Asbp^~>+?Rv-uS65NaZJM`Fqy(GQt3A4>dDmZz6ICoy5Oa*-'
    'y3jryBc7<bLF;jDF+tijLtw6Ui!R%&b_?MEXfKC@{8QK}rlOd@C@bY+gzXDt{IPv4Qi#`DD+QXx>EgUSv<?mPTfqWp%ck*ak~P$MDvk^U6?G*S'
    'U>4xZbq`f1>GkmO+3Oa-i1>v_)FLi$s$nFL32b#kZ(sauEPzS1VS}$pNAvS$)vBNi4oBO^gu#j2`&Zlt>Jfbj>BoV?>-'
    'W<mTyFt4OTF+%q;P7Mf7*mYj{F<oEvzum{MUI%Mr{@R=ZR?Eo_qTXTHTutQ?YCV!X%p71b5`?G&?Xtmluzp?&(X@hiX*>lH(b|=Ty)Q9FDZ$c|'
    '{u9ksK4eKOmycb~FB{`2(RQU+zwtQ|P_xw+!s3{2aQ`+t=eOvrr|L6Y=JN|apD$PN)|NTFH|L;DoVBySc=!8Wz$`Odi0FO=GtD=U?<q8C9+j7F'
    'i@Bfblm(eGi%;kqnivXgqfh5VO(P%?|wj{&60cx6k0z}=_zJ=Qj){Yd+0EfXF^@BQn{Ior!-'
    'l<K3M{jKS10M{dMuXq~0|sF)4{`sw52X9Q{_B6U*aw?bBJr-_d^k6AeAbAL&5ovq*IjMAD@qGSUJ;8Oyz44|*Ok&0X07VGR&&gnx9dtQ?`0w=C'
    'HHAnn}kn$m<o(q%N#X6Yf&n2y5W>+=)v;ITN0*q29`#MC!%*f2@qP7L#m`r%JpI-2OAl-JMoD0mXOw7@xD|7l=|KqmQdZ=5~{`}RQHPa<x8k)b'
    'K2nM5(QcC@+AJ9z%!Sm{Nm8RTwM5A2Un7QHEMM-!^kF{>Y1)7Vupvjekr@<loSF6p|6nt%HyS5`|}b`-'
    'lbr5lz+iWgwhYhC@B9#O@q>JwZup@b);Hyq?%?VX3db>X?}~$8gk3%SABFw!}cc5teQKk&F6`@h!mA}sFX7#*(l0N6-'
    '`5;6oFile%c2ZX$A7n#nL6&KdFy^lwJ_!M06l{zdy6Rk2@BY145@ptle4>$MT$8EF~LdbY%UnF7HTr){DS(E}_8%aC=JTq{4Q<N_NBTKAVcevF'
    'sx+<ot*gR=<_Q3Xr{EC0?=A_RJ2icXDLk%w;^zmj`k$kvUPRr<OA-7Rzg1E|#rVNNiKn#ov9N1dh=`LownDKV@4BI~L-d3x-'
    'D*j}sO;KX!~TmOI~iIxsT-zI}!CGV*bXHS>NY2TEkAYfwF!WvE&K^Khpf<XJ8W$j76}a(s7sjXL3>vIutQBTu*@z~DyU8IGEg4XarFUgKSJ#Of'
    'i@{A>seCRs+%bVrpAD*(mkVBqZ64-q0hgJwt#Lc|uye0{^YGjZ+NdpjT}m0G}*gxqp*#0N=+gp+NM04Z+)Gqyr820hCZX~<(P-'
    'c!6F#x>2KP4pI19#{%No}}lGfop0I<J1xM;kuqLvJfpRF|dB5FjDd;8Cf6{G)j_M*|c=Zz}Xqrbd=q_$;kl_=z&L5diI`bfKhU~!^t^C6$oLcY'
    '(#NvNTNX6_mmVDkFm4jsn5Tm`p0mIgCzLAQnA65in**W8j#$Ggd51A{V6g?@Jlg!hpFX_*Pj$tT9j1Wm{})jlg?7j=ZauXWp8jo(4Efw$*)z6G'
    'juX;#ghFKNSIkXFKShGmPr4f=8i$;BI_YlP_x$`x79Db9fKp(j;#|Em{WV3Yq*w+B;{8i%*@N5(oN%7!g6jKvVjx#nVv@lak-wHPy`AlsPK`9o'
    '&QNOE-P}mu5SfCW}o+YyhHSSfWKYXSJJgtpHBJcNs?hz9r1jct^uKco;!d(OhJ#<ayA3~elfB?IwI3hfmo-'
    '|1qC>F^@_Cke$z!lOlVuYO}BnGrmQ!4W#(LP-'
    'n(<_i{XkIIU&wey=ZiVm&yM&DrsV_gJw#UpOPdW5PS)jJu|XAQ7XB0{U=+ZVX2ywj`5`s#x~h{PHi&@O}vy;g;Sr)T`w!D*^RL#=(?&0tH4QZ1'
    '%A^GSB-'
    '0X!E)h7pf~HovvC7W1hhsNbgF1_R8@)R0K)SD|8>4|>jzW8l4nf8i;INAip#8MCha!|Lj<@z?1Rusm7DzeeTBibzA&3q6U$qjDstr`)?sIA-BO'
    '@peyl3Z11DV07Rpujn?Ot-302?%ktXCyl*3Gz<a(wm|B`QT-5o1L(Z-'
    'i)QfPfJjU=`!ZbiF?tvSWgI`MvJ^!>+BuLRYEZ!halu8r)~(5JI5NN}?i8m^b#6eJc4ZlP=A48$4~hF7+e<gXb3t*<p`?H6yg_KS^mHr-'
    '{b(cluHxm&rzRmpCPikz<fmNSB_e`U&UGzyS}E#+_vG$+7Fd+<oFr<hqd-o(cZ=C!ow5+|GlF7enR5(xoxzxVU_pgC-ekLvH6xv-GbNwno=3Il'
    'M^>yFli;$9YP%)(rjki)J2T&sGRx}Sw^>M!mUiEHd|%aNPk_Xwtl*Qs7T$12cTyK%mBc3Z3TxK5QvRX^cMMPwvc01o6;W$NgPwQWPN#CqE!-'
    '~T8B!v@C>>XkvzP30u>==Yf+m$mHIRQ+9IJbZo_em!{lBEEDLDX&+5fFrf0&|#2-'
    'Qw!6syWY`t;NRA7?Nxj8qnff@q;$U6OiOX1@t0>RPJo!xR;=&0W$AHaOS7Kjaxj!_P$aPjB2{`wmPJXjfZQ+c#optX=^o8MC$8;_(M^QQDdOs)'
    '8+0D~i6T*KTitn7VSWQ5Fbnj=;`X1!LyOr_^Ll6{n-'
    '}oV5;{M&ht|Ncr`z_>!ZGo<Ai1pPnk9}PnRxL7`SF?7NWFo{{5+*FCeF&O*<3KmYpfRfZd8iyk6c}j+qNH+cRWn}v`7#j^25;aru6Bi-'
    '^iP|UF^feQ>_bw+UyJTVNgNL>%^e#_n=-'
    '3Fe923`VBdip!~*C_om21GFb&dD>8{xFT8Zh!D#^x3raZ!eFO471E;)(r$g6oAbc189U5C6*mdD?gy8JmV85JVwo0ethl?UQX9pJ=4<e|YxkPA'
    'P_b>0f>!8ee<c(c3y#lw#1W??dZ|N*NMD-}#+_%@@!^EFW(Z&>SPx4TzZ@!s~Xs;m0!3jtmYcxH54z^R&iu+}FSN-AjbR~GLw(X)q|5O^^p%V+'
    '%tP{%9C36Ol=%w;$(U;1Ek8P?_$#l^aJ5>(dG78i(8h_U)(71{5u2ytC_0FJKKR6p7^*RUb?%|kv3&l%%Y@M0Nv)U-'
    '+2RIij1vYa8_Sk_fDR;|nMV!*irFaAu%QAn^1R<6a1b)EpQH!dpm>pzgC1FcSA?qCJ2Y4u0-|*E$KsBNZ`s&@$IIJLyN-'
    'Mdaz4n>_6_a!L53rKJbwVx&V!&?6B~h-HYyBuK$8x{<M(5*m#j_puFk^M(KlH&pPc0{$a#>QRL-VMbAo_2ts#$6<SXW)>C0kfq?ZI%gro#q#NW'
    '>MFL~Osn8X*Zk4$S>ai3zCB_b%Pwrj#M|<O{ydEz7GxxMF897Fn%e3($UYf<+rO*8^wb-q<sG_`1R=#H>3p4l34gG#EE}-'
    'S+_KL6g)C0v_Hz?8Zne@@NB^iyt_nYum%AP?Akl7;J%ZeiD_k|2*X!b$cut{5DM*L8)Na{-'
    'v2e2}L!<DA)Co7p(GgwTkuYmn#2#Mt)b)@+M=51p(k!0Kna|egyy$%maSrVB}$szY_Ln`iP*M=i{@#D!C366+`6<g&(u(`<>?aWkFu6ZkGmI#W'
    'yWkC3(Adhk0gzSXkWsBd2lE%d!jLt+^%Htalue-'
    'R{Z_F>@Vil(>H=K8^zN2x9H~b}+SE&pPoi{m8)gZ%ofpbQHb0C`2z^C#<b)!x{FQjdpW5?hVGx!^85PI`XCimt(FO9{WHBUJF?D<#N{aNLF={T'
    'yf3ED!5VyUAXZ^&DKe0-'
    '0YI90i+7NWIqGVpCb`wY54)$1F{9B=RDQr;Bt8gI$Q%&XD!?dcjhiu2$J=@4DcQK;exdwaDpDkaUcDuVq9a=I@hRoN8>^BussBbNg|SN@AS>u&'
    'Qxen+IMha&a~^_rZ^lXCf?4Zxn~3_TW`kZ)m5%la{t9Vwy8`NF`1wyP2Bp7W*>sC`W#ckX}8N>hR%t%aA*Ahc<Pr??VD_5^($j5z}U!?FKcMD#'
    '6WbGmxJ6Pc!dy*vR!O%!rQLk?+Bvj1c^=}=evrg?omU?kh8-'
    '0%fR{fr4!OJ&GdObn_miEP|;FBS~(evM}s<OQarRs6?pP7lu(PX@Iy2eiYH<ce#3d+_{?v`HniT^|14G|gS~AN4$Z^DhI0_6$aY$#3mX&mf>=f'
    'JvY{`@jN~ce<=p;e1ARCl`3CLhBuPa12@5Ttl_%Ys`OLY&G@GD30yVL0vG4`!v)PktbWE`>oC#t#Y5VTCyOdPXZb<8xVHV*OMp)ZUF30T#Wx$P'
    '#h^5EG_p+W43~~-Vvz_{Iw7$U6^JXg)IzWD-dQX<bK_~5!{8IJKqls2@TDWq?XU);$NIE3?w%+BevDeLWuoTDsJb{KA_#FSOPgYhBoHKtpT$2B'
    's;v=XplGnqrrf3$$KOw(t_eYYjG)w*heW)b(RBsC8=#GPFwvh)TFITwbj<wHtujj+@V{Vr&W)a6~uk;ZM6z#L-'
    '&?@bg(FZETD}u88Uzg#+n&7oUUv=iVB$AEU=(?2z_W}I2ifJZ~^EzKB1~T`1JW0!nmSU~h^^$+ZvND<*i@I=z9|)p>mC<4Qepo7_afu+J)y7BH'
    '<KFw`kXQY~;=xQLKDOsa4s2&&J-^|9OgHKhV_F1u+q?8XL|_7e^FOu-rN6bhC!J0?!DzmKm@jN|<jm&4rN`~C<9Z*X1J7Pkt$+N(YI~88Y<^<J'
    ';e@SvYsEMpAGbU2#s`CT_Z<#rYBlV&M&tcnyVE=<uki|mH|_~+)KOCs%1zPky3wK?9Y^jD;Z^$}URPPn=#;|NsD}wnbPGZXxdyTyn(MO}MUI8L'
    '8G=N4=?9K=3d-N0Rqu32W#Xgba7RM=({>oaed3|-'
    'w=)$XUd#6pg^m+;iFKXZeS3;o8H(lUDdt`jWoa6M5<8DsLcEeJ$1%=v;~vsyxiR5vS`vMe+D;(SH;MO%Xr&;T#(CS5T+#59pqp<5Y^UEFjFOW@'
    'tP1em1Eu2D4`$ObdFEjs_E(3%%I9@&+D17=4h@*u;R2e?c;eO_7>_isSb3Uump7UP(b>`e<<Rk*z@4b?p$xJYKLySe`jy!8A@wlP;-'
    '`qD%&83l#R{Htf1w$XQGG;S%{zAilBmt8-?&veo*MhqL?pM?9v`$1x4ykjII-'
    'u>sU6HyHdb!*#cgSmfQOGoM^51UQFgP{IZN)QAv}b|2K7LbXw6oDy5x+xq`wsK5;pLBAo1fwaJzk|?)BO1@Y+G+h()F)-'
    'UE3YYB%Ei!;?Yljfu3_JqT**B`2!#np9CA9%W6_!tDFS<}q&XreaQ^O<Y?XO39s@b+{9{!WI?m#H1-'
    'PO8T~6o|3JHGiT^RO6P}Eeb?eqUy!~`bwmy}zF?s$C~O+2sS6SmDYi>A+gR<s@cr2jmNW@$j57y?0z)m^BpiYuN_5VOKkdU!{gG1}jeta$O7a0'
    'XwcQ0szSyl|{UE5B)Sh@`hb>lavD<Hy1kFSp5o>4(P4S)HnK^SmSWs`UC$SpMf<c*?2+NpY<+clerea+z7to68QoPWkHD~^~*(ix;RibTiL<%0'
    'TmB{yaPlPHDs;PI#pMitBo<ok%aDn9yS<ztldnA-Rc>*17__hE_#;0}ASK8fCZ;Z(zn}dq@sXZFEdV_Jj+ddw*+THf>=*j(_?ra<JY>bWQUHl5'
    'tUGo!K;+{uH#UKgcONcSY!oc(sNU3GH@+tyhJ;!<I&-f=Ymc+|qI*M_GmIECcbXJL{S>&fE#tuN|uLw0J4py%C9$}hOd-'
    'f4TOrL@P2<|u}#o%1M-i4)^cTw+kX2MLezYaUXwh_jB#11psTHBYj%orLJ*qV%J6BbR$Dqd>Tcdsa-'
    '@5M@6e2Hmyu)u;$H}EO&nrnd5U$lttPdg=Ufb#F=<t3n~9$YPN2yqi70V$l%iV-'
    '&S9b3AQwai^?VZ?xV6{DkqVKR{|F~+m0BZE!^(1~w)?3Vu4I~#YKr=|LM|70}kb<1V6_(ebOM?VY9U#%%-'
    '%7Ks~E30)`;Nulwq6AX+;dpp9B!)pEf@`cug~DyxT^wuuLQ#s9Qdy#WZJ^d6r$<O7M~cWeW(PHJPHjR*I70zq=AhYX5l~P8qM+cN__Ain7PurB'
    'gsC>JoykY>@&J^VTD?xEciJ3`kpmIr<6|V5K(&9<U`4^XgCGu=^fAU-Ew0I|u^IZ=GYf=g%0+D~UWVWC-Mt0;3IBU)qi1BsNfsrs99MJ>K`pss'
    '>WiX~uHybla{Z}9F6y1?4vc_#P=wS!!Eq081Hux$2FLaHaI6P(3lRP7?qPXNis#)oB6%D{pm{x^wPvf0=&aMMgQh*`os62<<QCi1;EF<DB&>OU'
    '8*%}t?oAP#tH|1h7BXz6VIYZpmXMU#?)20s)D9%!LC$ib`j-$R1J7MTQ=E*4uwk7jp-'
    'G~SVU9%8I)~{>QtQH#iq<QHEQ_6y6N(zsBk;87%_NQ9^Z=2X#1(5L7UU^Fgz?O&BnWH!`K;k%=J=lH3>VIvupMvFyQGJ@^bCM_wvry}5VbRB-'
    '?_FwxqdJPSteS+F&cT@DPI3dv-'
    '+Zh%PDJlDKZ$0TLOx|{@lznT1;^cs^8y%Kl#|0xi=SS`@5Zuh^E4;D9>hm9u!AlrlL6emXb$3P>TdU%$YuDzfZkB4s^8&iyU1tLF%d1FRY3S!;'
    'oKRfiU2EN-'
    '5zepy?FH+&nfN9JrsH&E%AhZ_`S;!)w=D4FRT)Gw1N~PA%Jkx`w3l(~KFzYsXnwA^G=P1qCElJ#zLS<Ky!ash$fn#HBNKLig`Z90YjO?t+$4KW'
    '>f>TR)SSK%wcvzQRp{oldmguMb(vd$!HEIP`T!MaP*65Od!OanZtOw&~cN{>svsnY*zDLhXzLXX?`OzrFpx!5)PEGMEqp7L6KOIY`Qu$Gr7+tf'
    '6}+mVzgBe)(X5?Oj1%n8QN9)0IUaAe&-'
    '+bey^6E<(${^`hZO1qCcl3_^84f|CyUSaS+0&gCLNq}BpLbkw&l>|iIy(s3Krbw?3x1Sk^JM*j4p7~4sHO2)Ji`pMc_>l=XxWf=LM3VSD%9aaI'
    'K1omQbeaakZ@UCQOAmjvCS>3Rd2>lx?1dTbbQRI7;)^p_CfT&F{rkq5c=0hYd-'
    '~ukG#>z9A2+?@fb5^civFuTlSkFV2(k8+KYyRS=kj_9W+vEC&{Xu)wRMs!KH_^d}O^<dAKj?=$k554J&IWMiYzfw7fZ5Q2&cfw<K6Bw<kkweY9'
    'P0)yv=__yjx~Y?lV!Mow#|QE+A}^FT;YVAfdXFaTJ8h}w7tnS5S$xYrP`~?%iS`*Vt=Idu+eFdf;@3Z;6~}?>&mOw<(;U03Q|3-'
    'm%aP1A@wLnh71Sq#tyDruR>t`<c2Ofg~LV#aKa{&<$Pt`y{-LaXXn*!g%7rR`x1WmuKLDuZ*Jh+!~S9ca5S`7olnHoocRE;a|RRHv9}`u*A4k-'
    'prim>pHhU;RZzL6!VW(o;oHE!{dVHdmN%Yt<t(VnV~ER{<7+(LO*_KQz4+-4HZR^XVN|@&zp<*dJ*oN1*t|-'
    'bzm}W(_RS9b(TBfb&uTJ4h&&BMd2A94w4}+|Q?c@peQGrfZV;nXPQ!<g%qf-'
    's;~(Z^@9iN8GKv~LO>0S5RYDdt9XRp4r4~&$4#1LEQp`OI=^r?287J6C#oDF+6Qmi#*gsmwb+~j1fQhs|sVs_bi|9xWjp@i3&tJ;q9WjJP_qzN'
    'zO+16jDUY{Fg7gh4giByH9bUt&o>D|0qR6K@id6mq4ex0_3Qcy*rq{hlj|yk*)cLtagXEJWa)YL7hUuq<>mnW^xywTT^PRhzsFBA=(>-'
    'b!cH0Dl_5p~Wk}Tp=UNwpx-utv;yvF65$u7y3#z*eS8W>yqT%&ZmBvR$@v^{DZ(W`QC>%&2~1BnvdTPL)(JY0kR<z+|;^zB&3C<kF<aVR)$zyA'
    '+BZ+NN0RSb8!`*+aW?HQ#hG5{(WzGYjUb30qTm=Nqtt&oB$jyCac(BqZ_4uFWTSlC#Xgj8Wc$-'
    ')Py=n*G#?qHdgAqnV01E@3I5$Xh{lMB!>>Nb?>_wsjJ)#6kX2^KX#**}oQM^whv=1h|227lrD!H0hDU6X{Uqj=qEb`M8KLOu<At3v&QaB$Jn9)'
    '@@xQh9c7O$i$>QzflLhHpL7DA>}h7i#zTQX?&Y64S{ThKv?RSv9*r`H%ank$qLl(nN&IR2YsXW^1(!6YGkv@J)$qC$kyFUEjTPW;DxW297IMzx'
    '{KwGj6pzozgD%`vMI`a8H5(pd<VNwC(B3QcgvuB8Hc>;9Rz+Xfs}vIMfxZg{l09$MsH!NEzROBp!9z)&5bL5`k>^Gd~Emtp)sW8JPiT(QpVnzp'
    'r220nwIzfMbcf5tgYgfyy`i`VzA`_&~=X!E+Xbsx>)sghkA)YkPJ{#Pu1zc@vg#;V)1bAzuV7fijB5e2KgDvR2xysEdMg`vJ-'
    '1yka(N@GF?D=B-tVj~Rw>(@m%^7J+-QTsWCTz>e9d-'
    'D#4$o_qStmzdMA`ntqsN&^<AwrcQyG6(`Wezo843%LI;OK0g2UH?6?<<Q8hnfuXU0kvH9x(e+1wL1x|C6T<s9jgi4m>%bAJJNS-'
    '3*%NWnFlCe&C@~s*rLV~mWq#T+s$&eaOa?jQOgICLugHG4|JYORJJan4gGfnkK|#AR3f71?J%z&61hHP8qIuVJO?pKq825xFD0O<@p}Ms7Z^c&'
    '@)H<~`=#xFniT-S*oFy!v-FvBxeyq<KQ{^vv4v-A76NfdcFiC>lmV-R9(BFd(e`n@PZF<{0qH-'
    ')QrkDN(B^uV{s3<J@WoG47k&*%XxT2C7mxay(~f$5dDhHHtAa^{up#70Z!CM}UU|fB2hhAAm~hZw0<;`i<k)eFjCvp$UAbOTuP42~v0iF)cwFj'
    's)b)7(wjhptVVZl?HdQb&X`%9A$*tXQF4k-'
    'rpwvO~njEkjze=*K4$>5<mIsqytf)a+g+}6{a@(9{hAe#MF*R)C`22I(8KfW2);2!;ww?(>>U5T))2fzG>I+#fBqG|T1w*=6Q>_?z_(DNTMlL}'
    'i{Wi&G%E(0DgENa1^<LV7VwM59>niGcRx^d$OUP_bIE@x(D;1h|3RPK6nyyH$(`D__@)|iYmkCZu4K2lar?UA-'
    'N}GOjFvOfN?GZMM*2mMDDAn%z`*xsZFcnPfSl-Kva(O8N@+uZ{ZE!<ERTR^6cbd5&KUiEY6W=#@f-'
    '{Ae8>Ik|XY#9?L0&6GFft`*f6P8r(jJIv74v)03#(eOURC1N!b(#Qjl@_LVU+(d^=hSCh~i|lbBO-yIsNaAeRn-'
    'q!<aBF8g}bApPX3<o6=^9z@?-'
    '9cpsfELGXK%;1Xnr1V;{&PZ+xBBsTKlpxNxMF?2P1=(8qz#H=xPEqm;N7*Lga;FmdbI_4hmRnEL5x<fBfjD}%ynh~ii?qIG3(NAMeDAz)ZBwt}'
    '!u6a&f0xBLvg|L6HY-osK-'
    'P|uLffcbXL@aHyZbIgIHIHy&oI7k>eQlCRbUkXx+{&6}E2UYk2prRNFJ5ghpQiC7cCd<=qD(%xEg3pP4&3B`GbeQW{?eOhp;HY?<{l-'
    'jxk%8}k$xICc!f}8uzoGP_1Lix1vcLNse#=1_h(o=>f3Lvf3a$oJwxLj+9aJ&js@pN46@%ZQxd^QEvs2*NN#I78q!v-'
    '&H)=m>OToWS>lQcu~EyOEd1by@eiqnJIR<9%BC}JQR=uCPGBPjK?s2jLt(^6lc{5YZt}?q=#xU=Fd?&N-yCDxyLc7ia3jZC*sv-'
    '7#15?Gjcs}Ur)cy!h&z^jiD8a$E`1z}@EA;c<4@x8MXf(>MW07fZHUx7Md!g>qDc0maj$+nuD4q4F3S9a<9a7)(Gr1){wz16qaxqMY_VZI{_B`'
    ';-'
    '1z(NczU?leIaVc&=z0w9CLNFg4@L1>G%Km{lEJZTj+fh*faO<fKH#=NCRiO{JT5#ITG0e=Ub};LgEYZ@8>F=Sl?Q;?_QJt>?!uYZ{D&IRO_Gcf'
    'yUL!a;#kYEJff|sza}D{fo<3=cuX_lMm_hRH%KOsE_?aPGg$*wi%8he?u~GyV2_=d<?Pi+@4`mOKm*v*E`M8C~{1UoGWeOTlvYIF6|i*L_j_#g'
    '>*MUDR(DScn62F!a%54N<leEOO}SqXJ3%}bL%x8Qs%=5AKLuq57hdIB?6lN<)q#jH+r3u<L-G{j*d85b6~rnLl!u)gDasZSxHk-'
    '<~Oaa33Vgeg~QWvE*C?(-(=gLS^s-=PunG_d5Bmd(vB4pKSPds(EX|PGI}g1I_63{rVRP{hpJ}u`@}C%GOh3=#Ps%d=uU_SI6>c`<Ae4Ytnwl-'
    '7dGNK9s)0!qf6d}*~r=E${&Re!koJ=|1Gi9-'
    '=3_qM7;uELzKVTd$P^~^&`GKPfakBF>dm4O6snYva}<?9evl>E$f5r(`^0<W7eDdzeO*EYyY+vV3>T$U21An;@4rJr?c!kF8BSm#k(zX%dlsk?'
    '0^eF|I-PrX(aW4Z0cSyu?QnFoB*3nmjMc`MAfiqpXg!0pG|*8<*0&xI*a~9-'
    'w)`Ig7QQkN3MBHfJmGvS7R(?L_JmMf`O5F!1lx*XE}PTq#lNc3uTg;JWHNFE1{205qOp{Kr+#R`9Z?eF`gHltU~Hw#i>-'
    '=jzyNxmXu6|b_LEVr_Dy-'
    '0=<Dg6H(;Ezu`nZ4}Smu;71$j6^G0(dwvz?zKU~S#ksHI+*fffw>Y<vG)H*(_uu`CGzz+rM<RtFeV`T0{se4Yl0gzoQ@Q##+ZDXZ*TX(u=*4>y'
    '8#9p~)|i#`J*%as^&}E++T+TWEJQ|GIad|#__>~E=fDtAJ`xg`oN6f%Kzb$oZOr?n1OrQd7d!Cz4+8sEnxB=bBX;5Eq(VUh%Oi#4m52VocZdFV'
    'd+koH3C<)d+MZ-kQ>x>MeUzt7T2F)~mx-U=)Jl{BU?0RD=R!qFjrfr;?a7&|-'
    '18JWpHz5QFLOy5x`}~OCXxuZG8)OeWCOxu+ntfo%i2_M>a!<XI><@gg4m*6ileLPIXA1%j4fUZl=vC0fjWc3ieYx?eT1rTE}2Z!dzTl&1)_N%6'
    'B@*kF3xRk??nz<#j1S=ie>eC^yU{PCB;~u$WO1r_>2d$J6GR=K2GhXHPJouamdp8k*DA9@#&XiB>8?JhhK`_D;(c>Kr@V?c?we(konf=V=_Ns$'
    'M`b_Tb=OC7=a*lIp1+T7OkD|3uHq@4Xn3`BpDiekggj`qM<gq6X{X`>kbZ-'
    '@mno9)+%MJRmxbad=6uHDPO>LK2F$mUWcW*1XYeBi(v7km^_nSpPRmXe;y~c)yqjLKmvIw)KdW4DgI)4QC`#&><@rgMM2oz+O~jJ0QZbV^HG8%'
    '<#-'
    'mWT@O6ZTTm;cw}=vS{=henO|rjSEX0R=>Yuj~Z>IIIim9V0o=omM3QlT!riS|Evy?yaeIQ_iVF07tM9f?OJ0X#~CaesxRANrlu=(@jgbXesMmb'
    'eNYC`!^%kY#k-+_Wd8Slf<bnISTV>Awc$)d<+XymdkNVHo>(_LYJS)7YiTF3bC@(#zTFK7-C%-'
    'Jz>>~O&|eOTzbkDrzvR*)nBSd*J6%?=dC@QyGISrSp!tpgi%<6xDAg>PMeVmq0T97nQ_);$?E4^$5zMgVm0={_c~$p2E);WW#$EEmpex$;Cra4'
    '2qn>-bUC)YxmowVw<8mxaOqE(iFcTbmL7SB8rx%H$=Ii<-'
    '$REhCnw{EA};3UJY`gj#be(8{FgA!+bs8GczpOenylxf8Aw{zsQU%mSwC^p)|V{Z8>T=H9bdPr#jF`X58Y!+n0drid%ZBS_1KlUzP0Hf8IUfKa'
    '~ZT#+Ht0!(twy(t1%op?<WH!g+JJ^KMEMYW)r&3(cs1qp$hsA!*rd8*#-95=foLKtt7Klk4ahHnaBTrV7DI-'
    '=)DTO?0ZVK`uhg7pAYR7=&OlH~EiF08}ig#(kDL(6@{9LQ+7jq@M-0qXoGp`6F_7{sY4mE}ZV17_d8iZfx7CqfvrLz2Hmzacs?g>&?S8-'
    'EI~xcLLqACtnJv@S(#K8O?OqivyzG7R$j>R8Cg+#2+bX+~z1KTUGgu1QW3pZ6FNL<rCTD}JqEgt*EmF=m`9y4@Y`*GHp{KrRBFs8O*W|3E6gkU'
    '4O?Ql8jX!^8w5rb#uKs}oBGz>qR%5>*1t6)A#X&)(Ysb-'
    '|sIkZ)qmY_?j>28>m244Mbydb03Eq8NfK1FDu<F%xB)Wmc97Qmoh}5kZNIO|ygd%YqP{^75ovsk?TGHddg87L|4uLwgc9(|UN_*cV(Z@F>MJFg'
    '%pJDh#wE>~S9}m@Z8F+wV2rHAmyo@%ZRiUVC!hQM2AS8lN7u;opF`lu&?VUraa*xE4BVk)TVHE)lPsyPY4Aig*N+H0?MuQZY}`PGGB$St}72(T'
    'KT8W|&BZ+@Q&|=$Y=XKuU9`yr?J5{@p(t)Q{T-<4&(pC(y_b1BZS*IKqf0JZjph4@VWYLBnyQchZHwk}L?CtoU>!0S-'
    'PagJ8dYh(KULuJ;w7VyO`+10z)gGgK~-X;fdc<mnZ=r7)-'
    'Rj!kN@X@j2PlN58h6do&6r>^3prlc83X^l13ICh341)6X{unQ7aLzhy~)jNwygO!N~UesqCVT0zmaYG^~B?L<PpwbSH`U7X;qalLW;`zHFM_-'
    '(D$RUiG-XJlfE-^=?2-'
    'm!sK5bW`MgwgQ^0)PjF!opDqh`H>yl>sw3nGP(^z2i2;(AUDa#UR~a<U|`&P0BJ<Ks*<(V@!CL|?m95mmgH8YhG1xZi6Jdtx+afy$`;k2fBHrg'
    'z!*-'
    'H^l{n_eRm6AwGhW`F&8PeGM9nb(TUxPLO(V4?f4g;>?snHHI|HE1?}!T<DzqkZ`LMmo&Gh5~I3NA=Oku*&+#2e&A+qig#X_GP(H9P~^xGVnH=6'
    'eP89apB@?X;C}@|EhP+hV9|zln847Y!$j;k?9+~ZtG;&-sB(*J$pVUDDPdOk#dRolZwF5?zUhz$R)Nu6o>u-OUkspOW0>}qZR?7-'
    'sy}fO>A&ZoQZuyC}45D$~pN_f82bpPD#?6#go+dBu9POd|41Ym>WmK%e(DiD$X!BrPfF93cy*%?42J!7pw=(RsmQKoJ+?GozDd<C?B99<p&ppa'
    '%WomY`_+ygW<fs`1tuSTZ|Bfb0CG!1#G`RKIy+Pemk!JydGP^x-'
    '4P8Ulbf7<@MK<QTnHLIB>#+ADAZ8nC|kAf9iXSBm0v>CBE#O5>%G%`U~Q_ebjHhM|rX54X;7?^nSJVCR$b0)*C@c3)SpFczSAvEnSYh;ZgIT-'
    'ThnLB$Vq)?g}deA-NqQbgkJ^h*1*3r;ck3*8R>2R%ARGk-WarC$!n<ztAKl^ka$&kdXR81)|y%W=wVGi;(EiG}$NB;OpdVb__}qu7R2-'
    'W34Gt#h`DjL{?-|p%RiWZYK%IPcOz9#}hSd&qHD%kc4e!<<r<hXwo6GX$yvE${MC(Do&|wZLFoPIRa8qb?Tc9q`jOu`-'
    'ItH;11T#^WTFCU#ex6ERV|pn=@vx4I!AOzR5HPiZ^xcKCrJKiV<~tdM+3?+tb*ni4hp3#7>m=a-'
    'mXw7D&M)F)@foLu1&Ig@0OLdfz6hzINZM4}xrNmRISXTem(rnY3@fL#{fJgXVD515ucp+}?AN!Y2Zpou<2?saK8rreCIDt2;#}XB>{%>XNJGMu'
    'E)L(#%mpQo;>RzL4V}x#MD>;>0G(Fq#4xpI`$32Zl?FzO<w!T_b9SXq8F1n@HE_mLdEj`LMy@$mbo&;D^Qu^O7d4Eo!aS+>|Zd*Ynie5PgmNGj'
    '@5KoqH)^DUab-xaqwXBh5Q!vc%f<7jQ&v7W>AmV-'
    'a#INi)4z(&UMN4L0yo!)E+}xPJkgs_>we&d$g==T`8@Dj!)xQ(geF*kdxWrRi?UeQ6|a2ElNcB=LB=_yd7L)bh1K$*NkkbbUO_VW&PEGEqx6NQ'
    '&dgGbO%U!}JWq##krGv_}dz<{nU9YXQ~~^Mc*vVP}cfXqr#0xFF9<P#B#Wf9hVYj{1?IUe`H2Ih^%^q$VU}&G3Xglj=6?R3^wE#C(O=g^bB3-'
    '>tw<N?VbjbCZa!5=E>gsn|$0vQr|BZY`y&kqe1BnZkUEFramq5UN##FyWjX*`ajQlH{`?lQKrP=3!Ps0N$TL-v#_z3-WG8KeN1l!Z+q-'
    '#lKaBZ}kgz<}Oy~xJka%gm0vLt1#wE;ahJuB|;PY^NNXCWbtgghCL5qpOVjVOs|Zdm*68}<^xLd<I<l_F?q7J@|U!D#KN~G*I4M%`fWHGjNjJ>'
    '<LdpthX3Z-bQ)|BeW~65^-nypv@*-o_Z)E=X*7!uc0sJH|K<rJKK-'
    'p<N2Ywz9ko07VmTb%|4GPR{hSpvRkjU(RU+`{4kg}>cHfAlia<g9R{%J4cGTx{wucP8CH{AmC77^dY*Ce|m*&Y&X-ycW+C?OkpRB6-'
    '`6(a3m?bj5^pYXL6qjPE8*q`7b8dK-&C7@LOA`uPmbDIgO3zJ<+Gv@i`w2US=^sA86l{a{S8OK*nh-'
    'X>e7+;pCCYDLW9PiQnUE@uxQ?bw58*f8m~EBSH>wa9K_S#lsuNd&l3AkTeb`FQoUrTDTo^KWBmpwVp4MW}I8(tP$Nj)ZPk*BHcKy@9o;PNW9rQ'
    'eU0qLPsnU5YAjsK8}CGvN2mF`piC}srS{>d+LcCjd(j|>&PF{oRP74q8Tp+!s3Rk%%&+%<qOEMjM){cT4YjNo**VD)|L-'
    'jpQ%9QmWT095I<>@pm6V|9Khu%*`-'
    '%uFz$e3y$G5oaJ)9m)@;*rpy_MdBg9t8+_;D&f6+^CXw5l8+PcyZFmE@2}Q8@A*dmPReDi_x+0)c%&WF_uH7Ye%w7d1_eoEzI#vBvn1xe#WI|Y'
    'V@sMz&NErgbID3fijAypOagtIRIk`~F4?A}7)YX*J&Q;VY@&EmXfSE7$bi=W#uJ(h)6ZkYDlLJ!=8IswD3>%_RL(Yh%G(f|JjIWFOr`u)5`S<>'
    'Ts){+89EY@r4L^v=C2a-SBd$n#Qara{wgtlm6-qOC1yn$`-95Msqs*`q+}3~YB6!h^7pRB-(PM~du$22PwShb$$jZfolA!M_-'
    '{<I<A0B#jea6niT=hw%xS_`P4QLP6yLRhGdWh$gx_^;rEhsm_{V^<!s<eMVcn1%88(drk>z^q9Pa#^R|h~)r3jbo54S8|#S*iiF4oi<$mrIMy~'
    '50n4%1Vn)^rIP1dNSYHE6g=X!)1quV0*AA#5TXjCk9=DhFSda)2vDmX0MFwRec1GJKWzze@aHCH}7x|5u6s0VMvT_Q653JMPv;Cxa%+{PC43aB'
    'F)uS<Yy!HiRS85Bmiv39{_<xXOVbf)r5?q@CdA^jPkU;)aI~h;vgrShc4*N9jis=n=&!f_y?sr|XD*iB^`B<P$OKCcmzvbe$@b=v?BG;z`k<q8'
    'O_El_0L<;xp7imCc)j&rttt>T}-lZ;$53%g~)Ph@dW31>DqMOMhU?c@Aur*OsJ=t|P|kk{B2o>$4f8vt9HXj-'
    '4S*`3(}{h2(5pAfo{)@iAA^EQX!kvYFQrcgE)X@Ik|Fia6g>2ka)#cd(g%cha+)MV0+$4C+}U+D0QgWw}A;cV8{SD{<@lKAg3X5bVhR#R>ePg4'
    'u&%Tz9Od%Zbx`|GAG9Oz%YDjB5IjIK(j??=o;5ZyH{^sSzKoLA%*K7#_9zLRaS#2A#yC`_Q-'
    'fiS~?vC_m(R=b(7bZEO97K<{SWwU{^zJ~fv_WWH5^f{POo_Lk08{>qWQ0FESXI0~e+Q7PVVlW7SFK-lc3%4Vm<MgS2!<wTHhL@%DF1gD&>c&vK'
    'MiPF5LI=pW>Ps8>WEnAu^SFA(PdFxXUl|#eo?!TPdfamB2W|Cwg`gnAaQL8zS#4jmnkCbF1g_GzeL)3+6@02han03uOBUxk9_T`+JK(a=o?aR4'
    'Sb!3gldz5qM)5sn%eZ|S77uh39tG*Wl_;(Zfkbwb8#7RpcO+jtl4w(wBJ~*g88P1x?Ys3MQS!>qJG9wPENiVZ@Iv8=>L>`#6^R~#NDhXTGPOu`'
    '6s$^D4D>|eNHfJ?-'
    'g#r#j=2&P<ia5naG%UYGIuc77WA;OCFK1&?S?ILgJ?Nd1X!oHY;o+c6c2jeaVqh|!9@0ffM=IoDh0bZ#IZ}I240VQ)s@6A_E1(FLa0${ESpW>w'
    'B7eqgwF}C!KRI10t9)|G6|2=Fxt9mW^$rO%{9dGt`gAH-BIMlQ98DEA8;gdNNB^OM2zYK)Uzf2cB;1V6pJDsowfp0PLH$&6If%-'
    'cA`al{z_n?LTSc43ZO->mvQBEyIGN9#0LyeX{J?X9t{>dkGXdOafLN~2x}bHY9bHNS&8s@l8-'
    '9VkNW4>(L>Zs9!eyfstlJwMwY!Jo#!+wB?CMNDY}B{Pvr~2mvi3!Z8^=Ic?s;rYo^0XCABW6EBPu+zGxJPmbK;xwp?a=9aXAZm>YOQJmt~hWL8'
    'McY`%!{|Ohq{}7pB&nZODvC9Dz;gFZ=y55_C#VV<mMoF}?*WmQtqYkyIXv<;|c170}&^CG{wr*ki5a9;QV3I<iO{yLD)Am(!qTH^|uqnrJM8&='
    '2~4$c@_Oy-^_7pRfernP}4GD=uWt-3T?g2uIDotYM%k)->Koa$y1M`Fs&j>y`ZGmdD5iU0?hpnYS>pu4i44_lk-YIt$C5&jTOJfiE2ElMVm9m^'
    'mS<v_lH^xV$|}M75JMr~BG@p}s7qpbdldH}MO~b?ZD*UMa&=ly8}4BJ@XC$zJaLl#NuypRON&gYNms>Ma+cJ9W?(kDoB#o2{&VpIBH!QgV!(DL'
    'AXRrf|n}hjD@062w8Fd?LP+<7ZY%{+Y_T_oRVR?Ag+3&1okVxJo4k<LlvF=kOLf2pgx<(Q8^t5-'
    'Fxx#T&b)F)u1nL{*IvR6ME5?q^7*vW?@flfh5s51M#xzt<a*G^dZBd5#-'
    'kQMaZ%pM0Mt@@F!Om{KDnO3Wrz#jyU$HILEp(J>p4Hhm*<K$xGtaslza^ZeV8NKwXYq=XP93&@)GiB!99Y>dEl(K$8NUNzBNBIPGt*}i|LTO9l'
    'xt?z;~d6*^A>B%bjG+SS&C=xSr?>KfqL}E_sv2F?oh)Z1NdE3Aa1$=%44pPt_Vt~EwO$qN1Ie>OKrnSclSkoT|gc01G57l#P>N_Fx%%?!u9?2z'
    '(e{Z8dCVcw{#D@FtE-'
    '+MivRJ|`v?6}6a96YsEcB)VxDsp*&+0m_@%f+HV=+j}a>QC48ts*uB$badj%~q>FpVGQ^&WVV|6SA+iL1LqrPlz^r$&xVIWjAFNSdin1C4sO+Z'
    '&BL&H8{I`8TQw#7MJI;<va|0#HoUysS?xNK4ms2F?1x+4x<zcRJj7+WIVT?CFXy!m=r$VH~sNej-Fc9s~u{P=jiBd{iHfDGx-ewQ7bkpE3e4HM'
    '(S&olJ*0UQyR^rs2pRICErO3N}+c_@WLZmcU>mQsFfl7uIo%iF6LLzL7`Q;D&BwO}c`*_35w6a1lTA)2)nMO2*CiSRIj4Hu4`eZ7~xg+Bb7QSY'
    'X{>HAQ8XpnU%T2N?}XYkIQ^8~XBrZnX^ZJMaY<TDEryYHWu4XKI&iI)NhPvhhpDCqtl%_s!1uq@V9#5g@xT8-'
    'm#jbgu0wr_9vRv_1wW4$$^&zOZM{tWxQ3y|Zz*d0MKE_fJNnUbkE(zE1q-'
    '{pja%MwKu1a(gQ#$&+<YvXD_g85WQYU(TAZADMvE%4j3;oKH?*`IE^q2$MM?1+Fo0!sTqC)q^vgauww)v3)8--6}=qiT=veyHp6%-'
    'UhO|Y3_kFBFOZCpBd&Du04+YmLFU>NsCMhB2bYXE^lt^U_}ec@j>FdSohp+ibhMZD*;(vg2cPH4*ccSwKg1ZxbWxvpy2#~w43=NNp)$@^x3Q0C'
    'LQK2-j@%{`TXG3+K%aq6)QcGmc(K~uuBCLscT7;Qnb#hVgu^k@B&}n#UhhYC!oxkBW`FVp+BUTt2B?4s9+hkT);lb4~?58q--'
    '{Zh3NugA}yTUahPB_9+#F(T=<qv0G-'
    'lPiNTDnH}Qi2pJ`{<P_4^CO8KJ7W~@z1l|53ZjH+Ja0bF9B6HHflcRh4qi(HFTJ8VT)jW?q}sa)u_B1g*Pq!Oi;XX1X`66lSiUJsy$?SDYv^|x'
    'dusc%%AlnKdbV~&&}%FiTYRXNorjQqr3i27E7Cnvmf^Dy&!gRLiJ;;pJ%g5@LA?x;s(`N2#Q+1hTk*7yC(7)9AihVVKci7<My)V0iod#$V5`WI'
    '}G-Hdfk*ouCC-}jaw-3jB~DepDr7e0E4@IhkJM~<-*7K8L7U^q8gCeR<(hwli5l5&~t!7-^-X{^Yy$yv!y<;-'
    'A|hu9P1Kq39zw0?Z(U>=?dGHccwp#WXiU$A|7be%s9bSlCskP}S<pcnKIwMm*Mq1yK0Vnoxm;|vC+(UjM((USeXXwV*XsQ>b`S1p)1RakT1?Om'
    '{2R)UL$XRgP1)~REeU?b~3tFLcn+W1I)Uh9*_LuET&A&+CXcs$a4?B|bM)|NC1+njCYv!W_+opeDLJ>ckqqfA4vjnAkgGzgD5^_U^C2uTkT#UZ'
    'HSdqC)mwg-aW0TA_#J)?Wtl{Ytp`H3nI|8?-'
    'qWkS8bJ}48OS1e2{2jakc5DX5Q<4&_R8rM7RLr_XzuKBWYXuH6ep#4K8=tv7K)P$IG)5e3wn5#a%+(5^DeUqj;;R((T0>BYz7r9r)n$2_K|H(X'
    'ti=>5!qJWg0k3#~E<PRl2RrE%U_70aDx>D3uV!tZK6(E5bV*)K&K+R^M<qi2qE`CH&b8sAm4(bp;5fcKL2&C5d&u`S0f)@C+1p8kffY4j-9-'
    'P6y`)IF{SM^h3s>FlL{u1B|cwVNF9~CttNZ`AtUag6(is}cqK?3i>pD0+STbAxAMNNG^pSjL7zPzNCw`jykab{xHMVia>$0W98f%&(@Et<=bl+'
    '%tO=|D1QTa$|}k_wbXC*O<iWeg+}Bs`VIC@6ZYk#8Ym`8oj7$?93e3O;mCj!C)H;dwc`s;L6F>bPZ)J#r*}!E?Q^(bOMj=H(&LvM)0$#0}%2<l'
    'p?{M{tO84#`jwTA%FMl13-'
    '&TA^?Gi)#?)ZXDaA2~g2B294gtw>t8C!dR%=08ma%;IZJRax5YANVM6<9zs#=MU_XQRiA)~9^T{vF%XN26F7#j<k=E~EJxxuy06XmJ$m2rKt;k'
    '5sMQxwDC~TUxQf*{YBn%vwI`8~oR3uk;HkVTWpnw&Ekb$FQ$WOj)ZC5KT4wpwp~Rj$o*h~s+jf8dKYGNu(YM;(rR(9g$_P*4sZTR_s-'
    'B}2k3YCKFRc|g4l5f<B+F1u3VMaFOhibHP%fMQM9aP0b>F#iy{Ol4;&@Ermo~j(iJOrX^KsySwBoOj-K^;tP|*MX3vlq)7o{|CQJGWZx>nb``-'
    'wOr%=S~(<t&4iXuM9*_>=jRW}Rf)gcU;wvBr|K=1RlZu6T?mTRG-y9`WBc2rar#E+M~ut-'
    'b{RBws&i@ypC{XrKR~ySyp2>fII!s~U%=b#5s==gX}|#_P(XC~lIirU`dAP~ddrcRnczgOZ#Vk1H-1h9~P)D-'
    '><8;+%>zx*((~&#yH&$pysAM@4(2tJl4$vIQ^8snYgm4&sT-Qh=nBIT4=wSJkyEj2i;43f^&_oys;f)fC!X(PZ<`m$YhZ%f7Byo|KBtq7!*16{'
    's6eGL>j7T6xRFvrH#d^AJb<&H5kPcbg7z)Ze#*%pq8Rx(OVCq-'
    '#mreg}QN=BTO3LPMgWJ>9Ts4m04c!M8=v7W5|JQ`=o|A7e_(D2e4W6mRO@o1M!-'
    'T|z=gFUlNiX$EzD4?W%rEPKOM*OIH2b^CALT2<mA7t*RJ{E%}K0eLUt0Z(X8SP<dUU4+&=a6Y;IG8Fvhaz1Ny9TJEcraKg6lHgLY`eK~r^Rm{z'
    'Q%I7|JAA0tFcQBJIB<f*xmaW<KjVRY%f8YN2#PpHY`TQg9({Oy&N3S{dY#??gHcCK>6e50;NAFeP(PD?g-'
    'hvZM1GFmE9NU!CxM<@dFn>5e|FmLjt^TuZy2bTLALART7$frvVuPz%Cw}c$5`~*Dp=F?Omh=fNOd(c2}e<{d&=Se@vSH+D_?mWtR|1<X3n{iaw'
    'iKk5xy|HgYQYNhXl_#Ce%pGX)%sU0uJu`5VcFQfiZUnWS?E1*;W@mU4_>CpLjD7J(abl{rD;kR*?ZK$<$L`0_YpM8tC^X(UoxmRN52I(d$i^7W'
    'KHE6GX20r_QCloGsE;nDp$c#I%=hmG=p&f`Mc-'
    '{qKuC%<FkeKpZjlo@{oye|z$<r#j&7BI_P!RY&3nln$Iy!zuez7C(^%PNS|qRK_VRegaLCWSzWCPMumHNqgMVj~d&%)V178_Ca;GvwU2%0VyX~'
    '#46Tr#b}hP$kV}ktMht@O4VRuFK)u9m3SzR==;ukC*=k`@od*OKG)-7#>3)6JSrL<6!njZkM|V#q`>3fZ%-'
    'cS(J%EO?2i<oWPY^EaXiyJhu3=u-1Z}&@d42IBK8>djy9}$^suhlsW;riRmjTl-'
    'K252<f2+P7lF}(^Fg8$lKEW3HDpE<CEZ4i+oVmJkxZ}jNINBlS$(P5B2shhY%7(7(dS8<?<*=E$hV8tnof<N0}=Izzn!xB(`oJNqjzHCT598iW'
    '=m}RDz!1mH!n8-E~B|J`pb;w&E^4>)pS+4)9Z3;DsvyK-'
    '~`xrRHRAN<`(L2D;2m|KgGq?REayiI5r#0B0&5bNb(bqlrg#H#mcIFA;qsHJiVoXtp{h_dgPJ%wG8$@MH%curKSJr%IMY}w2ZD$fLJ<DVxI!_b'
    '*1Bn^>xKDzo3G-dRF<kg>z;0Rit*V%;X-e1g?m*+@)~ERVHiSMz<Pl%e3c_jLVw)^2lZm8QS}@V}}duiDN|frMlxo8*Z>^J-'
    'p7|Zq0j?2%mIEXdB1iX1A4qHxdhcjTc}Hei9pPJzv7L7|xMhrR#0F{Ua?k5nn^c_vfjp39nNtB}SrWuAm9+bz}~o*z!t@w^kA7nB?wl;3=cixT'
    ';2%ku1uN11}PNHAv?3#MiAqbuU*({Wy`Orc))A6s#9OE)`{85|y^u#Kd-a)Q?mmKJ9J=1}X35WD~LAl*uJ%Q*BVXNJHC>-'
    'p^cv8j$&0X2EA8r%dgXj|(Pk`rmw`$-W)i!iMc%nrWphv-U+><~r%uT2P<ZiX(ne-QhmHre?84C8NN$5z4WtdXu08IqE2vGphcg&GYDLW-'
    '1S8mCSFuiow}m3HsF|h6U@cL_vs*`9}0pbP}UqL_U!a@nXCD0yMaFD+H|ZGLR);<k{bKrH}lq=gTgwEIdlFS_Zlosi#q8gLlm{A}0;Y8^oL#pU'
    'Lh;V_xfoW{Bgxs?nE|uKcYQeHk_zz3#y{`ux&l8`Nk!(tDsr-$4-yJ;22NqJ<FO++!1=IQ8W+#P>#gFH+`z9rwR<gAn>-'
    'OQq5G+D1%i<BfheSEggxKBSTU5;qE+iSJF7q3D_gq%1uc%o&ol#~d))N<hs`{DPr?UKJ74yjuh|8p%mg9DIJ}tzHViN4YdrTvcBQ(9`7oq)L<0'
    '>brBjYYt;rbj6Kp+mo`}?a4{Oh{HDUww52<(6;Rf<|7Mjcfu|8w2}2ZB>%-'
    'HX&9~@(g{dCI8fh0N=~Bp4=Y(pEy8Rpw(lf{n*AA=AN>>IZTzHsU<01VEKux2Yr~b*s=oqDl4@u~JwLd}G(yV6W6Z+2hogiE8%NE-al2a|^#;Z'
    '|8_ChUE0FIncRd0YVM0?}BR<gbQ>JEI>BYC2HSl`F*0P3G*i33&5JFHf9mS;%#7DW8HJ08E|0I^U)u#M=^wJO{l40*5i$VM+E_XoRZJn93a8e5'
    'YFbYxVB3VEO_YVI0;wSiP>{;YitY4L41)8e7zsWwwIV$ZWC3&0;M740iQk_v#QLX|!iAdt8CaW}_u1HT(kJ4q3jFwxGYAmNGv(&XD==l|v=I&X'
    ')s_4PMHTYRXkp$Sad%2L|`W60%6_ty+uL^n*a|}E1oe<-'
    'ZK%%UBE9%~!5(8G0iq@{fv`wl=P=vX>bde%e0AZGtV9;prQdb?{609H=$@X|H>F3B+X-'
    'r0(94NBT!3QoD3k}tAWqB|b3bgZck0pL@#mGvU2j%{%w3uR8<iJvqe?2$7{6-Md`wJJw@d4&#txUFSFK3{Wh6apX)#oQ&laWFj5-'
    'QByB7H*|+(6Qr%dCKoTA;f0XHj4EqU?RLEHg2+#1eQK>r3Hhu@y5<-8@-'
    'Ta?g{`GCcFtTT^D5#M5ak+@oW=YE}JBdfG?#e81l)#j&MEl3>j>AX9H6_wSB>St4i>cPCMU04_efuS~9jM3!lLpX`}C<(px+iI~JIYe{53$c0n'
    '%j>(%{T)fm7^I!NB?gWdG6g3vAMed#FM6||w(_}_=pjnF!`&Qy>Qv$jW+F$AN_%I)S#b{xAq45+LG-YwKd$9MbS>}pDSj0hc%1Oeq4L0)}B1q&'
    'V!AFy41q{Mvy>wKZlE_33cum40QIk;dT?3Cbz(FJwoOJ8&>+Mc`zthZ%Lel?_hQ5~)`kGf)?8xQD+RF{G_VROKO^-'
    'A|p^7z0fnj0Xv}p0Uwdc{jk;1KF%oC#*NnCOM0fSR1`<Vh5F!XQuFV2+w*)%FCUa>qHKSlnw$D2{5Y^q3S>|-<-'
    '{v!@XB?IB3I5rKCWFPPOA6WJnK38mb$un6sZL;0uWO@0xZt9}kT<EG&IBIA$rjZHFr0FEhm{Bp^-Cxf?h-'
    'f%3tKAagD9&3qCcWmFG>M4Lb9q6TgZBG;NP6rsCCCT!=;u50d2)t(@rV0(Gx1ONYnW7vIKZT8HFAboZgzDiY#{nW_#xp+kv^!Hm_x~7D}Y)v&R'
    'r`qxvD?uW>2V*iqo!E^GNgIT|*E2O)0C+R++L_iIu5Yfg*{M)xV<l<v!;2q|hXhC77V8Xj+qG)0$d_{TC<j4FRwjz!uH>7h`0-'
    ')u^TI6@7&)E_H3|O{-'
    'mIhRH%!TeWVfS|2oYKNWk5j>z_GvYgT6MI`*8Bqz~p_&0NV5}QDz@VTh7s*R*naY#Di#+vT&cm%p`zc(0_b9p$gi7w3{6f}FOa+)GrP0;@4+c&'
    '@}@YzZ0|3MqYK_S&$<98ASQZ;@iVILGiU7Ja4J4k&T+f&m`9L|>m=c+Vl9*%ph*04DOhBK_U8x_!PCE$Pj(W=(U)<2}*tK|0|${M3^LC$7K?2L'
    '>&6U#zNGpf}_I((~bj7S$6u7~-'
    '2*sqz;UrWdTy(ts#H{Ybu`fDSxlK{^ytjeAVb=FG#dZ#%WHHYIm#@_Cd|5aaCtij<vO)^vO^pEQ4;TlOEaG%%d-'
    '&pg_przy{OA^AHDxO$BSs8a%-r6McxG!F0IB$s!?uEdC%fJb*<H~<Ucy3DYL#}<t9jAM5-1ovTyxN$t<4w{CR$~f%Nr^<>-2}MrWHM}rFi*?%-'
    '0<3&im@h%gw{FJwyxvIHVSMn1kLKknSKHJ5{n$_*K0=d{I;Dd2ehX@L+AduRX=Wb&c^S~P6o~6#Lt7~@TfhgAM5l!oeYt5ra|lSX}v#g{yZ8`J'
    '#)w=qi3e98=CAx()K}#=iO=<INs?sTsqk1m@AZ(c(Fu_{Ilat0Y><fb~(~Ie`&rO^d4rF`<;5@-'
    'MXvXhcoc8=qlsIXg;!yev)IIq63v&O;<{@u5luXJoAkMRx)mcJjsUBDL*zMX=wlLhX3FgWQT676OYboMZ{1#a6%i-'
    'tv&V0zQ5S)9~=U>*A1o~f>C{I>RT5xf8tv<=Cif_*MI$Q)-'
    ';;Yn%jYGIiFl${qXY~DB$=1*PFO@h~ogf3;V*E*`XDnUx7P?KVc&9Przh<|DSNvc>X6FbFWwqGGScU&Q=ii&&hEFBKxQ2IXTw3Ev}<qX{$Fl1U'
    '*4mYmyuNrsYq@cR#vjvqyx+?<KmebsjC`eNx*ci%muaK#5mlLDraLkN4Y>QNDkZ@fJ=}URlq}hZ+73<=nBjbeTry7BX1UYn2&7v8nYO+YxJ+1a'
    'fT648=T9Yh<Y7QH@)2m`(F~<VIG}f0w_Vm7i#`)DeO94a<`-ab`%ZUC`TX1kJ&md70_n;-'
    'mg1A!;Hnxos~YVal`CJ<FcK@Y5BUdWv&f?a*pm`=R6Eaj-_$jzyigIpS3K3~z2!3r;-'
    '$>jS+WDN5_iUs7OTt7fyUL}^hqkYYS?J;4)@Y^El2NV0(~d068nW3*0av09kSuOG#VnPUORwk8-'
    'z8sa8l{%3r$nAo0m!QJ+!IjWkaS(LMYKi`@093TdXHTiOFb{Kb~GBKJ8D9@fLEMx<y4Pn!1{@{6Uz~rgby0&Y&2*Dqb>v_%&Eao#Mcr)2uil2C'
    '!Nv3<5tBq>Qrg`h94WmYyq;E*tNIJ1b8O%{zq%JUyNYP_TpWYV#F}#sRw>H0L^}ThhCQAm<-'
    '7}ltGVM!#ec;x(A>27Mqht%ou;87tMgBNgdJ%U-'
    '7T6LwB+i2ZU?he_ER%CgQlII@hKnD*`kq5lW5Vx_w+OP!>J(#P8?candIqAFT8}au3gy+eAXb>d;2pU)`fBc_XY{6#0xVVgGu@cC<Xe0CVfWl{'
    'x>X@(xR`P|hh>x;9*!GFy&e%&dAw1Z=!Fl-EtJ@%98BY>Q8cAY!wyygi-_b>B)~`J7lFVp^wJb(4eaZ!AAAfSNsM~>C}LDrG+mONq<1pM%4PAm'
    '$C5#$NW@g0riR28<cXpcx2UABZP5jYeF*!+@8&O0I=SZwtGm9%@_rx}e^P+AuN|6@M>R}Q2l>k5EDDhmCHuSJR>^)*xN6ihW~0$B@zK-'
    '#BqnMQsh<C)(lGyB5wH2r0?9_BM&fQXrf>?MY#b-eZA#qkM8p;R68S`Mzc=yM-E-'
    '@O(y)3igcqree~g&vZ@FD@UMuWZ9aD<KNu+W~w&orp%ts>K9V4-T$R9&lbmWj>T>D$i+Ibtv(?yY!c$=ih3H#w-'
    'd2_ScORs>zIZ8wj+fRw6iJvO$8=4qiamd`v^YZas>j3l6`@mjx+#7c>@&)`WK6V*Cc!ix6s&CfsTYHn&F>ezmlY+akx$7S0H>rD5mSrCGm<cB?'
    ';$5ZOsI-n5&o>vhC1o%j&?wx$J5$xc#OM^?9*&1c?d};1I!kHUZw`jNZoShU#f=Lkr2FcsnC_~$wsTx6#eel_`p@Ij^cYS}=2Gp0-'
    'l%sxZUC?7^bS#h_PyDP=;H%_;on#j8nQmiD!I*a2WYb>2%$ms!JvLNZuCyNqf$s_h>tCK_$@1$C(`1*v;%+wRo>ITjko31jz>o)-Gk-'
    ';cxkWk4uCsscE^7qewzZmcJF@J-Q7ie(a!sIBHq7m=GBBB;E6j4UwSPRy{4uWaUW`WrMmVP{*InZ7NL=KO-YV7tPsUc+)($huFnW;t}X>#g^f%'
    'WLu&N~a2$^6-9wrh7jxw5Qs$**d5{7AGV?q{NcfuN;Y-c(p!%-lKXKY)Dw?>;d#MwQ8@?AVZ!k$Fe9D{-'
    '4?*^n<$@XclK_(2tpUe==3ix}+}z~dVx7*_^JE_FAzaWCOzT-E{|+U;5^dVedSle?b%%-=BH8|;K^a(-'
    'uut3FgWjpWNBVoq=~26JG_Lpiop!z3XzCNI3ihD8Rx302Dt*(6Af+fH?^@Dja=e@^+{v}?P9Dy9@&()=<KvUg2$0-sH&Snt&qK3c%te-'
    '#e);PK_lLUR@@3M_k>04W3_?F>T#Omt-'
    '(Suyk_<vTQqhYT!@N#+QB{{cer@U*lBo)Y3S94#<K+adnhD%dvp(7;aHn>N<xg|MSIdO&v_3rACVZ{Ho$8ps7QC04;I#(5;a2h2vh(ikt8C!v-'
    'ED$)?B6;;PT;=F1nwBbh=RZ=g4!>uD?6Avjpc>&&n~C^a&}lB95ly`ll^7^F^zQ-'
    'dOe`Lr6(P-i@2Y~*y#quO4`*g+?l&r6=Re6iI7PENB(RoG}G6a{J~<D8U8%`xkbgJUgsb-Ij<p-'
    '$+qmSf3Tc<M4qo2wJTO*a5jG5>zo`n$Ah8r*YZ|g=h7a8%#W11mr3y@?@N9*(!LdCy*-'
    '}Hr^1SkoEfR+!0@E6mn2tQx;K|clV~pbl?$iQ4_pi<$=q3C1S%Dxj|NHUj{Z2}F~I}A4B==yVw?(eC&4LEts!YJ;<P2|8)8#K5_fVenynUaPF4'
    '{<>Me9fM){1i-5npa2hH(OdsMdm@efOAQa#5X#7-}Hr<dcy6X3>#rpu`y{7la2-'
    'jhU9^&}j_dSlQ$7=w_MI%3?+JgNXFPm!29=AhmNxt28LkNVMeG2g1>$iq>6bV8C3#N0>drr-'
    '`1`qNL=_hoIRCt<R;eDqGU+1KVN76EUZz}}Ijn%woeVf(%IP>sMfjZ53+9C-'
    'g^kaJjUnRC$ApxOMTnQvIymP)bv@HH<&>VtacY}g*=#0hVnbNDEVFyHV|b3-'
    'WtnV9gQ>1jM`zA4(>7SL^dl$az}Z=iNY_{k)+F?_G^l$5aZtMQ=uzWu&w{llVv1tqP6CErrdBWq+n;IH^Gd^K*qC$*{5hJ)|WEbnMX>Ad2opE}'
    'lee5~(qELz(-'
    'm7Vpopi@W0^4IAjLW@EpVukGV5urta5wjr7f=}9y9?+YV23a#;)GF7Q{eIScKw9KlEwntY|C}`#G|7OhB%F?ZUp_4`03sm!#PkK2v*iNSH7{6='
    'mJ2_iDiIdK@N(Ieh05ZzvPi@bo*FYF#n)dE!!&JA0<4~?bxn*luv45tG__F@O8$3hed_dTCF+o(pAUjgotA{aH10guu)X+|oWh(KO5>hEp0gYE'
    'ZnrlA@ufbXMv^x=FBP?131}L`+$bam;T|sl%pz)DPA^kVAgFf+&HBOF_+7VmI@}5fbsDSu&hu}>3<y9Xw?WlShM;IF#UzlLQZ>fxlcCm&N!B9F'
    '9|x?2vfO_GRc5fpUWBJs;NOrK0g})QzjI#D_S{9B>WjUOHM=L{(ODnluyzwwbNX|qe%3pId!*ex>@@k0)F8xzmyR*f0<mlJ??Pk~`DhINst||='
    '1l1$I<$^|d>MpK(bBCC9sIBAMZ!Mq)jFqrG8q#;MvO;S9fgh1ptV>uciR-zrudEyBioNQg<<IAS2rSWB_?lj>NBYbW6{J_iy1jPcP`jaZO~9RE'
    'ugI!{onk~sOBwn2fjsbvSU$F0FM7)moEA&063D*2Sj?RM3bc85+VLkgTC+;D%<9>oe%wA7cX|yX?$L4r)?X!b?b}y~B<qdzD;tk}+}q}UAA&SU'
    'ltRsRlW(IQdtlAlb&id4qMFqOeJQte;Z3@Wk7K?U0J>)*Km87jZKcc+Zq39MM}RT0oU~H(R`#;f6+lS?TVhG~vhYEM4zW*SzJz|t*bsg_UWSW('
    'hZ>HjBruQjB*SF-'
    'p%`mNgCj;<q3woTf_$)S45~mUp5oGKoRYb)Ux=&?C|u=%B5f2R3<b4GdQ2c!@#{!*kPTxwqEhh;pQ0g*f=h2ek1bS)14uqL=G;S$kW^wbATa}d'
    '+-g=(f^^wIParSxtb1sGa=5uLKe4%F9~i3=w<BIwvRH~~Afdaw_ikdhQ)rl4KxNA(m!+bK(;{$k4WQwC)c&uJc-'
    '*k!d8$=cQ)kd%<rPieIjCHHc}Y7y(zOh@xq&up*+oe~!x~swMHqAK`{cOZ<`vKm{H7hQ8rSw>I0+obD@90Y)`w^KgfgPnHukB+G&h7JvOn`DAF'
    'Cud8NvC0|2p5f^@C{`x0HkhgsB%WVF9s)IK;YZ(6geMnZ6B-'
    '58A^%NDB07+tckut{J3#*)(d5aTDXShInW5*i;(H4pQDN1&ZwA6P@Qgf2EU3*Z(FE>_<X*xIm_|<at?&V3N*6<S3<QILSM-Dz!z#$7Bt?dO^QY'
    'Qg|4GB*>?=lA#iJS&8O74g7@@qe*km$ik*DEDG58$WpQ1HJkmhC~r#V$|ldcR5B1nOj_8Hum<5;;8-UVMs9|Rm9-'
    'WfV@(}WFEQl0<8+eY(}ZNG+;>#eai;2>r;{_1<e<i_BuvB`-'
    'KshmG<WPnUV;Wm&>+{Xb*V*t7_P_!8JV#)P6~QJg|sL71!nio6vDW93Sl1i1AhV=OnP?x)4-lLu&h(hql#IntO<6-'
    '(|(3e%4{SYJ1io*Wr<0+IrZr@jjbvCHfhtz$?Zrg^5x~FgBKBIl|wrj@@$dxQyB0@A!FM)3CR*Bs@CGhdP)*e+tWaD$!EC>u52iZ=ir&HflF%A'
    '3O>Y6sS!-X?y^7b51PYa^WaS$-'
    '&Qz?m#|GNv5gp+P4jD1tf}uU^yhSYOH#w6q>7MvObrQ+mF~04sx<>G?mL%$;Lw|<V3v=~mro6ll+T3pe6t)vfn(ib&S&2W=k~-w6C-'
    '=E;kn1K=f!ft8r!p5dlg#YwZEKAtqYJ-Fe?$ZW!>D+a<4pC>J%-'
    'Lu;bP;bV813j3oHM$naFh6;|FtmZ{>zo~lJJ@j@jqW|?#AUZ|jPzoE2^OwzKIG!l~GzZd@9Lztz>qEI{9@BK`*q)pA04A@Ai!M}Iha6#O>51hF'
    'lx{I>OI+@2Vxq<4#`r<6mF;;AIy45qa^_f<G<N%Pp?UNKSmp;ir71l5CIqw@GPb~aJ-'
    '+n^O=Y2mskBy}{v^0&B{98_Ue|%yQjFfoU<6ntVD{_!jTN&NA==}*1BD%Vv{6wx@<wH7TWKa^7?gVhog_EEG?9mt;b!mpvM+yJPo?Vg#EkB@-'
    '6iBj54^z%^k|pcsM9q}^sS{N+Pe01+ZRn`pX+73E6WSZRoe+q8+Auyouzc5KnD?0E9Pmf8*+nQ37@GkDB1gM{lj1BuL}blK3*2<(Y`q)Ry)!f^'
    'OKj!;Z|_)}(^jtE{VSAyNTHWFhQyuBb(0w|vQ4iI4B$K_<6(r6u^f;n60tqK>Hq2P=pXBzv%AthC4nE!w9SWmG3?{)+1>Nn^Pnz^Y56oaOjh?p'
    'bRw!S1D{C#NmIIe*v_2?vw-;{8;o)$QJYcsMs{sayf~emJqEOVKjg4i(8l-'
    '+6WlYkN*Jszrq}{M>uhzD!P%kCDfTVYm=?^LdA_jj@o@&*@4ws4M(A2tbv`J7VHM~@Z&{H>si<Uh&Ytyl$;~|`;@c7sbJpySj|aW;eg!_YnxoM'
    'vdcSo?9e2S0&Yl2UtuL~X0FxBh=jpB&e3tI{+4gg6OrupIZ3=mkbW@@;kx42an}ZCrqvl};T#t2?l>b5_49C5}*ahDOckrvNa=QX{ziP<As0FH'
    '-A(tUI?*d&K^m=E%+9Te$cLNCN^yE0?UWZBGuY{Cb8~WbMwn<hAmZ!kq4Prh+%L_w)YFw%kRA-'
    '3PlPJz1q|MAuKADFw5rCF4HqEwvM;otL%pmzLs5v+3A6MQb-e+@3R{9qIUaCo-c3lJ^ADdx}f59N*><65)BOs*sj%=i?0-'
    'eB?U&X;+IdyZIH7p@4Lh+suI}?&cvnAF;KI-vnC)UFZzx%6%Xyl`)?L!HgIW;D91*<~6Ca$~Y3`YZSHvLFOZG-3Y(P-'
    'Q}?HqSy<BA3bR%ITJn*(>;b=|hxmTn~96oRkZOPR5PtjBxPy#Q)xY@%LXjYH5FASRsNDf`X8Q1)BRG$VE-dnu%q$+ps7zyi<US9&Uf3p@<D_tE'
    '_NP%w<@LXa*4idqN2L}_7b@jf{PrP|Zw*a5k*uBU2offCLTo}j~KcQkIf<6-'
    'm6)r(0W9z?Fd)5~rKREC`rV38XJz+gxbb{eXN7<S5~6Q&9tMY7FWmau@Vv16K-=g2148IL3-'
    '?8Xjof*=vER2VWR&|0STCL6Owz%>|_3E_=r=q*#k3&e;Q+UErg>N5pzQES%`QP9r^ZjJ^eByzwpO9o`KoXV&O5K1aY@VTmAjva3ESLu96%<mPI'
    'zxKWm68)*t9JkI#qh7a);XUcst@P_^dC)gWMt&xxATNC5FeP*Up(!mI<(8g)pGqENw}3XtOcfi7blFeZ7-'
    'eKUHj2$b*?=oms(DUa)qis2m~^mbJxk5cJlt$sJSjtzL6ho^fH-=Kf)!uf>BrOYzFE0R+oUs-mb$j1x9auXuD%gj03<~HG9iz;Qc$T?)d{#Dh?'
    ';4UfSEn7SHylV%wi^yE^MtdNmCOwsZEYTPBE{<dPsl^xK8J2_s(2n(!hOa-'
    '>}Tc?Z^<BO3*ckqJ`bKE&_RY?ak*tCVJ8A>qpUQwDQ2_*^0as$}5@2h0zz;Y<JH(J&$Eh@C7!l3Bv#&y5%XJ3b0(@=zP>07~mhd&BK$DF9ez!J'
    '7@aC%T=&UfHR+Y%d>SHTw2!oDOeG~FOCWE4`vXMQhvE-oo?rt2*9OQoVLx`FSs;^kRR*xaTl$dF;BhwXr0hEX1ISCge|U|dT?Mu1ZIl1+ZLtO<'
    'L%GX)fb((9jzyGKOKe0RL078b*v=PUU|3pHU|<Lp~!Ot6yN2XDGuaJD6PK5$32WAz|ov*4~h-V@3G?0k{UL4b77@BC0RzL-`l<O)~TDF8;Fk(-'
    't#jXJt|c+uZM_0;cM*)aOig1xaXtZxYZNl;quR1r^~Dvwfw!T)<mH4PaT>_dY^O8+`x~oqubWp3z;55y(IA^j)jb9g!I{0Qg~~IesaEKOR=nCh'
    'q||@O)y12H+u-'
    '4x9}1St<qN*6OG|VMGIAVGz>{c3$npk!bRXG(qePs${a}<0v?7Rog88AE}9kxR+L_?oTmrH<Saj}7!55Tq_EGag{0`I!s>Wh?wubmIiVy*>5!-'
    'Q;f-WN^NY$X+v20SH;bK@4tqbq)6pEb-DWj^<de?P$Y7mFe?LDvYYx7U6LI=QH_Slk1L_GEvJFt>OXk{6kVr$dvfM!A3{3^2aOmHHdFMd2;1Gh'
    '}0m{ArKEnum4Tp`Ldd+!DT{ZR{k5hVr@X%lVF@_`YuYWFB0iGOY1)EHt$AHBE^WlHI75~`RlzL<AY8`JP5%+?S9yRhmjA9j|RyWC(4o~D1$q;|'
    'noX_v8`Kjv)k3MttmtJ2?7Ih`)*Eond2zb+M@F!l}ja-7MS((MDM!gxg!lIyHHQ#mOUPxCk45of1sIuFQ>*-'
    '80iV5cs4+Nrxk4~FGAs(8{yj<G+4Uo1C;+Qp*Q$u4=ullO=W7~7W2%h;Gl!Muw&EPz1&=#EIa$7V+R`BY>a^-)QUjK)wY4$&HxY-_Yh)S-'
    'ym~%8+RMG7Z+>dT|G}QJ5SJ)@W@WUjgB!qy+>;R7j20l6rKXpcjC)zvCJ4_VDE|8Pmr4CIEH$5n~9i|h&zNi?lr!eb9_0cvmqr|;+QUZT7!Ly8'
    'kOIcygaXu*Y5X+tu7|XPbnTsHGBhqAqxV$tUA#m9Wn}#yow4JxaR-'
    'En28^*doJek3tMbf6|a=1v$J;Bojuz+mce@AOco6IbIseFu}9D#-cvWM;$Xc-jjX{cZbf@%$|XLKk*-dR$t$6qsxEBCD<IxKx{FQ+~KU34-'
    '=V4PqYqnxuOCxLpRzI7%65rn*iNJvSr@WnpCuD>e;(UaxTclU`uk8Yh?=IRQLPH$??K8jL}8pu@K_cghVurIt@3eERxZ?VanTBBB%I4nbl;>sc'
    'OM-`7OyChWfc>`5^-'
    'YPsyYmdo3_M!dTQth#1Q3Kl7)%K;_;LQNPfdTi*18fGs4zPKFKXyzxFw{VF)tq8eP;TT>PwCOc1scglYUE!vlRmiCLRy5@xZfLgkQYGYA=ta!q'
    'fzxjc{~>cHsLiwt}3Iyn+I^11jvfAh@?$#U=fDOH#cH66B(yJ@}D1X<Rmjshpu$w`a?$^bdFD+YA4WpK>Du!Y`dc_qe6&lReIaEumQD<k#_muE'
    'uUHCaGB08Fwvi!M)iVTMshE+1q;8H<YBFQR6Yo&psK8qkC@pI>#7L56XA4Vv-'
    'm6fif~^xZjDctW^K8>_CrTeh*%o}MvajFAa>wE8AU#bewdOK1ee|%IRltaJ#aHG!9BAT=kiee%)wOoDLeH!Je4({`&ay8q~EQA*>(2ijzt~hQ>'
    '#Q$7?BEErEjz#APNwaAB0}s0-'
    'uP@!0Yw<y)Mxe9tdDMj11zYa?SrmhW`$cf!$6!9~2Jhqw}J4@^ZX~HGd}QU`xzMo$W$^cx#^yuL_?}p?WTS8yWtaP53xpik+A9MH%_IpcCWRr$'
    'P7)>6^;MW7Lw_hej!-'
    '5ZuiC#geJ<dls&yG0p>JWXgH%nx%S;)$tt7hL$5%7*5)a>9jeo$%TL&uH_v&StK;=<A)Etl!f)w6c6$ed>u_xQNo}jNVB+!k8`ckF>Rir`t1=;'
    'h0y!JE>Q;;SyO%-'
    ')W%9$MALnfC_%Qw!ri0Tg3?3`@PiT@u_CGyx^#U}hD&B+Gz??BxhTUqvoYQp#@N5mZRf@(O3k9D`z0@;X<AeQAC_Knb_#;3pM3OqkSPB8`n?$9'
    'm35Y-CE72$!<y1T?QY^7P`#N-_0KLMv)yrk6)V~>#YZ#Iu|X*$_T-'
    '3RmDtS4*%TWEiy*sQ22Fc#1Y)*64P%cp2bQs>b8xB6z;jYNYzYoi(!6ZhAUb;P0F7$#5RDoKhc3u+L%4l9Wuoj0(ThJbmkRM0TWS3=8<KSp`(`'
    'ojgMI-DkY;+Qai+rY*-'
    '3bBoj`eIxY<w_v32`l4fezXX!Xy?%L_)SE9a!m`8>L;@E}^@8K7F#UilaP;&ORk5eBF^a`B^_aY}P$HcR=(r2rm}UJ6i=9ZNxxSI>cgdNblWs`'
    ';oz=e++R%p#R|8nkxLhi;ou&gPt^$mxVhbn1IkoK|s72@dkJuV-Xc4JNARU?V>Zdmc&-'
    '%EiiV<*TFz*c#=yJpQq#x+)l0)E=R+TC?1jLN+nkemO6nHH)_~y(BvA!8<9ZRV+cHxZ_${y^`L3DN818vUFt;{0R{Tf}TYqhc<8yMlbl`N$=BP'
    'bEvuqn}00h+$|*IgZU9a=7_|+A%dyj32liNpp4VhzY0R%Nj~?Z*l}19I79qY-uQY5)$7;J=-'
    'PL#AoCEBU`Q)+`TV8h&Ep7Ut(bcC(vn<GbafTuW|)#`P{@cpxc_G+kHBy#C_H~DEAQ0{iC*h3<%lp^53M!(Tp<F>-'
    'd%l<{Hr;wV<JoRpbC>aD$e6!Te~@|uRNx(@B^S7gmS$ipGM@%raYu*d-'
    'dLVCwM_@jJdQb9NmN*vXW9vEzB#QotSlE^heQ<_%(1|Y2#n)##ymCkxJ@v75sx*WP~S6PD4=Dt)gbb4WyEAS&=+*8G<b8?`(Vmg%-'
    'O+5@omG1WHqe&d^2QbZ|?*lpGjip8GxuA>;jbA8!n4<_Nc<L?j>tvQTnnJ*x!-w%jmV9AZusc#%m+V&ix*b7fdL9?W-3@Dw{M4-'
    '$0|{CG5l*PXMB;`HbrMMNOF^;g~gVJFULaR~0jRYlnU<(IUkC1K=^ch$|Z=P8DBX*5ENs^ub56%1n~3iAy_tuH-pfYLkBz4^}hAS=IVK|@}(aQ'
    'Ci3@PDT(>1D3{g9+0%1VHhiezXfO6O=rh7u|YBMxA%c?cZ?BAkF>sh=W2@%Y<<AM<1A$M9UvmR4o<$`cC4m&32oK8m#!^XSmOLSVY^qzw}m{L|'
    'nC-Uk;lC_Yp(n#*N$%2&#{W)qAbF3GK>7<`$JCv9@Iv5SZ4XrD0oKT4hN<fw!lL2W(YDwg?k!cH85_)85d1#Bwn<_c{?((#D#iXp15TEYY_g%*'
    'Jcu476dlH##8*g4GUrWbH<KVAL-R2%(V^#(^Ykz^@&e<8@BP;|r#xXJH>IxEX0@;Lzm8K)0Gx-?MmGYK+~~-'
    '<GZUlaFk;8zn~=%}ThwUfP5f+C>00sqs97yjaW)lZPd)qIoR3BhwH?_ys-'
    '2LvJ$oD^;zY5*|Nn6@$_%;qEkl7FZ+G5RaN|%r@CNZ65xX$#W`})!7(^jX5P$z_w0M4r%Pd^|JS!NI}sG>MubBZ^-'
    'Mx5)MjeE6D5D>yF&v==n*4iViXJh3%*qb^P27pJm@?Pvj-3hq0@TfLP|qp&=%cV;trQX$}#x&r{(##`{GREO~Pj(ZK$JRlG8#19Ikm_f|o)j-'
    '7CM89Nn!ced*U;VTG%c9Io=D6Y}cfm4Fq1l+cSo5{J{bKFZlSK+Npf%-'
    'Y_q;QL#^I94umU5TUm;+$o&#`RZ>N)n>Fm2(sn?U_3P5>r37`Rwu(jEM#h_eAb52VsXXXB@n^yJrFL&gw*uDf1L{8jIYtqJ53SYoW^#@D9iAum'
    'rt+i8~fNGe%K5Eq{aB}5EQAKE^oPwzq;lluOXW?3nrxLd;tgNw3BrFE^{2(X+WH2>v*Ru+Ol7D#RaK{S{!o@e)A_#=PL9Q1&m&%xvd<rrv{%PG'
    'X#knN8XnnNOGmvIu1wvb@rnjoE}`e(L2mVM%q8m~fD>k>F@62&oXE7!>+cu%}<{%ia_8!&5x6ElBvap%+f$G1LyTB2Mqc@AkV0{f>R(8E!0kR{'
    '_y59{!`GVnZ<RReu$Q|XKk4W)Ytai00|gD5_4(I>j$da>|U_v|3>3;>wZlxD9(zNJ1R>twHH$l~$}0?bU5Os9`Pitz8&Sk7KUQH9BCG73oPGty'
    '%r?DE8mH==!eX1Yg<7}KOg!_6t4fg^|&=E$Jnc^a^~$wVa3Un+EHxu?kwCGbSpavn}gjy_gY-'
    'ngcl4tG}6jTH^IJ~{Jc>D-j3P$^ebyiA2~fTb$1Ljec$sB6o|#IOtw8Ym4-@S(fZ-my)pnU|N<SON{N--'
    '^O@TxMMBVCjK0WaHCMsFGNhUhm*4*<^`9ji$QQskc0o;T)wNYNIIq2m+3Xd%#V-%<-Y)RONHGSGFfko4Io=bEoY0^$DTVUb#-'
    '{T)6A`3B>#TajOTm;i1;?j1crXX4~$cFELAJ{Ov1+?LuqIkXgwleJPDo1vj<|?Tzm3rr8>%*<ew|`5HO%HM04jzc8cF;l1+@5yXPu8|v@BXVcT'
    '=|K%^rj8*XFmmua%7!op9#xh5+=DftCw@EL6h4rf!^%GAYct<Vw%J*RNkn>&Kho3lX&#)<w&W^}F-Pue_`L-pOlahy&5aq2JnX0E`fS-'
    'D3Q5#)*$!{T%_=fA%l}7YoFAmbm6oQ9okuIe3yKR`fmBLe(W|)G>0K@ZvmYZ3XONgj+xt@bJp(1Bhs^wyRbfAlzFj7a{J(>hv5shwCHxBbCn<<'
    'GLc{f!9c1-`oP&d1KhAsA?8Qu?*Xywg-dqdJClpavVkZV%r9?utjNR0xS^N!uo_@vWryA(^BISq{-'
    'hm$c(LyIC&0oYzhvQDe*HB!Pnp>CA*y}b*;CCH#GK}IXkbcmj{^jGnCh$YY1+YdxG4gAaR6)hjDQn@mF9bP91NZBBeuV4$6N>~j&pKs$=o}l79'
    'hLns!;<P~DZ92EtL_Y&{n`Tr^K~Pj9`YY3TFvEy8>4CMzUtOQQ2~&Dpf|0UrFrkJh?te_28KBR*_3oK2PSkgQHj7bLzlLf;bE12cR0uSXFLG+&'
    'unIO>Cro{$FWz$J^YXfz?hK2(E684M$PZ-Gf)92?+|Hxuo3mbu))KLRX?^R0-KOddcv&_Yv2l@CpPH>9zV()9jWH}@_%PtfxkjMPrK-'
    '0Ao()+S7cp94Wk@K&M(+QD`fO}gX_$T|=HlOG%!X;uhJx=kdd|xjcLK<Hy-me?)4E=&jxTy6@j3eelQl}s*0@kmaEbOe>L`oKuru}HL2m*d;ag'
    'x+J8IdF29SzE<7#dWF7u9A6WM{j4#+_DoUtrHeScuuyH8#WbpXSTTynNtS=)_P`5cR!@URSA-{<&CGn|Uso^@_6mwq_aJACq2J~-'
    'MheYG_5lkREb;d?sa(HsW01FoU8IEHZEi>o<`!?VJT1|o79&7&1~nKNs=KXoQ>2X_>o;530?MaP!x|6AOF)`1d%;Z<oPdUw4b<WCBum*5doTy1'
    'iTij(#N!e+Vj@v5WlSfq;7BN%OW4mmK+Ew$e7NR{8IZH*fCD=$q2v}w1_6cQC2Y~6Y9qFSbCVadv<g|ZUOqNvCi*U_!>2iOA2?#NNWwB~<+^ly'
    '`hh~EoL0<&2?8PuT=&`&3>Bnm1w1TF{**buJCgU)>HCm{Io;sPf0u>0j0<lCatZq=p=66s{T6(0FG-C;b|n?QznaKi(903oAAq%Bm|V#(fy({-'
    'bSmCG$t$hLs={RGrTa~hDIe8z+5^4sA&SWIMh0c_+FPH~wuSF`m35}MK!0tHS3LdRi3mRdPFZM#QDnB;uWJN#{Yc-lE@89Y_zLDC8mTsWecl8d'
    'qXx3xD1I><=`8o2N9zxVjx+hCep<ELvM^0U-fs_Y<kXEV``h7B=#1|s)pV`Ca-'
    '*3hX7Sul8WXJ1X&it`vM##&ZX$rcjh;=tzsZZhn9ca1N&<S>yHlI5|r(aBBe{I{J1@&e~g^ke7W)c5lB'
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

def find_root(explicit: str | None) -> Path:
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

def make_backup(root: Path, rels: list[Path], dry_run: bool):
    stamp = datetime.now().strftime("%Y%m%d-%H%M%S")
    backup = root / BACKUP_DIR / stamp
    manifest = {"created": stamp, "files": {}}

    for rel in rels:
        src = root / rel
        existed = src.exists()
        manifest["files"][str(rel)] = {
            "existed": existed,
            "sha256": sha256(src) if existed and src.is_file() else None,
        }
        if existed and src.is_file() and not dry_run:
            dst = backup / rel
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dst)

    if dry_run:
        print(f"[dry-run] backup seria criado em {backup}")
        return None

    backup.mkdir(parents=True, exist_ok=True)
    (backup / "manifest.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    return backup

def install(root: Path, force_replace: bool, dry_run: bool) -> bool:
    cdata = unpack(C_PAYLOAD)
    adata = unpack(ASSET_PAYLOAD)

    if sha256_bytes(cdata) != V3_SHA256:
        raise SystemExit("ERRO: payload interno do party_menu.c está corrompido.")
    if sha256_bytes(adata) != ASSET_SHA256:
        raise SystemExit("ERRO: payload interno do shiny.png está corrompido.")

    target_c = root / C_REL
    target_asset = root / ASSET_REL
    current = sha256(target_c)

    if current == V3_SHA256:
        replace_c = False
        print("C: Party Shiny V3 já instalado.")
    elif current == V2_SHA256:
        replace_c = True
        print("C: V2 detectada -> corrigindo HP bar + prioridade dos sprites.")
    elif current == V1_SHA256:
        replace_c = True
        print("C: V1 detectada -> atualizando diretamente para V3.")
    elif current == BASE_SHA256:
        replace_c = True
        print("C: arquivo-base original reconhecido -> instalando V3.")
    elif force_replace:
        replace_c = True
        print("AVISO: --force-replace ativo; substituindo um party_menu.c diferente.")
    else:
        print("ERRO: seu src/party_menu.c não bate com BASE/V1/V2/V3.")
        print("Nada foi sobrescrito para proteger alterações manuais.")
        print("Use --force-replace somente se quiser substituição completa.")
        return False

    asset_copy = not target_asset.is_file() or sha256(target_asset) != ASSET_SHA256
    changes = []
    if replace_c:
        changes.append(C_REL)
    if asset_copy:
        changes.append(ASSET_REL)

    if not changes:
        print("Nada para alterar.")
        return True

    backup = make_backup(root, changes, dry_run)
    if backup:
        print(f"Backup: {backup}")

    if replace_c:
        if dry_run:
            print(f"[dry-run] escreveria {target_c}")
        else:
            target_c.write_bytes(cdata)
            print(f"OK: {C_REL}")

    if asset_copy:
        if dry_run:
            print(f"[dry-run] escreveria {target_asset}")
        else:
            target_asset.parent.mkdir(parents=True, exist_ok=True)
            target_asset.write_bytes(adata)
            print(f"OK: {ASSET_REL}")

    if not dry_run:
        if sha256(target_c) != V3_SHA256:
            raise SystemExit("ERRO: verificação final do party_menu.c falhou.")
        if sha256(target_asset) != ASSET_SHA256:
            raise SystemExit("ERRO: verificação final do shiny.png falhou.")

    return True

def restore_latest(root: Path, dry_run: bool) -> bool:
    base = root / BACKUP_DIR
    backups = sorted(
        [p for p in base.glob("*") if p.is_dir() and (p / "manifest.json").is_file()],
        reverse=True,
    )
    if not backups:
        print("Nenhum backup encontrado.")
        return False

    backup = backups[0]
    manifest = json.loads((backup / "manifest.json").read_text(encoding="utf-8"))
    print(f"Restaurando: {backup}")

    for rel_s, info in manifest.get("files", {}).items():
        rel = Path(rel_s)
        src = backup / rel
        dst = root / rel
        if info.get("existed"):
            if dry_run:
                print(f"[dry-run] restauraria {src} -> {dst}")
            else:
                dst.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(src, dst)
                print(f"Restaurado: {rel}")
        elif dst.exists():
            if dry_run:
                print(f"[dry-run] removeria {dst}")
            else:
                dst.unlink()
                print(f"Removido: {rel}")
    return True

def do_build(root: Path, jobs: int) -> bool:
    make = shutil.which("make")
    if not make:
        print("ERRO: make não encontrado.")
        return False
    cmd = [make, f"-j{jobs}"]
    print("Build:", " ".join(cmd))
    return subprocess.run(cmd, cwd=root).returncode == 0

def do_run(root: Path) -> bool:
    roms = sorted(root.glob("*.gba"), key=lambda p: p.stat().st_mtime, reverse=True)
    if not roms:
        print("ERRO: nenhuma ROM .gba encontrada.")
        return False
    emu = shutil.which("mgba-qt") or shutil.which("mgba")
    if not emu:
        print("ERRO: mGBA não encontrado no PATH.")
        return False
    subprocess.Popen([emu, str(roms[0])], cwd=root)
    return True

def main() -> int:
    p = argparse.ArgumentParser(description="Instala Party Menu Shiny V3.")
    p.add_argument("--project", help="raiz do pokeemerald-expansion")
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
        return 0 if restore_latest(root, a.dry_run) else 1

    if not install(root, a.force_replace, a.dry_run):
        return 2

    if a.dry_run:
        return 0

    if a.build and not do_build(root, a.jobs):
        return 3
    if a.run and not do_run(root):
        return 4

    print("Party Shiny V3 instalado com sucesso.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
