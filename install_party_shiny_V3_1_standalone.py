#!/usr/bin/env python3
"""Party Menu Shiny V3.1 — pokeemerald-expansion 1.13.3.

Hotfix de compilação para o toolchain modern:
substitui CpuFill32/CpuCopy16 do buffer de nickname OBJ por memset/memcpy,
evitando os static assertions de alinhamento.
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
V31_SHA256 = "30a54704fcee15151d00b4af9f57e41ebc37d26371a7ec52c8500b2dc35e4153"
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
    'b7;Ax@w`IRE_wZ>~H&P~>TD@xzV8?@>|l`}zsQFO6X7NoA}8`FjY6|DU~gTW;e@76sq+6{YUj+Mo>41SHFD(Q*d}f+SiXfCGS{X>AUo2o%Y(Ko'
    'oWrAQJ87#EF=Qd7GDs^8*v-'
    'VaJ)*iSq^ilk+8$xh_@fS{DGM<lb_0+Y)MBa^=dED>GMK3aS2V@}hhp+ZfQFxY2b%Gr;5Vj@RcF7rO^%9k0)GULtYI#loy(156_=5#$C1lAL&0'
    '^*((V<(iFrJv#_#_If3t{1B7x0o2rDhp-Zm^?VCQ-QgbGriZ;ogOxiIe?B;AwTfz0WZuKj^QMwcMSgxbl}eknVw^R%KBa1z3?XNYR;zQm5=zcI'
    '%s}(#IFY8^98!3M`6?jwxSPl$q9K`cb2wlT1j!*}F;61^X?)b>zb3~o`vtMe^=l=Vjzl<{v;%z|*^}(#XoKS<3rhm2SA}b5V{lOkO@yr~q{<UE'
    '11^;u=+<-'
    'm(nnGd6x=Yv7sm_Fai@+uA%RgOIprlF!4~#t!^qCv&VC*g!1Bbk<=Lm~RXQ(>n^_F}>VtrvOW@X*AiLpc0d|HJ$T4==xBk8tjY5Bh)A2$)5s|Z'
    '+`$e^;k){Pr=W!TJ$*h~e>^LpPP&xnN{D6u{TDwygBKG~3^Q|KU*5FKWa83GDgJ70trXxC<KGjBSXX3I`R4f5x+DZzwk+Oo_Ke6dsseU{LfQj='
    '?yVE<awX&hl1l$~kirzf}<x$C=e&*C?5Z+@tq)G9UAWTf=C{iLx?g&_5Ql&{l&r>A|htYLfX>u}i^6fdz&ne7XEGb=*nmna663xg<urwA!Na+^'
    'Rf``UfSH8y|q*qX(p9y7BhBj&KalftX^d?WZBT05as-'
    ')gi+=;JNNSrDchEl7Yh3+i@gG@HK_HMlTbr{@urR)SKnHiyu{IO>pTuArJKz=HMY@$T2%p_Z?JJ1N3lyI2+&hYf8HW;2Z2S>PmIajqr2x10={o'
    'wT4on!uLP#ce<tJEwArli;w2o5@^E;M>?uwkwqSi++)(4@}B=Ag!6F~t$*`jhow=r#I-'
    'POkxgH0wts1KS&0(><W?!LZvkwoL{2^xCHh^wxuwXO%nZwDz0r!y!;_P5|T@Po3$SfKUX~y4_Z@)~@FTqJx>N2r6o`*~G_e1O>s+^uKg6p{*&`'
    'C^pgk6Uk<pkKyGn$DCGkJekWl)v(syM}y@-'
    'vv<5}E|>h27Nb0gl8SpomfR{nS*JIw;|{lklqpG!u#(zY@n=Y#qum)Yk04{wP`EJQh9xop9`pJlng=&{M}uU*b?;=~nNYy<qg7st=`3>9`iW?;'
    'kU{Vni*L^<vYQN!D6>fu?Zio$)GC+B9mWKUgCLk=mN9f_Mc13>;ssw=iji_ETL?r-'
    'ovzqkX9yXV$Pjit$$b(3X}Y+nO|Uc=C{Q$^(UXF;FFPj#ORnhrIro0E)?%KqwBb4I!6@lu^~JpWPgxb8jHW#CseC|0e0}qc{8A&~@+Z|TT}z{V'
    'pPEcNslXfuoTyn-Fbk2g{W8yF?UJ;6i!chpeXcRbzmxMB_Gj)0=sx~63~rCOPFQ)p8$at{48#qzozpWICD}@qg!^1F6QNZM%QUKo3C)zM`fpSL'
    '4^8Sc--'
    '`6xJebLep|GsYCCZ%+qt}Ta%`vGJP5b2h@ZvATI~|?EZm+$m<Kl7o{eR$j`H0zK#la$UGj}IWz|$yxONT}QKH3I^%<d3F5sp6%V4A?Y!|8}?{r'
    'uV!$GQmSzz&^1?FTTgOWSO3Z~qCDKf*a^0UrDigaqQqBd!4q&rUF%EG19;YhVJTMCyX%y_y8mE3#N(iK<i?XtI}kdhS)!5)2m~k~G`ppWcGjZ@'
    'D)mQmM+<oJK5il2_s8PAm`^pgb2Q)GZ7^7YN2*&=$nVCO;x<D+H|9rXU7{j(Y|CJ)$lfAl|j)ZKZ{jx*w0HfBh3Xe%tCmNT;*V`{V};AfI52#h'
    'ARY!wMxkr8&P9W)8{C36zNRfvKd)@alLok|!OBo{~d^HEALT-AaU!zQ@20_-'
    '(d`;0mI3$Ot~w;mD~WiK}5OLg(`!aIOK94&2Ewx<8qapbHoUxjUi0qhm^d@?z;$WGGJC0+f8q;15+rgaOE~>No)$$GybM9FE3|XoL?s6iWyXHu'
    '%d65{4oisBKLi!a;sixwJq)wg5|^v$g669b(5w=6(L6#}PoNFe*Kx<U%~`Dt{^C7$k+yldL=<+?+-7vfNc0e@V-'
    '`tFv8MnPkyCuxqF<9+LX(A3Ygh`vaIXaIDuF2B#IE;L=f%k#lTW`%K0~1+xdL)5<{C;qGsB4ozd%K~$IoSM)w!Y4Bgp4r{&rM*U>3VVdBV<&_I'
    'MSAB8e<(@=L;w)nb)ZM-bLvVrR9-Wab)-(hv0Y019DqPAA;k3ajy*uC~z%KCYMR+c6-'
    '6fXh!oQ<D%tx{FO5w`hX04wH{1QN#IDQl@Jd(^2F5F)ij0sm>?*NbDTwr|Vy>a}T8*l8xq5vcpljkRV6R-'
    'Bg1zKHkpb<%Hj0q?0hL&&nnpx{8zTT6oonPdP<740&S)4Ex#TRm38lJ`grUR6p#8<ng3`PVPB88AZIP`8AO@fHLFcB6QBG0%*H63q)@nYmf;%H'
    '=RoM;JG1OOW0oc{C$);4*AlV3ZL4>!;SNn4HA(RA)l0n0G+^cJYmxme7_;n;#{dzMv`J%btcE%bmRd&D;qpoM;OzL#vjN2rLF@#m>CLv@ehhM}'
    '#t2SgliTZSns7QHA1R$t(~0)M{rKoPofXO2saDttV0>0T_2GU#^E`cntZMr+?>rA<x86?YJ1WD>8S@@LdnQkrlI)zV<2oXn6pki=z1sIkbEDRB'
    'u>T{572xf^#yxZO<`*$WvGbCaqn!6g7_7q|pmMPIQXY`m3FlU$KN8$EQRni67)B{fD#Q*Tbh42*)MB`z;elzc(e15UZOD55`!V_gBK(>ccAx_E'
    '%S$t6f8pwYwOgb!nUf1^y{(g)0Q)(~>pF_t<~Mb{@%#Hm0nPv078+|*t~&o>H@px@qKjGb5m*oz<ZG=4hPD?g~)E?qXMPcOu^S1=mV4?OZJj~O'
    'asc$;mCCNH#}Kyuq^c94v@7<DRYIjcGgo$B(3y(K;cmLy{pH%mz>JRJcWCr)EhFZ@ewFz5}5yI617@7C&={K;aoNoNj5J5J(gKbPv(z%Q5lJu@'
    'OUM&pLi+adbkpCj23HcL1x!!!5qRQW>jkz}bIW8+!P-%lP1{vyW=|2Aa5Hpf}hywGP+N~f46jp$}~W^|nNInK8!R`VD-UzKG3m_hz>#(jZkWTj'
    'rFO!*_pMjLDB)LB|;AQ7wlNl|yy$8V8#&Qp6Lg0{5RN!b`-'
    'aO*jC(PTxJ2Rbhn&hR2GvJuM)*)Q3=f`w5KqivFLAP0xBp;cNA8lGb;mNO1v!U?P?XE>D2=?TbdA<erRPQ9>Hh$hVcWJ0HSTjVaqmY0*Nz7BX2'
    '_=~^HjN&qKd2S14l(F3k#Dkn9E7}Gzy|&k%dEWSBMrM~xT`32&Doi3WX@r$HDN_qRb|=H{d+>Lx;j+W>k=Hw|PH(th>%AKu_G)L+uct>KK1#o|'
    'h|4@SOz{xWO38^&4YU?a@=b7-AV10iV1hGBqjIq_G8FMYKAB<3+lXE4($hu}fgsWcQ=SkXQc75nTB%=11{%n#lblOFV;%;S+5O~Mc4vDX-'
    '}p^}9dMKDe-xM5WErFB{Ux~E_`+*b^2Ef%Q=_wo00Oz0H8|+JbkZz_n4$BCN)i2yyqZQID5&SV*6i@P<)t)81c^e2BnARLTOxTfQI)Y};yxv*@'
    '-uP9Y@RfPW)QUeXr3l8mCdeJ;?+T<ss73Fajkd8B~&!WkH?PiB!hRfU_&y>u^87uLh(^3Gm5Qp(tc2!1St;q=Sh2@WboJh2gGN^8zRaPbOOupK'
    '@v)0Okl_gNhx3wF@IH_9e>lV;0+=eOABZs>#jDV;&LGy#_tt#VV}PJ1w@>6O8A0>*g<{S`&aTd0o)8O<!bx{xAnw|!OD4|aG;IT9!(pYkRCT)$'
    'IF{~x754^^5u;`Uw0|W>oh%>_KKXFUT<toN>+@f9rF5f<N6b}>?kSZ+??*Y^ZCT<`X4>L78`L3gaMkwI-hbtl4p9PL$rIT&+nUFDn28mDQBCWk'
    'E}_Ofj2z^b^ocTf|eNg!aATGBdy3d`pMGCv8D2+Z!n8m3X>`}Ql&KMG_D^BibyXAZc1^HR{a#D9RmC(f!0aH2zq)`_So2q_#PwWGxR&NV78c$T'
    'zP0R&bV7Ms(B_T0l|N-HW-LmNhEMA+s4luNg}kHdp71Mc2sK}ywUt;`Ba!Iw1JPOD2Fa0ai^JJV7mRpXQ*~C2Q2$nK4|PY_J`i=!%n+(mhIEHL'
    'uP2?9=*{XG<w;?R>-i->(Yr>QtCWpf;05aGMp3hZqR=1tX}Kch#|X3v-'
    '4LYTAeq^&*(gxpJGnh=;zhzbdHC;#$mHR5MOhR7~#!UnuC;1%b0+)$v=8hk}YH0q+x-'
    '<i7RsVtXDg3?kBfaKWhoKcMWVe9CZ49<80iUi3l2K(Y<y*VMa?vnkaN|##HjRy=@e%mX3Gl&!xA|#S9w8UAFkp8eizZDd`WapXG=GLkmN}U{fo'
    's65eZ&+S!eswN<m-Jgglz%mJi!W^H$QU`n}om#Gex)DB_rv{TB~>$fEai-'
    '<m!A2fc+6f}$o_dyC`7pW<coDibFhU#897oIHg7A~|9a*F<~>60QB%8rJHvQ-AbOH5BvrEZ4l3Coh&N(uO}2YzH(2ynmngMcxOKrE-qo}i>3pq'
    'U(USviq4xyQg~UYsiH;1QE3xs#_5T$CvtW}zK0ghUk0WS`GNoaXlEe!Q82IKtv6G63e#O5+Gt>mokf{GY1<Fp%g2Wh3X?SgsW9!tmGO$!rWf=L'
    'p0{L@~_=ylZk97QAcKocWSdv0?xslMKRTPTq!eYi`Qgsk}g08Z5@8*4Ul9gM-'
    '~CIWTYpJ2*+Eqx@{Pm|HAbq)!LbCGr5CoELQPp&?`#Tc)oJE}72MBNbkm%Zwj6-jw)La)-'
    'eY>CYV|oe|nv(WFE@hu;HVj6Hs+OAGNc;UIh~yX??x+bm@@Xbh-0kAPILlOH-'
    ')mv@4Hi4lw6d}B#ANq$J*S+;mHJ@m*pgMgqgjwT=|WH!zT{A9#oA2BxzgE<pGeDtgS1P9N1gD-'
    'l5N2!7ij@5{w)qu!(F#DD{7R@mraLo53^cE3%Yco%%YZpVi(d7bA`!QM%i@Erf5HrMId@{&6Mk*s^(=ONu-'
    '+U^cUa?n+19$9^SPYN_pFMN18?cWVY{8I5h@86q{2&Nh{`6zd8+|Gf%TiK1UNC+C0NWRzH0~+%9Px%RBRV#7ytE5u;2+;QFJ;x7%mzbamti*yM'
    'u2Iu<aTfxy0cmsET-cj@uw-'
    'J8D#i4Y={_hN!LUrjTsV|6mCoU#NG`eaSE>gl98>!qeN6{cLrD^3yGrNP@+anS|#bUH|+Kr{eEL#ZjYCHzX3Net8AhcZ(l+1tDYOmvZp;QWbEP'
    '#r;@{Ig2)L3vGt2#Y|Bo#P-fNf0-g^!0H#OMJbj+%#799qp|vjzw-lxV=(Cgvh~e!oZf@Lgsq-'
    '`o>6?H<jkXRKDXHu5)~WARk<;BW1&qzmC+>2)$<;{iuq620b|I#XCcV5C@B@tvdMd}I(jJX@52*Ey#Mg?f$O;TM=FoKao%%aUEM+HCN6>>lU!Y'
    '$JE}e@4ai;^ga;15*)T4ax#&MO81FN#hR9+;H6U4en`;hMB%A`5cAA>+~P6`R1d9x&|k1r8%76BF}zI3l3X}7bQs-%#A=!8zv`-'
    'ns&kb_D}3~^?}=kG5e9>|Ny!_?m~XIw2B83r9J=%wEY&R@;p-'
    'v^x@cF^0uF}7#Ik|bVUkd$a7jSKu2WMuTa8%w@S+J2$P*m9%!d*8eD#zgcTdv~-'
    'kdYvV7ZQ!D&jeFN<bcdq9ys43fM^ht&+Vp$8BgRfPX+8rCkr||uke!c7r1P0~#;^|ttWzAPq*p1YE3D-LD2!zbBD5RT)Sed+4}JDTAI-fP3-'
    '=}7{3I+M)KH9G!2lpyYO0K3E{@=(kPN`WjbPBE^n?M=ET~-jQl%;=i3;hvpS(TPTwiwQ;ftU66l71ZnGnf=x(4t8A+-'
    'J~4w)k>ial*Cmz9CbC`?9p7hTKDys~>)ZY7*N91M`E8a-'
    '}|t4;kIexKo!Wyv5=RJJU~qDm4YC_ipSzfZ(<wq2WlMYx`&+N8T&3ARwiTKlyYr6j_1)=AJGoee%Eh=;fK7~HjN>-'
    '=dcK947DJdMSz>Vh*(F)R1xp&#}dgOgr+{igwA)m95nT#N60#{K>y@AgCPwP9aws0fQ8M}8R1TQmhqX#;oO9}7v3y~mrR&-'
    ';Wy=X;qh{@$w0o#XjvrKh8;`xv(2GhWG`?e4V*142q<q27k@$d`V8ZBkUei(W7AVH0u-'
    'lc({%DDra50bv#EO%)hc8Lk_8puC0gfKOI=h)y{dT)~u|_68(cFzaN{zMDH7UmnFj$wSiOjnr$@YpqsepW)p=odsxe6?&n2;*HVjG?`d<?`NWy'
    'lWDX`UiyWSOHnpvV_`+ejtN2!PF*bHX3UKqkFfqc_AdRY=gd)euaHFE!kew~8Pf(NpDXHTn$?_tuBx9|qA>RPrSiEd&;3gMEYJO&`dOa)wfb3}'
    '`+F5MR`7*={z2_6fBuWwyFc;A-'
    'o76)w5VvSD&IA{?YR*pNY+5bTvcr#;Ev>NN$zd>9gru7pb;xwpLtVbT0{f4$nra2CUkyaBiLYbl1jnemT5jX@TY!sJ-'
    '7{yxeP8pd0O=yjD?x{bKjj{N*n4sfd0AEu883*PK0Q8Tw<RR)2k&b*pWl}_AtiWz!JB44<WZ*a$JbKsg?#3=ZLEU4VtaSaji@0WN)cs(UcrThZ'
    '=Oc+DNCYR6*XcPMiCKBW;v8k6_+mjv5%ytc?@bQrc0!BvhS$lD!(-3w!wZrFeSg&GbW({Alx|vh(^S+Kr8$8VA--mGAeI;1`7_ymekwb`5#!#I'
    '3?YYy}5NZ!I)V&{)Yu?NuweSM!j2B_Fw0bC7!_7r9q+k$WYB+^hM>y^=-lRV%qybCY}JLCC#oC-'
    '<tI+^hM>y_$>MtLfxkEky2BGr80IP(pu1`78B(q?M*HW&yoIrDOP<pGrmxKVnX+EoGc)$~aYdoT_CU;;bCd0f?`_6;C68<wSH~%ff9_PHu~`$n'
    'MJ$*Df?!)ihaEn5>#iRuw0!>XYf25kxMYw`E0ane+V&s9i`mUf@kCU;C=ufzY1FNjp;y)ePNVD@8IVgK(h?r;U(#2tHKAhXw>4>Ma{l|8xE>if'
    '}pCE){c#PxaCXcz@?xhd9E37)1Uq2iXk5CAzOA%SG7_iy*^)SY;l}(J}!Nz;^U+Q}6cY_)mlkM6awnlBEo(|3}@=S9F}GjemOUysX-'
    'q3GIH=4Ph}@fW|vGYa*v0K+1<dh8BLlWmT8%GGt3}iXDCQJDC+HOIKE<PXDs%ybwEUd`*Lu;UYW40D-'
    'Md$E=KAystFh4r%c`1TyP~Bf86MvzOAIC;7eUpT~YExXwi3=x0*bn*RG#fDf^t(bQdB<>?vi`i%B{7L$*z3rr?4d!kFhI!r_6d$EHYYlnldOrY'
    'R(q?9XChX^(b)|3-2k%1x@z(jS}5TpdLWVjuzx|J1R;3?lrH4W}f`zo>-'
    '8k`bk)LO^Q3y2&N`>(K$AL1%kv*4q5;Z7#>1G1*Os`JfT)(_6r4@uGi42^j~La8D;3<;~C$p_rYwsVS39RVn#0cB0|+aO8kjx1^#kO;0gxvC$>'
    '*)+%K*U|6xnpiEB#Cl`VhC5W{VxWc3=WxM?;bJzAQ>!kfp-'
    '1DvDR7u|8~#0BprM3uO5n3eh(c26ON4@Ceu$?LtVkN>#BOO=>w`YJbg%~3#|epa;RuV9^iKSbH0<I!Mz9Y@cAMtc_R$YU%=k*OsZynu%@<)@3`'
    'qcsYo$40;bQ$nQ{%>SUw8n@*noiuL0ka^Qa=+8%rjy1+N!gOeXUs6`=S$N2AqZoNx*$tKQ+aVDh{wAxl~Zx*b-'
    'w<QSD?Cr;R;4%eHBh6{S&lu2ID6O-'
    ')(lb5?~pvk>_h7&Kg*8B#c0B%*O6pHRLI#%&<lWp@r@RRS?Xls9ZptW)tKD``QOJC<O#6iIhgLnP)?hEaj<;dtF3@@e!$Y?RC=qGz34sj+0x0*'
    ')Z>r_iRVw5iH%jDQncq?N={I#%M2rj1YTqdk&i9Fb3x7!bW7))*3>N*i=PIo0n-'
    'c@hf{_?@_#P!*i~Rgv(Nqxf9b^OaMee5E#Q?zmC1M4a<#u=w_`8=qI`BgPST7js+Mzf9BdTEkS0<NT+xBdmt%RR%I6yO<t7)ztVrJaM`*OMD29'
    'm&!L}>w@K~<$i~%z0Tm?@`W9(tV=FdSz-AmVZqp>YHgD15e&AX&Wl1Y9&9sU<hiKwURLtna`U$4Fr+;}>=?RN)4Nyo?s_&&at$cLCt9T<Ca!nq'
    'VTIbMgkP$nA%p!KTX3bWiFk2G8^B=8_)qM&YWy3oh#-'
    'xjjL9lCNI&6Aj06X5!{@|v&ealWXi!FI%Vl=Ur8H(WZOp1PXj;={RneN%p=^DtG3eHzQ@SoQX04`8n*s7Nt#j&nt8~45*V0?!@|L+;lGWVB1eQ'
    '8zH5s+KYd$Qo%w#H4X|f=BRE)Ox5Wz9P|5U9FI6*%V%FKIAz|EnV?kfE%`TB8)5yIRqqqvUj#<5NjFD`!f!Gb!$rINjI%bfQq@y1VeLE3t<lD}'
    'tlHzN$7`cN}7_9h~S&`I)ph5b}beyXycMD9nf%J?@fub3GAGm)%xV`kZTCen}IpupII1xXuL_*P&<*}S9;Dt{IPv7YzB`{Yg*Xx>EgUTja~mPT'
    'fqWp%c^#0E=5$LQ9b@ybw6+q;cB_|t0-'
    '{zTL7EW!{g<Up?%Xp3}!7l|fEUf{}?if>WN<U9n(u9mExlLtgYvihKLlURINniwJe89nf+DUlc|>6%NF$A~y%$j#HUT9#Ocy=P)jEHt6qO`naU'
    '<oEvzum{K;dt~iz@R=a=-'
    '4HVqJ2QOIa3f;NCV!X#p71cm`?Gg)=o~bEe&hW6!UgHnacABX+MOIb;{cj}yosF1yIO=UHLR1M@lJ?om*hNFapfbJ+X=Xdd>VWrMNL7VAJcYk>'
    'D%J}`al0~*zvbJPH6_J{qO(r`+pB`1#@rWLMJS$u@!@O4Dh(ry((_VT&_T%b{#L8|Nj3ta2b7a$y`Civ<M&y7f6zf8jscwCJQpm8=$7iCqUF)^'
    ';@{zVC_i33~(5{UfZwH$4_^P)H`-b@aT;Tf8c{*)M)tof50H@<ss=m3xIV0*MI$Q4*TGeN+i>3I3M2444*aPW3z3j;dNIX?ugQYl~*KU2k*Mf-'
    '*u^Ug;^`+u9Y0K=Iy!^%X`@fO38g%F(%<N9;O1LRx?LU&RU!boNhR!8hWq-@|J{Yoq?qh;)&_qOag?~<d7<9lXATn$-zdJ?baTV-'
    'V)N<E#8+(fKuOk%MvOZTSCRUgvxI5zI+K4V@?~~T%sTgUY^9i6L{u=lwa%zm-CAN>)=Y#uR*QWGmNa`sh;VYB4&8V>zA^#m6AfhBJ>sVUwOQAY'
    'kywA$-5M+j`A;9iBS517zO2@sA*98t*VVwRY$7oBUKF}F>8k0&hT4o){tAqznY^n>h5&pO)9yw+I*gfi&#-'
    '<MoKwDl8s_ZsiJ8~lp>Ie?x($vkyar8Tr7N&{ge6#Na+PpPDBTS_j?m}`f=OAazN<Rh_zeG;#gDf7E8&-868>wtIIo5p7kR1y-'
    'R3t0o<OFIjOK6vXb3!yHCdAa4h@C3pqbxnbmLQumWT+Scz9GwLNj8>+KxbH**<}^W}lu)iNh4_0)1^#bSBQw~A%!6%yN2P4Rc1CxK&p&`^x{!c'
    'W=8!j6S_=YrwU#p8s9&W{}<jOETZo(_!6zvo^dy$k}JV#T~)`aoKix;oXPS%#`5Fb{v+LZ0Q5fP6ffEXQ}NQ?C&oDvMx;0rG?^0t{{hp5eGD*|'
    '4(H?bP2j2CN<u&CiCwV3K77&2&`humVtg4hGI%?GPd2GZ=<6AVh4T=j-dwypiut-'
    'n$_=sni0dB;=NhBR)tnB%ExG1W0)cn6VX#G3Z&QNJ}1b@t)!ZF|KL;Y@)Z=^1xCE@+3Wf3|v!#7^jY?3)l5*o`q;xiGlSag^`j+dSro6&`2k>E'
    '!)y517~O0&{1~xCMO3#pa&jJ>DhZ~07l8_4kzanRUm|&vJu6xK}UhK?<pxR9%E<4Q=flB&5z*{2hsSxQnA67ih0XiG(g`7%?;$x{S+G{_@$V=!'
    '_@M|>rV<RElMhW!mM@Lq_b4=xgyw8*;||tOs6w{@@p0244sTyv1I=Q5@r_9i&~YPY3cvd+%d>pWIdz`YWDh*w&tZb6L5suu{DAMdunfc4cDzAN'
    '%<8BGxPGNbTc@Xu$<eLY~aLwrZc62xLi+8C;|l&l=(=+&i|wsmle5OJ8;4Pv(E=S-'
    'XVTIz~3(1E9u&+jmLa+on%;5M?9alYe49q=MJC`Q_$mJF`0mVKOeXsJ&|dsK&(>ef&!eodPQ1%zwII+CbSLSrW?N-'
    'Q`W0rnK>7n_wL;IVz{D4PKY;FFB%i!W%9qZN}AZ~pxF}TrzFV-'
    '1Yg2s&x|ZjluB;x;K_z)SgIyvVtgrtu}QX`Q`^*`NtTkTaGG<un`K2cyD`=TT~+m96*#G_AZWPJvVQH(SuWfd^hT|JHmswGfYu0uPGv)mstWNO'
    'KzKgjzs|RBgK#WZ@~kO%aglIXahYYqq}@iZj{rCOT@YHSa+5#5uQ0gL7iOJmVtK1m#jbqBI_!;|TMAUdk5#3)=S7RjT)E1A6Nu>}p$c3e(u7=z'
    'vY!c)T+dYHU-AuZx?_bX+T=3Th1LhtND{l^Mznj_no}&TlkA5<-'
    '+v7CN>EMs_Okxu+Q?oFeL8D{1UFft;d(J0gT&&%Ep%<2fmnm0=*snU{+a>M>RN-*e(~05zgSymGhMa@4NeQq-'
    'N+rTN_HDm<V@{1oDppGD^qr(QGg_DDTiC2Jpo4AgGYKj#mvI-Ha>1Kucbwoc+n{IiN_X^NC=>Nou7yMjedQ2RD0jZg#}$FF_xPt48VS;Jy;crd'
    's(ot3v*dQ4!8but?FUweipi^zqnT<uCc={M{fRLN-'
    '#ydPR;5$R)IF!jq|0m+gPQ?RjNFy`UzJmVk5yEa3HTLQ%6^<ZEJ!h*4rKg!ABVwHaLDzuMC22Dks@Tzt0T0tY*Kan(q?p;R~YZ>%lV@@ujOsdA'
    '<4r9H|wB4vQq5T9|g#^$xDX;I?+_E}QEg)s*ETrSrvRT8g#CU!JL012Lzq*xYZ!(&O5eW;4m<U?`iQNMa8}s+=NO7A467a=*A2yN_e0do%-'
    '`xVA4wHxVwUn5&C!(0S}9ibSz#b>~rq`89~ZF3=N;+kX-dEoMi}>!GDLFW{jibbf3Pt)AzOH|?Q?W8!f^a#_taOB_Km@!|*a<1?d?dJU8Lc}ih'
    'SoRwR%xnPplSS|Ejs}$WIxw;&;Z9gdQc$oTWu^>R?hrTx*)2EwmJ#XT6u@4hZjV=sovoFwxK?O0d6N9negL*N*jA&Nq*5y=!@*7KSIz}dv$tnn'
    '1kx8U_;iXd!P78RLQ_3mm8<6)IIOR1w9lCBE;kyX#(Ae_8t_zPN1ZVFC`{fj~ReG%;nitVITe#3<5JBzCB|@9Je|hKK1ZB=6Z|$1t6}UMjfZ_&'
    'yOK0IBsz>4azP%P7CjM-SHl}2I^h2q>`DQYr-GUqkCm?mK(e(5=*iKO^?w8?R^@rEfmEg7Nri%*wQ)zsMULshtPAE^8>={7fm&&I_Un(^p+f=2'
    'J>7prisvNpy9H?bA{;p7<aUJ7bwdi_ktzM(He>ObowDz0r!y)w+N|yB4Ix~@HjZw%Ca4uL1Y~~0&We2vT+%3NqaZ0n7;t^OZ%lttTgg9Op1|h#'
    'k9jdNkc95l`!=_6is~qVEcqmxi@YO&-'
    '4WbMB>fO;etT2j8EBT+j_L=|{lXLhFu#(XCA}$AFz;4MWQLc{f{3tEQ@xS@T<l}S2vmJIYV|DC5^ua$*Ehn6ESyHD%`>2K>`fr?yU23pcSAFOu'
    'TUZa8z5ZZDhYj+Oh$}9M*nWXELNq@P%>7G=38*iaUi#rpDMRYX7kryrmREyt#m-'
    '_ZvRc6wp#9{9^CoJp``*aEaVPZfwS`lNS$7f~l%4*dH>`Ks?*Y*L2B{kaJiK|>PLNpS(FQb^AoK>;?i8m&Nmi>ccmT@zNnFbQ^OSQm?XhU^TQ_'
    'M0rGkF*mqz|16qOXCTsuHsu*}cZ%FeG}s{HpE`CZA#o2(%g1b|-w0Dsr{6#&qf2mH*z$ip6gCG64m5kWc6$7g?4avdlthRPQTKW5eTT8-'
    'h$g1lDUE(5lTZ<<~ud9!zieP)1ISls<1r*SdMvUA|Axh2`GcN~)4?#hoaa~*1wxPK@<4npz>;_L-'
    '(IClK0b27#BBfTKFu{}%CQOxF|2)%T@sJgNZr{8VVn~nak(;GGp54U#Jk=Gq~E8&{aaR6j6JpfjHxtKJjB&#|}uDIf36<n#kHr#lF#=%Kz*l3f'
    'i0i+7NWIqGVpCb`wIS4|w2V@IM&v~lL-sR#DbhtXE&YJrd{=}az5hUmN7QlBDM03`HzzKRB$9?>#vUQERb*^4(4~D(QVY3eqlSCx#&gq+#ovF~'
    'EwCCZ%ym33YO>sEXCf>}Xxn~3_TW!Y1)m5%la{t9Vwy8`NQBP2lCT@L3vkyU6ZHB4gjN9cdBJX56_b1&Dc<Pr??VD_5<tt+=z}U!?FRN&@#6Wb'
    'GmxJ6Pc!dy*vR!Ph!`rUl?+D`53$;!n=evrh?odNWpR>Z`OV9iFg%{B>&GdObn_miEQ1MbhS~=+r2fZ3-'
    'QarRs6?pP7l*ov%=tDdeiYH<ce#?1Z`^;~|HniH=|14G|i@j|f4$Z^D`ZExw$aXrV3l|gif>=fJvY{`@gybpW<=p<}0)2Q9`3CK0BuT{96Bb%P'
    'D^L12vx#?uX*NN71Zra0V&MzcXLCo_=$PVMcq7EFZu{;w+muw%Zb<8xVHV*OMp)fUF2~IVWx$P#h^5CQm}Wg8SmYdfW?QxXV0D3`Go36^=m7bR'
    '>OEN!2c5J{@=MiPk0x5tY2nHlo;3!KBk7Rn+gh8m#!frW!BQOi^8^~M;dA`AE?HSE^v;4se?k6pijSayNL~-en&Md$|AhRq-'
    '5*K9GA#KE^r4dAQ@tsWqkA5v*+w3Wyj<ay+s+>2z0&}WA9K6(F^f1>d!>(9plF{p`c7$Q3w@v>ydo&e|8)_~oe^Fu^i^kuOCs5rt*%=-'
    'xDVjBRZKH^oY(n6F_5|6<4Iapv=kf7u9y5PmX$HwSk#3x`alp3tc(uZ4WiN(8kYzn4x0Grdfa*6=<}+7SUi}C#K-'
    'RJ$b;<+o#!|FkLgBTVoZy{ZcZ<Q4>6cP;QWsVgwo$S?UPn(OJg)&K+G4mIr1hm;L^ip)bghv;{(rLQk{SN!)Z=qA=&=Kio*$8_0~ynK0I!=-'
    'VOJA&GtJS&ep2mIT#H0I?YyNe`|$TAiQx;V55#2l2C4ob~lX{@8~dge~7M{`^mbt#EecUY>j%D&_uT&q>yVM`=PlunNZ|7xSJ73l$Sy1Ij5lf^'
    '$u#S7O6~pbR2C<NPpUlVz^JH==<%BMTl4OeMF(-gk557?{?1}V^)S@d3uVu7sXkc`k=(l5|)sxB+GG(bKInd^jU69IGd3~-'
    '=ww^i1dy29ucn;B-12syUrCYPYI^^2EcZ@o!&s7EM`@J?+z#xw?Q}=56LqR`>?k>1Xez)O~*}?Q{>Qqi5tzK*@P!<-G=c<^RkntX?t;FSP-'
    '2Z{a+5fsTcYq^*xk9_Ts0|yF$Mbch;vKCPw@ek(4>LA)r{na~8}EBQmOw$*Xba&p{G(IrUq&%EVI>pPHEDR@&qJ=HbS-'
    '*NaB(%sX|%S<1%BjlQ@oZ4mJAvFOMPy+6us9<<K%-L!;<u-KpuXc7mLC7@29F_-k00-k0A&j%7eP6W4`hw9#(%?_^}G>$lATH-yB$DwvD&fh=j'
    '9lWuT7P|*QO}*qqwY4Hu)cQwR(;Q&-'
    '{bKW2w|8AJr_d&@EDojQ&doa9ny#=x1zVdmB}U2I_RCYU&2Z)nT}bKtkgD%WJn9S5m#L1(!NwOXR0V}i12uI{f+EFsTC=s)?u#Ip{NPBFz{Yqp'
    'P$)3evPr@r2%<#itmM-'
    'k+|(aAwb2MjgsCJSfK%6>gXD|d%FYjhnn~@6M{ab$$}P6L^^%~Os3T$xEuksC(|Z$d7KC%^4fZ5aqggO0GZSGM6Rg~J0nn74i^UvTQC*4`dUR&'
    'YA2%B%$*fAWEsjXR1GW<T9`A}!<v}&|4*4^1aDVENBh;T``9oGT82%m$B~P9}ha0{vfRf>94fK^}d(atTvdBiSEPiSZh6kPAu-0xK4-cB{X8-'
    '8P{jTY3Tk&j-jp$tb3esKU6I$Y)$4JE>3E@kGF~`Ed^b<&_TXN-'
    '91j2ca^U$C1Ph>2KmnC$R;0P@TCN!9=5>K<pPf?6LfG$`PYSa!^uJ|5dnp1c35k$;@f&d6^c_hW)OugQPrP+7U>~&_tjNadb9bwxDV?JVs8Evi'
    '2OIl_O4GL^cR<sF=reu{YHSW7x6w&u$r7gb1v^!W}LAD$C6nM=wz!}UBi0@A`C2oN7@5bdNpr{sJEp7;L6D0vDoX?68HuN1^x{-'
    '~{U2I{+fOr+7qk?5Jku5RCv#uk9Ndz#7Z)WV4{?<7gwi~CV+Hmh=FzB?mw$S1i|GXFfEHHnyrkE`ULW-'
    '=c)@6Z@SAdBUNZp6S{#l<G28jr6up$)-w`sO<tknxeDOO5liSo69T8Eq-'
    'A(b2{B9oXM)WA8l2_4}Kg@~E`#=!vr1r;C)3f_q?tB!1e)4?E2wSMi5K8lwIpuBX@X|+11jouJB5J5gZMv@6s`!@|%6r4K<;($pXW31Kun#`J*'
    'p`Sf-'
    'KzOEH)Wzau_#NNf4}d@6e@|WXjLbO6q9m5%iq0XZ={u&rC<^H+?w{!EPbG3u?^JhS0L+6Tr1lApdx#qlmFP7%ti6Y0-J@H8=x??Uw^pQh-hC~S'
    '$3X;|Hxt^yWVsfdwHh_hw0oVCK_i>o5}O)aQRs_=HP3G&E&$c0V+7|awzi>#44WAkh_=rXlC<qkPmMzDKoTD0EGMde2{AJ8+$A){$*>O_)`}CF'
    'Xmt#8B$_rkOqX@73r{LquMn~<c1BJpYD|y7)8aRiG<q`wL~0V3ouycirvMQqGpCXutnKHsdVrbZJ5#Se_hy9cOy`|TdZ<g!0ElNx>9Gz`JMs3s'
    'Yxk2MghP;J;uRdDk=GyN^{+Im%}cnPEh8^Q27_@+K=Id~n|a2IDb7L7``ZgfAL|qU<|1u>H?tA(RCpET*^JMF;uy?S6ldR3@~Hc2k-'
    '&#J)BDZ$sn^H8sa9c;qe~`8J+<bARd8V#^6SkJ27FH`X^sMhPD#woW7EOD|H)fVPH6=$t)$z(_NU7}!1QtA9bVq4Wjj#UkaT{UF{6L&d2=Ts|9'
    '-2WfW)fD&K_iZe10O;b76+0bjEh%|J_T10FRn&&@yVrjp5<J&m<;LXgYVVaFbxCwbpyJK5Kc;wiy?PzRsxVcw+%#?pq-'
    ')TKLR19lO(CSvoU&H`YL?ow4tYeOmsvv-daHgD6;pBVxd!QA0})N!gh)Z@q1&@85}~;7OfdK3M2Zub?l?;h^8?(jgF#O>sVY-'
    'pujmkrUib<KajJ1uRYsLUl-jlMeY<GYTrs<s(3()&fFw)O9Z0a68A+aU0cj#}RD=C=%30{`8|5+ev=XW7-'
    'J)WNoeUjX;DljC@apy%Wj~tALL}cRsp4WsWp>SF$t^assTZZdgi${*4ua#+=tE@;yuIIq+^k)Fv2HP9jh9ArcpG0iRT3<rz(cXgudRD_5^r_9#'
    'l6=MhV36XSt3fALd9XP}ksasB;nuQ_Na>zCY{=wQUAM>|Fz%)^~0C!lfX0ys0a1m`luZ0JB|(PB26_;4`DY8+gSa|0LJi^Xi)89;;4BAP?n#=k'
    'Gz2_Foua6-;N0WWqOe*^=%)6q2$oF6%*>Z|h0oh^LD{z&U#qthS-dE}A6jnd24<yWt_w&VIKNcFT{_RhaX)T103G90`cH@xzvWdiFbKl0Hj95y'
    'P16E+$xW=rSpZS^nP+pl)Ye6Z!)m+-@Pl{b!ma|7od_7@9)qoKuVeIl;r%m;{_GnmLtyd4R+e#A!uB?Z{}m?Dg>g32{zcK8tq--'
    'f~Mx1(UPxS2Xv-kiETM!1|AzQ*I-v@Pu1i=Xab^O7wSM#cO58>dp;m6|WD%`2q&Yq@#g-'
    'fY7k1Na;EtmqL!<Y^$zW1}(9k|AeL*~vrpsnsyJL5xy44Ie@>r&Rurf7p|~H~S>WC~o*PttDYqnk;BLaN>DOEt+l}fF-'
    'Y_n0pq{KXBGE)YwSb*`favq#4WDKRU-XxO54CT3Vk}7R9$kbR>tybYzU@FJ<zM1VXEOU4EQu&!BS3<4uwveS?bN5}1tp*Kn(+6cLCi@~Md;m48'
    '6Pdzz0z^^V!}x*O|J(ZnBnKUZmxyiOuFXsTwIermZck|Fe67W$uW-&IA8JVBc2QNyy^HW-'
    'W#K>U<s5ufs^QS9*Eryb)JF5gUcNwzdOa!*#k*vjV`rP~FOD*LC+LH&qcmGj#G4#FKsl<3|%qP6AW8VoKkBT}Gm+c`!#2pfw-'
    '!EyWjf8cq;OC7FaxYPZ=gWm2=C{2+8P{{}!*O_{^ljVyM!Oqx;D5&CSqu>TTZb{$(hzRq!i*-'
    'pz6&92%0)UDhaWdyNmTBpefG#wEdgE=OPGCB@03D-lL#ci@f45~dNkyTts2<Axp)5Y4GPW{jk~BB?3)c@mbUW`FBt#v>>sF(EI5-'
    'mWY2aHG>K}xIi=Or{#Pf*Cv%4!w*m#*LX(cjz>zPKumgc-ryC;_#Y59|wPR251yg16L*#*jf+*=OZt5TLGB3!1za5OR7!GUFBQ}GqPDY5NjGNH'
    'KZ`gh)hW|_>uaoOoMe{Qsf2hCQiw8Q<rKtmDSlVAYo2!8-'
    '=d;GGLQ_(4l;bjMKE}LVt8P7``>aufysr>uLwN{Hr8Q*~<9(UR?{!y6{fvg9UAdHNy1^jRsnE~n0a0ooVuV38((UyLIV~M*FZBbnUm2dj>C1!O'
    '9fQ~_e=PU?SYjWfWi<mjr?&Ok)>l1wQCM@G3n4>a6z6e@EtVrw!&NQITj`i6B_wHr&Tlf<u5d?s)VeB_#pc@hvjSOlA@P)wX+=+iRMM<5HH9{L'
    '#<c!=Y4mk@00)smT#uqN8bN|MBffj;0fEL7m8u|*0Yn=9K$4+%07;oq<1x<oXfWfYyH(=x}`Zp0+us1QfKyTN%Sxn~sY=WHDd9@Aa><0MlxA31'
    '4pbAzi4Ttc)h}=t$Su!w(9tfU6=!Q#%OqN2AAkrm#jV$8Q<>DNS#kiguMP5jJ(V4)DQ>(NN9Pk4kxN|~YRx1&gXBcU`bxH}(!kBnU(Y5(J^e+~'
    '3FY`n(o;7H;8bom7>6i#!Qeb2NlpUDYslxxs2ngZu)n2zNQ1O3RcngZh_rxkjW7sDCM~{Ujb0zjFbZ6K8C~_7=hK;tJ2Hb0uF<!gLemfWeglSP'
    'gjippU%}#7b$N`9Vo7#}@U=fmYa8u#FzKHke-'
    'w`~L(I!?diN?Im{HI6`fIia=0VTHMo!};JQ6igCg3~#C4`A*9OHFvFhOwky+UBR(QxJ?z7*qJ=IPos$!c`f}tRh%qE8Cc@MI4e{*a#23%2X<ky'
    'WW}z`?%I6DeSfY=|3d$?>C9~>rXF(9>`45i=W28fTj@%(%WJ4BGX)P+Cir)&zd=DMKCTAhK}6*4P{Hj0t(Q)Aeivb^aQjV+cw#8ip`@SV_x}F-'
    '9kcof8)F~SVM5Bn=yPO`?mqX?hCVl#BEbWJexi*AC}y9lJy0|4Fi-qNM7R&b`$QsRQruIMXC+QreY`xrBOAMxTxGVr@<x*pLvWnn>arIToxPY$'
    'Fr5qIKQoC%#k{s<><7mYUYtbb|8s}HfalzF4k0gP#(Te&?b~iP)NT`@)?CP(f8oYBE?W5Z9y>`i`;b?cRj1x5*J9wY>qgM7H2DEn!yW=0)~WVv'
    '0P`$e`e%0a*8t>oRUIcN-}t5^O2M`-'
    'A1pE*>#!&Y!<JNCx}t%26p${(8yrQm?Cp)H!sTNr3lC?JIqPMj|f#!Owasr=7#*>aJfu;DdMT(6kcwX0z{t4uWkl;wG_k1l%TyK`&3SQYO9v*F'
    'KaKHO4)f;PF4#mO+7RcV^xGv{>Rj-m2M%5lkv_W`mbm7zc=pP^-'
    'K*2!vu5Kt>u04CM9f2n`t3nN8RBby03!Z_eSFqWC)ETNBU!sDb9<HeAsI=+A9oQ$sYQwfxbm6j9twhyC;UG<sSHD&g_`E2Yi(?!;9(AOB7>Zn4'
    'D%rDoZ-pt7>%9m=nsi&_d@cEMGX!PE0_>gQyVp4~`2BF+iSsxM^4sD{LgvHtQzT08leBYvbHu<H~EBL}Kbu)w5I^nk|)Pxnh}Y)4h1L#(ajxqr'
    '_D$W{NWT;I?Gw3^{O<1J0b#?FEbJ$OxTkP_p+Z8O=q4u8#CmzribnB7^liz*~<U3sGR>&7WGxjemcJb-'
    '2F$*7+Bw>bMg$?xE$;i{z+!Zp0w_{W2w`j?}V}g$8|F)6tN&a&-'
    '>aC{jsF5X!VGD#Atw?r0u_KMa3JHQY(Yv`99caf?#RzwkmAF$h8kY#0h70h&xb2XvE9UPvEjLXQcV9rxxK+ukLs5QiIh)42<q5{%r?S=_kJH24'
    '&cJ_B*baW64oG^t8}V-X&M350@CGQOzwC#~p1Q>qP-ny2VIn3WaDelYCRj)%2_gJv6L{@!t|rCYQ_VB$Z^&FHAecQNm7R7?Ik<Qq5q{yUy%FL4'
    'Bk+cC5y*F48u4XxlVaUA>oKYsu30mT;jafR;0|2v>F;5O3G8!!Iuj{}ZG_Eh}VDS?pqg8cirN+-'
    '^@PW8Lj<UhNL{qLK%Yy{Q%Cw!n0%Ca0QSCLB*c$GTat6Tq)g5WvoQzhg>`aBh?h-;O`f5>S}6JLp=LF~Cn25#0nZOvN~8_(PcHg(j-'
    '!)~qB7z|<;&)7}XC0?qZ{PDt_06~Q0vo56jF-o~(rouZolw}4&*-'
    '=XKNm{ZrTt54P+@D*o@sKiaQ25Z~KYyUsM=Z9`_%A25*0A1bogBB%)3Ti;aj!ksk36!#fg4^4<=sk#+C0A*ZB3{fxjr18mUlVt)BPsf{>=H`E4'
    '#)ny5=EbiAXz6L_9V*>OuFX*30;@py-'
    '%O<Crq!=N~GD(eJfi;<RMZNrZ(0+{hmhUwVSRLoWdBGhF6HU@mMVb36oIGDnyEG_#Sj$(26}9Yi^IU;dl6)Zd=0vP822UqzI^+I_Oh0?i}7JWo'
    'y4lQFLTI3;yANm<5`;Eukl?`)aV7Npty6~=5f_kWB29M{2ZC&YvUDR-'
    '%@QHfuNg`Uo`@3`Fe+XnBp*ulk}d~!oB1pQAha>lXL1G1@q#l#|vZSg{EI$ne*v=UXrrG4UufnYNJ8I_|l{^>0K6Ma9RKMKkdeH^*w(G?<brd*'
    'AQlo9t-'
    'r3(f|<^kIkdz|Iyv6OmP9xjwgs`4y(`YeS$CPm;`#sGTC2>XMCtz$ATx~oOhRgF`ru^o%ip)Dzy3hfG<RZg4r&<A=0eI};JQE<bFdKUiv|G|$g'
    '(kl*`U-tYe&V3c<zKU~S#ksHITyAl0EoqMM^6$U<7iko9$d5$|LHa-|nEMIXx+H^WOjEh~*V`4m%2&faUg*Vp5*ss-'
    'A6A%^^*yVmCrBj{Z`$L^hAc!@Svgld^W?dn=Q+V(TRsvJn4Gjq3&p(>{x;<OQo^dGzl$CC{QIGME6vY}{t>(Ib5iS}j)kTo^2$Sh;JZVAyS?^D'
    '*92#h6>V2Cs3~;@#Xic@Caugu)AS@yZ)#0X0k98Zk8`26r$PMCOnY(;F#kNo&L@>{Hp^U6u5)6bl!+w9t&B!8FWG?T*!3r5^etmjJ@wg>Egj^f'
    'c0p{>F2&K+n0hzM&x|czRh9S|u7Em=!-{2g>3xK%a6Xw#)O!~f!UbY@AQKuSF+<*MZtq17TiL082a09od-#_)DJg6FM1Fb|#%Da3-'
    'MQu#^l@q@t%>QGk3*K$k39W;k59iGBl`P=9LOqmFLQk70nIXo;VDdAK;~OxfN2qh9pld!Y<0pjV+?}S<$T+pvbcB6FOUrtH*nr+=|&9pAX7J%j'
    'zn#8C(@+?)*T!u>$j>t)-'
    'q+RWy)B~d=6uHDPO>LK2898UWcWb1XYeBi(v7k*gTV7pWD8Cf1acWHp@vWKmvIw)KdW4DgI)4QC`#&><@rgMM2ov*tURH0QZbTGkbz0<xQP>Fu'
    'nA{8{m1<IkiGg=W(jjANc06N%j`=x%iMz{qvUM&9oX;F$ovNlg*t+!AW)3*3i6smOLrB4+Ly53}Bd>h?xsuCnN^ihLt`Roy>_EHh+GckikX7D5'
    'pwD@+e<w8J<%1J5X>a<9#@qj{U1^jK%>lSrpj>ja<$JiFS)<;xG&_OS0NZ>lhwh-r+d4InBm`*-'
    's{(8_jvn6bF6x@zY|8wKxd?&gf=L^DIRPyaP<=rX$L^^<blJJgiqS51b27Y)2!KElSqW+9&<SzUl$Q2!QTA-'
    'A4_J{4Z4#PP07Aa^bw1E8|8ChvN3PiXT-~jbgW4`?<h>Ss489a)2+owOQeRWx06boM<Ass5#Nna*K(|uQ-OF02l2_s5Q3&txTF8k_KNE(U&E}L'
    ';_5PJK;*<e{>1NEMU7%Us*5O?-'
    'WmC?mdf@8T<)`J6j?i?(^d{MO;B1L0UeX<nlSODO<M$gz`n_iVTq!V3Tw1Z4tog#4D1xbt#nY*$+r5ss+t%?h{5SNC@0SMf+&xsamsj+-'
    'MI7VZ70Q?!N2w-'
    'xR>OSvbmcM9+}`N}j09aKH=&s{yE}ma0WX=kdZWtis}j1CyIW%YDRb(rCF&GD!y^>ij2>oDuaH#Hlzb=*V16XV1M#a*C2CLKw3}(&)v%Av!S`c'
    'Km~%e2T8P`2!P4lM<-'
    '3!bf60NJ<f)ZJ~lP4D$QRP{?h4(CZx2+}0|88s(}2q)(EZ_XH9|2+#m4BW_@XxXL)iXp(fh*&goI27{JBE&`sYQL&r+Kx*iaIdHsEp4eB*!~`R'
    '@Newx`wIu^!NEtL8ErI5Wl#_5L@7<8P;EqYiH?d|m4h|Z17^_zAHTH)!y@ZHXRzj8mRZFdy(=*L7D@z3_R&1Mypv1+d*}=P8f)JhZ@?==4zjCo'
    'VR_cb9=l14(cNBW#T6A6C6I?9tC?zz|Ka{*GEVLu+aTjaB&TaeK?bP2j2E)Pe@aR}xyFTxrQL7&fPmh}LZ$Mm1D1hD<Q#S*yh0aDKm=exQ#4Bg'
    'P=SQS09swocJ<g0&%+uWy*ve$qa?C{xVy?~%wY1W8nx>4N>FyGwG=I#?qtZO;-LqcpxVb-Ub?P+&jr=fh7$k!ujCjK1rmb3kP-Yv{AJ#i3ZTKt'
    '6f?%jGKt~eb;KMQq_G*U+1eP{?Uj{0c8j*rJQf)O$4H%h5&DCF?Ua?yWvr})oq^g}U=qWi#38zcpu`+d<YIhon!;$3RSgnp@r%#f}2^R#rAYnC'
    'hDP>dTxVXsL7V*G~`wU}j&^$MOL<A*Gprj8f&FHAx^F{$0B8V-XzZ-'
    'J&B^if2!kFm|k}&ELb5x3P&6}AMplQ`EXmgOioo9rxzZxDjYAxh_t5&fPDTE}tANwPJ>Lnn@bsA$QOA_l$<QF(T-'
    'q;Wws@zQUwM!LI#fzza(rXO6oo2ryMspUZG28ukGbPY;F1vvrk=SF~Yos=Dztw1TSD*J3REd*WwaAQnC%rWmx(8c`^^v`CkvR`~jm9tdpH6?U2'
    'VdVvhgsNApsoI(HaO{5SReV|7KL_j?cTz^Ear-Xo^3`3-g=XQq!!IDe0(h}iYMS-wbog`*<YU$LG7O`BR?uKeZA8@IO#XnISBo!JDU-dcP`OLx'
    'xoBMMPO*Q4`4UQCAK;ghrt|+^E9WIu+QX1EdoNV)f!ToSmT^{Blm_-'
    '!2EidbMm9^u<>4<lB73FCaLmCj=Hk>vLJXcH;#svcXNtKO{3hDS{uA80A~&Jpnm*Zu<kbw3c$MWU3$~V`&__+@&OuBesDo3_r}%F25d1p=+A2N'
    'kDm{-#R#E415)^0z;?UClkOYqx8vH+tFa}la1(XAMZqCbUUyX)rF-'
    'f|JujLEp>0Bg=`R2Hr@?f7<bLv~#Fw2@g38kEU`~9ukGhTbC@*%V{c8|Dr@y*p6Rj$0n~fl(g=+R7JUunTmMKSG|ERIwZ2zrh6Ut4+i-'
    'i?}klc(Ax`W9=h*1*3r;ck3*1gsV*0wwukPOMvC$!m^ztAKl^ka$&ph^9p0#R)Wvz7X@c|`PRn(UKm@HO%_I|L;O*FepaiPjXWV$e5HBFnO=Pz'
    'lKwx03|qr<XNN;)&`cA1;F=YBDRI!5%`B4%tmxFhoPvFcnjAN|kVHReHk_kjm3j-)tc5#l+hq%nk#0unJ-'
    'D9#r^JHM978QdrrZF@tRg!8G+vra4eBUGN9?6+|(jZja9e!)9}w7&S2hqonP`)^09T%FhBRm?S0!@n{$fTe9#^OLgzLMAbL$d*wlp&CT*E-E-'
    '^KCohxsEqKUPakJOx4>}+UbCcV9PEz<pfV0zdH#GICb>Ga(6l`^;=;VyUF<YI!YHk$BTrJHUB_t(W<KzoD4)h%t0~JRuQHIMbZ#IC;1^^BWmll'
    '0#Nlm&&)C|!olX5qauJJ8H_=o<m!QjZ}9m(K_#+rG_5Y`sAR;!oFmhS6WYHo<G!TlM#yv@$Nq*=-'
    'n_!Vw?Z^TIB&Ktq0Ck{C%p^XLWSd84VZl)KD!#okN!3KV6*^ECB_b*^m6&}>m*%>+K+zK9B<zs7T$_qdid(;zK+U};@mxgvT2!=zQ#FOpf4+IK'
    'P%hv`atIAfv#97HKhpk$_&qOWLASsR`&y@Ib1Jkn*8)Ka$(;g{-'
    'nR`Hatp!*|!V7lv!_E?|(KMe%aY3G!pfEl)!PviC9(7|wy{U70ayaJ&Nli$|n&Am~Ce>}&snp0I!hD6;g^bB3-'
    'zmdTN?VbjbCZavrbnVCsn|$0vQr|BZ!M*(l?#bFnZkUEFrZbK5UN##FyWjXxsi0#bn;n~Nm-'
    '*?^DrwR0PoMB?*jgvIe9mupIP2N;Tv<a;@>L5x7vk2@#jl)+$7(s!Z%U~R~Yl9@U1f$6QK$IdBwymvUoOL-JM0SPx`YQ(<|fWCHRP#`GAuAu=J'
    '->OrGp4g9R-'
    'fF%O*4HI@u@e(Mi<!}qn`uyX&e(Z5YyIt@06zf|x4`X`=PTA5`WOg(WLX*7oqc0sJH|27pyeEM6rhD`aSJ!rP@#j@YO|C5lt`Z+5Nt85$oszl('
    '?9n#*8cHW3ZpFlzUS5ksyTYWxfd&tmR;(te3f(bj;78RL#X`cL))`VfIT|`3p$*HKHpYj2$St9dGFBuX{aVe&<1{X;==azTbynHynG@-'
    'C%S?i#u^xVd%t(Hl;pRi+?{^0{m!8Ukr$#znp31RcM&bNgMPx%dO?3{0{C!~rauA(W^L-'
    '@@%c3WlTjVi>&PzV*MYQ&YGWS8i8AGVS+FKP!g7luq8IzaZ=(`o`5XDT@4up0*G=}(m2c5oWHv--qy!_JgmKxQaa=3@rN;6J2diTs^hrF)b=iW'
    'z}7fAWi*T~gEv87g{XP`4Z>;#J-'
    'whZgfIbDJW$YXD(b4$wvW+qN_q!D)ZaDkayZW0LrD5Db!1TBX;r%W&L{RZOP9mR@HtGr@%NT`q1!oPk(rs306;n_74ki--KK&MhITg!l5zlU%A'
    'wK2E^z;xFU8zgqFU=NtVyDVMd`_b+DPv35|~Yhu>=Vf*A56eN-'
    'P?mk(~l9>Az%WyVMENM15&t^H#B`Yy0HnzGk3G}V5Ua{|7vQ0@bpre;Pi%1S^qIgqiFln#IfX@HM6PonX&tussEr7aa^KdxdDjBwDE8FlXZ$o1'
    '86hC$`mGW0f{J|x0@t_)I=vYXWK75s!ze>zsCFZXZ^H+)atHk_OV*aO>m=$U44=OLG#zW<jl0iVKCd47j-#Z3>f4N2Vu_f#-trU+Y_r-MVT{7G'
    '!e`Asz|9b*${1d@S{5J+-'
    'P7}Urim%9~__hn2$#ZlQe%rg1zU49D9|Ot?s|(G!b3<}uxHJw#mg})|wEb_>8UTVSMYLdlxMle&u<E!!Ur}oyqdPb55;Hq`Oivj*;{|9CFg9k@'
    'py4JFtu*dAUz}bcY$6<tWZS+f2Va(QfGb3njwKq6cZi@ee3kgWO8j3X{;v}MSBd`tB>to3{(hr9Y}W=Sy#~ts$(1Q^Yj-kQOlYk(gd;K!`voZp'
    'vh4M^%7Gw)6j2YPo#5v5MDC2^hWj3fb7MDLHpeDM=|>aj5ydHjye6g7b;Q5KE7K);Ek@nu*QHC>sWOSlB~BMliUt)WQ0*-RaU~a@p$@8S-'
    'W+^}`e#$0^Hy+sG&^2I{-{m_b+Iboy8c?`1G|;yz-D=ENy_LdVyr2Nfu*rIn?X9;MZe+18Pb;DKoc({XX64H4N!?sxSC-'
    'x?CfsYc^z?QY`l*iH0-8`^F4LIZt#2u>-l%<p4}{}>_1~r&kE5t2H7dg4LZO3Y7t(ETi*@ftVM)i2f;617!(!E9t`8AV>MokyvF;_eXL-'
    '5FAir^(}yG>j>&kJq3=z{(Y2o%@o~^=Hro6Bqh?p=>V3kXlVtP&`Zhk%o(T|J4|(1>C{yqDVD*JS??&FW*f<P6HJ3zWzEyyNixUy{md>{Il_Px'
    't97)`86i8{KQnKMT(-IPZu-'
    'Q+Q%}$Gr03vwGi9mBiFP^6ar<^Q#tonf$r+H0vcwcv(x;vd8xYAs?VjYUkTN{I@99dR(|K;2UJV!S$6P<~e<IzP%t>!=yzoeu+Qj(1nPNJ)as0'
    '-2FDPc4)>xy|svc{(Ew{m6z$r_Ee-'
    '^!h;BWpa~V=H$)jqDNASF9(!$R1Hz^}QItzoY3x76vF0CoPFI2DNoFWGcA&;GpJYI4dTv5eL+>)~uLiMjX_TUS{QVFygpc9+;K$w#cI@30qc9u'
    'p*DDWL8NlI%EtsXEk(%0uDmvSZGX&I3-3jEWbrM5=$Cm_I++IXJb-'
    'X=(O41@0^lo_r4(E;h;=*Q*)7GU^1Q_(nUx|D&%2>&S};;QhQJgb%v2D&Nq%Ppa_<53DOr?01R|M{*2jb=aglC^4e5Z`Q&Ytor4a^z1%ylwMd}'
    'h_abG~#$&+}A?F6?XezVWSTv+O`VVD9z;mbadJBs}!p+$D8Mgmjvpd}H)lMasgSeb2;sCA=T$`b|RlI53=6oL~>!b#aliAD*u}o(@2&Z1y4#FF'
    'EB7hqYkjV8}7qrQ=V@gS2cvS~_!!NKG+B;QAl<{dRTsB(4+MU5svwb+MA9ebTw#nqfMt!S1J7tF;8();TaSVjz&XlcbDqDE+$02jkhzif_%sey'
    'MocN}EsGO@$T;80XI&X~FW!a@|5Si5EZk(VXQ&G;$g=sWrTQXx3M_^m}%Wijw1f7!8SV<jCjBnwRrIhJRNh%M;@@7$i3g~Xdl6n+Q?6FdE4_l&'
    'q6Ip1-ZWS8b;WTL24RUsYChChY3c_v>aig|<ZxqPQCrkr86HTUk#f8kdYoR6=;i&nS4GdJpn!y`ME-c_YpUp#Ry^`PD@))_G>x-'
    'Wx^A;x7ojMofy`t<y-rR9#voOGN;B(LU<idY1CSJrU?T~^!K5x$wQElhU>ArGas4vSYXw6{#b^L;I-'
    '8zqySIROK<y*Fy2>lUOvYUH9Wg}Jbr|ZYxpnHC@I*WPak3ICo<0mYbPL@u$ODwDrDLF>Y6r5FDQ?zZn!?-'
    '~02;!hnJ`vx^@iQwW|4ilFyV5`@_H602=Cl(FT&0|V@%8Yoa(D|JgtgP@m^CdWi4@bUl8xOpm=~2OqKZKYDxOqj=QAWz*~IZT$>1lm2TeS;*Xi'
    '_0n$yS6JjV^Ns9RH>Pri?}{F%%mrqsxY6SGNGF`U10&0}zUbj${%P2Y$d5ay?^TtK|<ronAQq$q1PQbLH51!P70M5^64F-'
    'G9J=$r;?ubOC1OZiDxwin!)76(7a>$@OL9%hMjda_DB&Bhlhio}fETb>&dk(kqZqMHH&k`kAB-Zrp90iPd%gA}xfSYWSB$Aou?9Kg67+uD-_tm'
    'uye!U*ophswD#4!nqY=2IZtDaj>^e{Z5cCVcw{#D@Ft&oNYaG+)3iv?PA8a91?<9rUIGxHLA0XLXg=`20`pi5O&LIby92gZ4^IlFG*k$F|@`n8'
    'uIudJjCw|1N5a#5LWa(rW<dQv=VX9GMk7B+b;PfqJdo?hJ;lMy*GW{2SE-Vx`$Q@mo?V0VpPJzGY4=NK4nXdX3ut+3;PvbJ|~f+S(-a-'
    '0_ky!Yx}u!z5<Q|3rv_JO~P?p$66V@Tk@wQXYs_Yt;;8KV<}9YIMmkJJ}9%vZA)<jiW)(^Jd7p6l|t?@WmZSEP=&Fq{3@AF0A4h6YCsyeIt*q!'
    '42KWnoI?CYvW%R(L8zPr(2o0lnfj1u{t89Y~(*`+F~X~G;d}>ILErbYKqD%LHYgx4l){&R`g~SHuU8K-D(-+w;u>F9Jtd<P-'
    '8RPKU2GG(g_qPmyKUKKIsEpyl=FIC*6DpivZb%*$~W5XmV{&Ic2tvw)HVMae(I3<qLcE%qf-r);Sxt8>gk(aPMR==(M-'
    'Ch_4g>c`yEXE2GMndbzz7ljO;|Ct1iKqzntlhA(Hu*N;p<s#|CynR=hR&<RGPMHuNhA_cC|^P<IMZq$P_opKfBOxr${p>C8S^F)7T>Rl>?X>S8'
    'r-3<4@3K3-Hz|RbG4A&k9!9fsSdAda=1reyo_7^udZn&fc<@g}UU2J-8w?(6+*p+}RFG1p+Ux&fs>e?6%*q;Y8eo%0JK-'
    '$f0u2WswGkx}|Hc5whi}&Tjay~zJwYFpWV#P|2q$ROf5bRO`Me14-'
    'r4*yHs@Q;fH@v`?cd^K1+zBXi;)xqt*7S$;a+UUxv<jBdfe+Xx`Jr*Mgp|$JurO0#Oss{II}Q^}C*#tRiSxj537}(oDlwSRpN@hs#An(GHdO1f'
    'kW#*=vRP}>Qe}@6Dx<2`um_hI=mg^>-dztJ*do^=H4a-'
    'gRpZSlP%0OCEz6NIIjKac<*D6|8v?z4)ad~9u>B7Ry!n>QB=xn5lQJP0ZOpM!MERLytlCPo2_ruV=Ayo(@np?AHxDzvx7d18Cf=yJC0IT(?T%('
    'dZatVuB3s+7RJ%cNnV=|J$q-)WV-dzomZp}uaBp-'
    '~Tm6D9vYUy{30u+a?gi6DM0divcglN>{e_QSB7Bg<^pRt1&0>&#1T5#q$OO8>TK^rPP*N_l**hk+Dy<b+);TNrshk;%@({Zw4iwVgZR^K}4(8#'
    'hAhYVc5em??gE`xmN7wn&K&K+C0y)t%0D3_WQJbWB5~^(<E=Dw6JI-KG22FYO8ZFuHix%y{g!(T}do_ZYQ-!tn-'
    'P{GcVI{a|c;;%1XO%jZ8XH;lS$%ag)7nSs^ID$_9x9vh3V9s6#p99YV?Tf7vbLmA*!pZUpA}Vs>!c03=srgm9Az4UZGA>1p+R`esmBb7MbJG+6'
    'o;UCFa<)NH>V)@?E_KYxD&dkZFzGen4hTf@Lvz#Tt?LU>w_}kdD+3lav%=82f<*!F>Eys2E$sbc?e4B%N1WX4qYD@6SRNG1RZIig@zDwZrXUz7'
    '<1LfmmBD~udi;p6Q1DQFa#WtcCmY9qS-tr{-'
    '4ZaxJX)vI0{JF`6MLZNd8dbQ^jx8Xz%d3p({mgCHAYWqyi)`V@#k$3#hp)w7f3=$i<I1Y7UO0&_NyICt^Y%6M@v4{P~UAQqTgQmSF#DJrH_p?f'
    'o<OcNgtd@~VE)rqUi{_7(tN$n!D{g1D#|K?2`B^=j3&Dy|>g1PQzif1+U7Zdtmg6g9QkY~p+4<noeQ-'
    'l7pF#hHm&7ilijA9ZZY0`qU$Et<=bl+%tS>3|-zZOBCzO9jfJ_4lHC83THPgs0LN1x1e)@-1X6-'
    'vmH9Sv`wc!H4$AF)5eYKi|r(YN`OPI&N8Hj~vNg@LbPbH1#K$d3i{*?90pwal?2h`8PfVF&v_tLo$>^&L?-'
    'WpwS6CP82x7{2Ii$8_%861gPj5gGO)STOE5oVJy^b2q>o}@I>%aIhGK5B--o~523jBqRJ!Ds!zZ~4{vgTScpZ%2^>RM@??QQmILt{-'
    'PgwZ4!v)Apdw)j)ar{T6m~vAT-'
    'm7~HR>3&+L1^|&c`YN@KoNFEqnRI4MMr!Q9#6h)ZC5KTIK}Qp~RheQ#W!zwr&6Ze{_g*W8gHWm;MyDRYrIUPkoxfQ_UQ$c>KY=eQ5`w=drS(M6'
    '!(3q@Y*$%0z_J80E70Pqf_2UH7~ze;W7dkGv_9_@zxRJK|<!#eD30Agu&TWH&211{C!F{{kHR%|$6KTvX;1xvtd}?|veV2($f^bvetRX^mGY8h'
    '<hy)2x$ho3LUCA=X54He6{K+m(#*WFyCX#UuXP8lgq^`V#W%*Xm2~PxAGX7Qf6KhxYg%+KZdgL9Km&!m7dHX_Z^b%=vPwk;%I9D2nT3t7*U;4i'
    'q>Z1g%d>!XTaV;&H_V!|-IiYK5XTR-99DMi+!s<@vP%C%J%l`KV}*b@keGtZc!{tyF3IGY9d+W+_0@$&3ik-K)yV6~--'
    'rR|W65&rW6QnraGdu4uA(=u28Pwq;*eEKf?=WYLMelM2+0Cz(nN7OlKx;#sDXihYQq?t1-?-'
    'Me*%IO^`XVdfC5Kive5K+?5jY`={@Uo+IyWT8Q;Xiqn+lEVzRWASY<vjwwB_|*01+{c*GGD>3k48`lZ_h#p^P?w+y=|!1iHO-'
    ')I?qSATfn~3`>Z-nKS-'
    '1b@ty3W`auKbX!Vft&5s>#H9`J<rggFsD{dwffLhq9wEF!^wF6XmW+arOPQMyA>CJ8PSt1re`KHoC>cM3_;d4~^`Dn{bhLk~`nI2Vfy<!3x}Z`'
    'oJ+0YMSRNKBV-'
    '+T#ze&sk=pdZ*RtVKC~TA^oyn>%AKu_G)L+uW%_H4am>&d&O+Y>Lk!}D^FeTbk9zk?cw3U&ua$iWsvP^xHcfKs;uCThcY86n=ux@whGpCGt*p$'
    '6;fTzPQr22>#lP6e|#%S%F0(B2W!Zqxt?>bq}<5@O^h$h?hs6+*F%Em91|KO=Cl|`B>@NbeTdto*}#~)1G3L{z-+7YfUd%5{@312L{DX-'
    'X+OD2!)0v1(wTb7O8|XCR|EatXk8g6K&4%Kj$UoTw5Z3`oFH<|KlU!&#blngLfx~koX}prRo-h>1q;a-'
    '`rj9Om^bs5kT_!OK3VT{|MuizPj$%MMOHn|s*c1DC>=PZhEw*bEPf&joJLc9sEkus`~=!2$vS!KoI15YlJU5uA2qgjscX5H?1SoVXZg4o15!?~'
    'h*hHBiqR-nv8RLc*5vgNm#V?UUfhIHE%8tu(f6J8*5w8>@od&NKG)-7#>3)6JStiq6wQx`kM|V#q`>3fZ%-'
    'cS(J%EO?2i<oWPh~FaXiyJhgW+D-1H-$^#RcOBK8>dj@GPs^suhlsW;riRmjTl-K252<f2+N7lGA-'
    '^Fg8$^n5Pj8Zsk_bhlCKHW`y<=;@UnX{W?6t1mTML~5>`O{J2s`aBu)eZ|EC`F62d)2R`3Afg`ew^LSsI<0+e@J?)8O>Mm2I1n4ZN^MN?&5O;y'
    '%V@5Q{xYL^qp?qAHB(jY^t#-J%G~=)I05b*6=}5E+(P|rr2;qWr?}YKDsiV5$7W+W1c-kFNqz*9GA7r&SUQz2r1-'
    'Ujr?)h)b^okgi#<}mmcjm~D1%+7wDdn+8QtoGmeCao5KHGt>{Fn=u5|pczOFdt7gR9U%qkzZaIVb0iqy`PncSn5z!i~}yA-atO1<`Ne5=8>j5|'
    '}3aoKQR9=XgR!+2k|+-'
    'QzHag6xBRCm1Z!VNaAMc3KeZFr9o;gjwNW8(ze?6wl{R$_s#$pWmwPhz8u=S#R2!#T36biGZtf25@*;%jIH!7Md3;dN@I#8~vq6*OVIj_lzR8('
    'xX^)+*v0qwn4to-!tlt73H-$)fBe@IvcrKr){vxo(58f4MyBCW$N!oyw`C;Jg5GDJ%P;RoZ3~6WircH&%)Gv^!-'
    'OWNSAkn@9wwOfEs28iUeB8rpR9e&!m~fXv@A3qD&pWooB<Tu`^^fAftY`*var>o<RCq?NMF+81M)Yu&H4pgyq?NBp9?!+m;9&0>qvqrf&1%CW9'
    '`qfvq!b(G5))qK(Bd33cil?Sv+=C@rX;Os30{pu0Jf=ySVAVem7BmOBqiSaKYpU_0S#4bMv4Q|y60V})=WC<8~_IFk3BR}i;vP&xqk5a6bf$2r'
    '+X<XUhUE_?%N&T%gVot2jWcQ*m@8E=Hh~vE~@t2df{H+>)={M?~_Wm&b{L*F{G-'
    'x~0d!RwzK@kc)z{LKdg%ID|6BD60_2nYM_eOj#Qs#f1^uP4O2>N47rP24sMoekrjea;+reoPYq>=uTG>W`YFdZvH(KQQ5SxjLtuTR<@bHHdT0W'
    '~+t3x)!EMMO~JZXUX5BqvF6@cEgydMN-O=h9ShRe2>qPm}kPDoskO@6OGxIgDY^71yubsg&JrS568>9JYbC9R%SGZQC4SKC;O5N8D0R8#&J-'
    '@?U(ChT)nKoq*JX1NAMU<Rp6ku#%<JBFx5O`%Yr0*`I;=(LWL1#!t!zHsE=}0>wVGHr$q4^;cj?QVor`=La8|Mnsu-'
    'f>}8CaFj4%<Dk(yZnkTKPS09rLmzE=1@ax{u1COPOc;u5BnMi4$~25Cz4%tL23~F0YSyp{n@Oz;LI^6MqomY<_$c?X%F^56pTrWk#*}}LUK)Z#'
    'GVDHNF^K=f<qqh(tvB)JUP|E~Mj;Aa=mm6e@8GX5euBRyo<)Ay`Bf=aV5rLbo9uI(qtcEp$>VGwszq~_>WrF-auwjwB8lUgtkQU<B0ahuWy&BK'
    'FSjh!SWZu7X=+K(^D8XP-'
    '*tXf(Sw0&@Uw^_39xJbaxTO5EBp^DDi?KM74#zJ7`7jH5ym5dL|L0Ise5}$3|LVrTDcC>CaFTB2zz<yB1NhI!YnDlqS4@`t~$PHtRNA|c6lx7='
    'g3xROh%F%D7MhS2QC&14b^dFc`y+QjPrAkC4O%u$kNS&a(`7?Off8SV5!KznwwsJBZ%$&g$v{O0Q0iCMYd}<XP}dT2CQAx=O<H>fkGP+D(u~2e'
    'M1`DLehrItbmSMpt|&DQD4oX?7d!=nV4D<2|SJUrSP-FikYWwo-8W)=lZh@&ph?kmYGI-I!%OobZl3xs=rB3`{<q@bnB%gw$w@zthoVX>TTrz-'
    '3u;D1Wn@ZXf+7n;=}vO<|;^JndbD9JMqVSGb}d|lXzt<iR=ftaEjhBd9#a)mpWtq^MJywu^35FW1(8)-g!<$Ypgd-'
    'W@HDNwP>+#CB8N#pbMe>l`fAD^Wj&F7N!>(Pk}*G7B|}ayT96Ht~i8693-'
    'clBrMxvGtVJ{#9k77G<jCQAY9f9PsJ&TOyq!9B`gv(2^HTJ@K^;L#6rPIyY{};Y}NK!jl3u%{r_m_dnuu>adpLxTyCtrToY?AKNr@_ND~yQM3W'
    'R47RF7B7N1*p7T+5w+$zC5F?x~273Uu?IF+)WF@OO>|AznKOevU*<C5ZKXG-Iz$lrE(Gpdx073qw9j0eMi#KEX!Abb?ZrU8=d<30Za%O1n$N(?'
    'V~Caa`Pwxds$myesKF3Qb?t}2D2hE`=7nb1s{PST7S71Q1Q_56c~hVw18n>LQ(yme#KYo1Ayi0C|*7nC_@x66m5#~xFHe6WvxzCD}iGu(?m+$W'
    'off4X16q*}xQCRMAEGt6?ct3P4`(I27@nkz;6pkiVUC5Np5YSlV-waDbE{$!e6QzI3pU8Cla=EJ*!9{8J5R-'
    'LUfWv{fAsab(yiIdg8qW0x3=Juq}=*SXG&{Q<7O0sEHEyMnc7Y3F9*bHEc=KV`Bvf66Y()NnJLKc_0w$-LJE;GYqA*-!Mw^XAK8oHl~Jw-'
    '=kcQRT`X!0Tw{!o&W=+%RpnLA2MAX4~T+*#E|QmQ!Uj<|`YdpsO~uG{VO23xs2oL5Ab;SdU%y;M0(k*!8(e+%3jU={f6Wc2@_jgp{{%8vCr2?D'
    '8DKa;Qz3ZbdZD6t)+K923G=_U?mi=KB?>NO6Bor8mZV*m`NUu)LOpxa8o|M;U*sct#{kbbX_-+$OL7=;URHcMh>WaODx7Fya-tu`{@TWw=Sy3l'
    'Yn%;&>?)rS6RI{xo%nRvhXCXLo#TZx?nc(!3x?nJ1wR_fMTjlrPNAJ#DTc8C10^1AHw4)<u1nOduRR7(%n(0RapUZ;O+%{PmdlAA0^2yd!*;{4'
    '=f++BHVlgQ(~c#+|}B{sMh0tYTbFS<@D{}ti6DZvl9_8oVe?!9&23&ZegZN`o_Nj+Q+DfA^J5_xAG;J%Z|uo=NT2maKLuD!7sYoaBz&Y8A#6-'
    'Tx~=uRWhtZuyV7mzQp$f16{VkFORo4Im8d-^kU?hX%X$IaH+@ZH%-uW_vX+-vlYn!VbwN$)es5V|uBT9;32-'
    'C^VBL67R0eKr|AGh3#i$v)_|4@x}mmW$Avo?gSHgKdtvLRn50OSH&8d($z%2!ApzM_T7Ejd#7y!>n?zRja>Sb(MQ?20j*DWwIE<N4C*Va;#Hyp'
    'pvWUN@>;&P9(8szIDKI#*L6C*>F1LCq^U#?Y~{~9~^`1(2a94rSm#5F_iYb$c1z3jsvpqFV_19hXC$%gQ<sL)W8`B&c!4c1&)jPY@Pr0U;mpkj'
    '%RdcZs<DRCm&cp{5%5+`2GK#j(j)5aRA=Ad*Myo$O+M}z#qe(FcJ7CV6wmePq=BO!6z4UuQ(nuVO-euMiBPT$#DcC`={nPIo7!;u47*5L8o^Jd'
    'V;W4og4jT<WJUjKe}eSM})!eCBCgq9xdd3(%2=7O~wU4iC1Gm)~K_``%TFx-@nOt3nwYBoabAI8U7AixnptZGOf-nWH8-pl^H^@sq-'
    'A$5o?$Pa$?Pl#5_<dWT@j&jT>^9P4jx>Mpn^(m%p8DJuzgdBLeLkmM3B4O^{mKptrdQnuj^_GSj^!NBxZ^Y9cPVZBLUh<ymV}$DP3N<0YATjB`'
    '89$f;ikkvGNT;0&%khdOa{#HsLE-rT4btUdpm1HB$8O6x3GP+(xICX<asX;C$hVmx*|!4sf2Q<FL9Y+yqk*0{+StrIz{7AEuSN3mk!Il!@<5eA'
    'Y*xJj7*8J{dh?$o*9Zu{dLRn5{Y%2~jlZ%=p*5R1gBzg*iL#{IZVjG+R`vu6qmSp#ZI*mRmdc-|XOKea~Jc0(5-'
    '_#<{b&)I>+e5M3%>fNRIiMN?#x|_M$xVCJXw|?3%YNSc}hNO*T5^I#fJhesY0+WaoGp5YxZSfz=8)<xN^Ly6Z+r(<JWDwImv;Hm9yyVvhZjB$o'
    'okKH99v~SOyi+#FAA5^w%pH*h9*7(g=RpB57DHl|$vGye&vfI$#SdSDsYg;{!tdU69%h%-'
    'DaOLqU?KnX3`8xp9%ncd%BycctgwZ_dvb5|)!a?b=uIO9SgQ7CrZI2Hx90f6&bj4ut3pnHKIU=`%P84D9M+FI9U`joc%vrK3m=kOD6vgBn8s79'
    'XiAxe8!iPF5zD1WfRD^CLV;hHr76xD*w@=2{1`ow81?i~#Hg%jI-Q-Qce2OIW%0Pjl0l?M#8jT9hQt=+iJ}#^sHCuI(FKUT5BtRL<}Xh=x#tP1'
    '+kwOKejpcrQh>Lw9GZ|vHB3<l`O1?l3b7L<`@7&)$$n9|YTPqnqwz1v(KGxcCTb9=p8uxOF#lZ<uldgc$;P9`;%+>qa0;KS9Vg9gO5E;5#1;G!'
    '`$TZRH}Th<bLWN9uyQVh7paYZjG5_gxm|HyE9_StQ;NgUQn~1@xrYezkw|yP&=wH;V<?M`9WtzIe`{DfZzFlSC~^{SqkEjNANChFH_P4h3K*QD'
    '#00VVlxT+dslvXY+VF})=6ar&kMCLsn1|l`?y}|I`13&^;9v2v%kaS~?5t3EvwGj^o4k&B>o}Pd+>P~J_b|UnZ8~OI=24FsapEH0RmzP@>zMI;'
    'b4goL2GawL!vDKBRvk>NPVvqDuz%ESpRu5`l$PB_uit6cTFpVyxKKj6uda&eu8J!=$E8yISD&W;JU&g2;nZX=)!yq2I>*C0@QPOF5EbZPI$08Z'
    'ycf)a8)rmA)+bpdw^{B0V-'
    '^J=G^p0=)y{_X&PjVvipUJfu_X_`TT14Mw0JM$0H8o^?V8`loAPRhgQJu7exnDxv{Qcvz#TT)!@m%}O#xp!cR%dx>>$2q=e-'
    '&c@837_YQhij#I3`ZUJJ#nsToDwhnilguKk6-qwC2c46?2*$?=*MqS%S+n;zE98G-'
    'H9rJ$>@k$N$tgH8{Q!%?k$NK@ltj$Bj9ywofYGQeMEo`)C-U$Z=XsaYOW-'
    '<A9)&Uj2k6W7*m>IB1jFpU;Bm?RTEWlo2OAbZNKf*JXB0LkrEhhskpuCh~ZuJdlOO6SVCo=3Y67xW0zde+FlBgwDCn0B*PA2d7dz9NQ5w!e5#1'
    '{Njk(`I|Wb87C9{@!wW)T|#3Yu#?ES!>rD=ESOkJ?QS>AT#$Webb5|r6?osTGC~5yqL`W(RJXD9?p331>7LR<CE3^klbn3Q*V>cL$hDZMV6L+`'
    'RfJuhq~bMWzx=(-l)C^qadtb3>n|wTTCu=1|c4)_(hCi-lV&zs>?3FHq8vlRs}-^uJg&8<^-'
    ';i3EWYmHrOO^r*4GhPjkXo&4ll?)<4=Ld<UUFHZgxAcrP=-JLq-#8^zy&n|E(tWdm1hZxXcQ;MNOs0{2}eaK|7<6a-'
    'EY)P7lBx#8HWFD|@)b~){rv%^|%zcH+z>@^CAX{?*j>jC90GwG0B#QiMBPS+q-(yn&lPyG3^7@N#bgiHcB3MONrnYqs74-T`;@aNgjEh-'
    '*$TKkE~c?FS7wq>`2{l(}b@_f~(U3Tidv*G(r>*TmG?DdtuZf)dsF6}|c{zz$hnG|30zT{^k<6BYI+vCY>EUf6rn~-'
    'V_3{U2INpi)ddwY2_iRR*8xo{f)z{PNq%$*fRpi&|FXpofd=#L{F6FlIH2#&TV#;HJe5}Xp(8j=PhPFteBAvU!naVN*3ac}^flU0O|dkfu>Q9d'
    'JWcZU1TUSoLF9BeuN_=h7jshr~vVyBn9)63!E32<XV(_5(^{7la2?h`Gkx(-'
    'LbR_`_Thae=Sj+ivFk17DlQzWL2*{d}{t|d+Rqkg<y%(qG(xj(24PDt{Bg!>5H6x_i=fBMP!e#=<tNto;{AHCIRbd7n6MZoJPuy>@XA$PrL*lw'
    'rUS0iw3<I=V{2i`mB<s24U<{b2(*J%9G$Tuu)OQqO7_?j0XwO*}t)^GN6;)FNPIeZ*Nm~Z&Fxuq0=OicLD^fZ|@-'
    'xSUE0nlx2piPpiH&8nxd_4(m0^ch<B_-_qYS?SMZ@zCh|8VGEK}l<2$+y(=$Qs!X_$z)4Ukw}YNp0%1;ov(o%RAapI<GkDrjGR;AL~0Di`KSIW'
    'oO+i=+qIh{B`<>(4x?YSRp%oL}*c9#4HH2;FI>F1N0`PK{gB+x5_nUx0`hzkQTXC3oVapKW7aFO)?-W38$mml}`%{fC$JwF<k-'
    'XY`H*n%?p=<#XJb9N`!?lrn&6OLS=DUStMo%Ppz4elIyRCVVbrl0ank{x+c~d*eT8+hT15alK-7rpE|u-i8`d{=YybArzIgUjXMw4-'
    'D&blPGQ!DGPq}u=j?i|-R=xPe5v)Qk>riZOGPbL0-'
    '6RfHwwu?xW@|sGmo2ZrI#ru5Y$?|Ms5FW_^#bK?QaBx8jV$cHw|v13<y9XcR|(FLr@HrVl<?tRE@FwWT^FG^jd`Z<A9Y=misTD$_&=ni}7?21~'
    '()|fF$(7@0=Gjr~W)i^~GMt8ts$e;H(RBShInuIsLg+JL{alJ<@C+wi^6LY7pYVOUIaKf!MYAcOkNge6)ssl?lW>g6ctV;DbhZ>d&t`Gmn^csI'
    'BAMZylfqjFoVwG^Foh=|t5013x0IIG3<i64!I#UO6|=6?@epCz#EG2w0*s4-CEhDd{sqRFGa}=l0r%L+wY-'
    'H34^wy<)2lc1jQ(FJ%zm2lBuxV)@whr}0~c;Ivp`l|c5~`F!Gam!Qr2<5n<o(VA7FWmeC6wd3agu+^y(agUZ0aQ-TxYtOwxBsp)SU)gx<<L)N+'
    '`w*l-'
    'q7)jon|vE|*aK_Uu5)Z`Y1OPQ=u5d{3U4x9d>r$g5YRmt1nGBRVk>2ia4RORI0B4`<)oFOx3ZU=sQ^kE*b+;+mxT{9bcB7h`855Mu_63=yoly|'
    '9yJ_~Nnjr5NtVgXLowEl21kszLfZ|w1o>du7*v7Qp5oGKoRYb)Uxcg;C|u=%B5f2R3<b41J!;5R{5rG_vSBPoR4Sg~Q#6E8aOn*=WeXMJ0QASk'
    'oO{R-l1gkABxazGTg?hekUl%;8uGMf-'
    '9z`2$IXTLiOnbbz*v>I9m%rvVkx$Pgzoa*``T`&&@i=t%9c+qOT`nXMd0Kbz`*&a{ofq%xMs!kRI9F`&Y;E0E1JG@P`Uc@l6HKgYZ-'
    '8J18vx{i;{wYHL$XZFy_kl$#Jd8E1>NM4L4fWuibfn6nfsY6eFck>!0Bh%79+m*r%M(Tpy0e-'
    'Xs`(tdQVj1m^?(>wNn*2***<QW6#rrcTI&1;iHO5bLf%&$3}=`Zh4!Z}z(&DbTBJ*R&V8W{~z}-'
    'Ka6fO{~uv;+@T7Q)whSNO`vuD6)%BOrG=nl};*M|C>Ot9|`5*0-4H^=Vd8|Njej;qm-'
    'H9=yzyEYKw?Z$QpWe!fw5!@Gt~PkWZ^6OC|0tC7Sm%4CY>fCc`}=3!B2QC}86wOWAqXXmp37yeXY4mptoI$v_k_X<<jg8iZ?sW1UbKxf#k%)>='
    '%AHFZd{#E|QbGf9R|HOWx9@2IHbjnzBPBxmU4pvJ9eCgQbjRTB(`JN6+jL5n14k?U5v)Z#u2S7d^W%-'
    '9Ae1v8*R+7t5vvwLR>Vca~0Fb}(7FoF#xJ=?))=+5d`)~Pe4idkvP5bTPl{S2R!*+@8cR77^m5|eOqYU6PlTT}S0Zqv!h?MN!}#pR`k7ZGNaLp'
    'vGrY?1U+81PylW1Be%dI=L%Yw;63MMu=;G>}~KS?+=>Yl`AIc&2aRl7_T`53y5f1QW5l><zoUM!(<Kf0M_z6%OJhY!gdtBSvP^{2FCv98BltbG'
    'o@DsbNx5MaVp+290B-`|Pr6%|MHL-enMa^rk78<zxNjQv)RBGZ8)CEQe6&Ik%YeIdGzxJMz%P$X;xC?lJ6nv6!>Q?&Q{8Mox4cEGA>;0^}6TN`'
    '!4$H$QUxt0^pXjFw5*ac2>E5l1ve68vCgc&g(HD{mpoR7qk_)uN}pPzj7#=G>+iDrnrTD{W(wv}`4fg=F~eMR4~JW@)l0)Q<K#KT|DfU2`P^Hd'
    'boz?=3%?6F2XDZx%%Ue9LB?%wv~aL-'
    'k>OaTe&9D7HD>>Y3X5%&0$d0Lb2UNs5@ufMlSGY8U^1d(XC<wvz3;ze1UZ44e?hka#M!JxLW8+2(8;D8RW?%0<aW#&SSnkcjP?o%x^nj`^|awY'
    'ppCt0eGcQgcoo_BPPh)vMR7*9D&QUI}?($p>@$OEjMkqWC;BmX^@c3{vvnOS=2R6N_M^1ZEE(QK=OvNUp7no?H6<1OO3T-'
    '9UaqwyXS*zcL&Yqtg8qx#z-7Ff8oZ2pn~3Cby3w{;@Z|!Ul)Yiat^R%C195Im=NN_s@}<Dfv@Bt!SQqmD$_Sar5Nxx!#$;-'
    'VpA_1j(mu>*E8<ca6h*f+Xhzel(k13KD^^Ss)-%v<0~-enLb<)(l&~p)+Uey|nI~rAbvHE7WB%EuZFw$?ATDPDB-E;1kI|X-'
    'ZEI+qv^#7BGKggHg^TYBTEI$gb_N7pJqc$AFgahkWf7v@yP7f_tV`34_(e6kFhDo$Zb?IQyz|ihT<;rUi3mo-eF>bd;^_k3Z~YBXljSIv<sVVH'
    'N1Mx2#B`R8%rLXU}@O<mMg`@ofo!Ic*LmN5lTvpaOrjn&a^adcXC?U3bVoXHS5w)>qj`fJqAM^YqpWK1=WHbo)6rrqL>qHibM%x+&3_$Rw3d&0'
    ')5*!)Ch+uE)Ac%738|hLiqq;)3sjJN(U7xm{WIplZm$s0FH-S1zyMtOs;y*zceIW{-H|-'
    'VGq6Q_OM5y$+MWUkNF>HuSxhZIi4LEKh;I8^nBumKTQp)VNh8sLl|nCsCX>q|MAQpUgv;2&|SdHqEwvM;otL%pmzLs5v+3hb!+A@3XliD}9UqA'
    'l0N#yDox|kIf*)zhEol><65)BOs*sj%=i?0-eB?-'
    '^9URJ9TrKH7p@4uHpkBb|xT;W=pJxeAwsLPOOI+{_s}`(a6V9$A=O$b81ZJ308%AP26|Q8I6bFZ2F0e+5yk!!||kf(mm?Q#uaTDSe1D+X%5{<&'
    'viR)N4k;xPzbzoFJ;CGvK}8y_X4P)v59(lH4Z^zfS7Q4r<^zcLOE|W(~Q`WoTZRfCOb-'
    'd0Sm;zZxkznb3}&R`)GcBC>Ta{AxO6YMXdv1qO`EJc%PhtQtjz>><hWE?x$*Tff8^CF{s__jVCR4GHRZ>dNB!vgUA(ldfCkul|iS(vd9gC#b8J'
    'gb{eUM7>4B%hN*%_k!-V;B`hFo3{CU$9NFYLBT7=jZtMUU1c`X1!jL(E)-'
    'tU(*_bT?uEDTO2yZ+?Z<!)qAV$2<J}+ocpDB2YTDuO3f_^r1b2KO+kpqrdG9a7fR7ORBP*OpH&sF_$>~NdEO6RY{{9aM{-~LxZqCZ!flh)aI-'
    '0xK}yeIv-m400<zw}L#k)KK_$P3>%Ov&7TYD$YnxuvJyr;-QREualDQ^kfNUG|eUMj088jbd|9Ho!`iYMv8T^<Nw~CLQcqajE%*hnsB+CuN8-'
    'U{c)?5JvA%u;QCL`E)YbH!C-3n{;N<QrC9$R{eq7(+?sGfP|=DCgf393M#d#Isq31Q8O(PFtg|NirDXkS<EETg{_q)X=<V-'
    'waL+yQ^+f^9@4@ESf_Jz`lqfjY2ZGzZ&+sJc4UZ5CEyxH(ZX(A7Z=&S_U3aR6TN8m^}}d2UU^{iY(?G*<(16i!sv@^w!3GYp2spL_yU{ugkb;>'
    '-SQMq1z0X{d^YY64eKAf&GvE07Xr<VoiqK><tkVvz?o0I<>@*OE-'
    'm}~9IS}o7srJ72QvsrDZky*Zm)Yp1mIFTPTS_37hIY)<i|RB+)e9d%oFcES|{|48SWnjVT(Jb9vqkuftjN1wnb_8c>6PT^+h-'
    'CMC*&WpN>LgDr4olI#v?tth`%%n*)iBP~<r-6yN2XDGuaZP+EP9k9!zLfTKCr9uymz-'
    '($t0B{gj9=B|~Vlw=u|e(&_pS|@IXHxM5oyys^&dQ_@tUJns~!q?gp;K=QD@XW{kNvki!!{y^#x5um*wfwWJ*2G2SV;!1E`d@N!Zs^C?(QRw)g'
    '-j2jUXu6{$3jLlLi+4GDZDi!KRH{ntyp%kL)}}{CYYk1n>_^2TX+eER_QB@iN<hL(Lz-'
    'o4MGxXK{hx`xCs12T5L{SnIkC!z{B99lOxRCMbqNIj?$}@^YoyYoaLt#qoD<a6!v#&At`#QusWWWd*{bXPAG{{I^^kncq7@+{Gu|;j`(oy&0^='
    'J!`=@NJDNkc*R1A`eB3=88>|!Q?`Nl{&EZ#q5hq`D!wi%@pq_9cI{;O_WUlQ5h%{6y%MC<uXet<mL;n`cI|r%-'
    'hY<WOQ1%7z8AjM^IBe|HYtB3Bs<H2QoYE73hyLo%F`&f1{<&ZUcygE(95Q_#0~Q0!hktk{e%RNPdSmQr9d9BL_kxh38u=eav5HZvn`BFeCvpm8'
    'h`(#j=l9k8)OCfZ&s_bb*B6sTT?zU%4q^@h-'
    'ZUHhu^0Cumq2P(W^<}hZ^o^#C@5IXcip%j(jAO~sb2}I>~`aRy3>qe0v;klAXxb5v>6oQp~=k4rOn>}XxjjeSwlHBGzRsmuS!3+#S=#G%-'
    '5jYn%&t9@L5}J0Unn-'
    'q7kx!*B_TF|A+MYKT1ur{|V$~XT(=ja@WP2quHX0?qKMCa(m;Eb}qQX0Re^|CNU);WO>XE@Mz1xM~Bhp?znxdz2m&cL}Ba#IoVz6($sL%gL21V'
    '!T|O~#dtl1S<kDFc90n*?yr*)@S6#qWo)^W73QGxL7|6O_ME_2re(}r0I3I&CL_e{rTGYf%U0Mll<B7Jyd}2cY+pVw)&=6p4E`*VHbu9?MPlv='
    'o^F5zWb6JrT1(nwX6Z}iV_eE1Xec0i=zf8gLBXDe3Wgx4*3f!JhZ5wSC53wYEwi|C-'
    '#Vhh(%1HK+VkH<Cu3ZU6HH^2bCv`Xs3+<>=OQ42ke3h%DG3(7*eBTacZDE&vOW6le&NrfTj!R!x`LzA+nTeFqEw>>G8OlIO>QIX3-'
    '6Xf^ZnX8Z1T3&sMRG7%fO+ya>)Eqg(J%@2^D?bLKUBP3J=rTW3rEZX#cKMdn{ShfcAB@eJMA1^Mc>PfP3W^Y+itU!R8JA+%e_APy^9bbBawtxs'
    'gjfrKpP=G?I<f$iHeP18}W{v<R)qpg-'
    'y&FM!BHuy?zM<LbHccrFNR!fS+FRYrd|4*;2jl@(<XNt@olCJdEtZp3OPGE9HwKR@2cNoJl7T<OU5hmJh#9vwf`Nuc+D^j-'
    'bgPDkBFg%H=O^tNwd18Nx~?ef7}KC{Z<Hl0^6(f>G&>N&lP<X&bQ7Je<s!&>*Kd=O4SRaqk+F|#4oRS|YC1nj_O@i+Dr;l6C#8lNo9+H!mChmN'
    '8Uu{LBGHA4P_*ntOS6!{?fVM=xoTzYfl3}8O>z|Fh__sn*j%R}*RzD$*$GOW+xsjT_jzv34o{caV^uCp(9Eb1ViS|yUgh*Z!jeWL{dQCLCwLFn'
    'Zz@QK)LdHunl-y^!h0~eSMBQJ4Nx#s^xhW`$cf!$6!9~6-E(Rooic{$$0nm?0tuq9-'
    'q&UPU{ytPjUSB1}~t9mYY8yWuFP53z9ik+A9O&R&QpcCWRCqeif>6^;MW7Lw_AB|E<A-'
    'I|OizQRz_bgmZW1I)d$dvQiHB0pxtK&JE4J}8kFksq^3EP}E<U+s+*YeO#770z~`0*nzWnsmd;z3@5ucL`7N)U7eX%-'
    'LhajsQ5rp;4SzdZt02)z&N5_NE%HRb4_HdfLin(muK39>B~o*so3lqO;eKPbTwE227~OV{URxMVg)!!X9%^D>+>8{?f}jQw-nc5Zy4)GT_sU-B'
    'ZFrbQ+2Vd*7jry!{M$tRBoiQ=zsK8PV+S!Y>VqW!WvtSKGT?k3&=)tjkQ|Lh_%+Z|u9VnrLJ@MtDFG$@6{o*Xc&5}O$~n?j>t6XdkZfN2j<AZG'
    'j1Aoe(OU>R#V2bbCmJSVlomf$cY&C8YpqNC>y(5My<(Wvp|&<$B`2)9qCOq6{gdhuuGQX&3gE3IE<L$VHHKP<+5&@Vt)q?sOSoT+eph6x|66DY'
    '3?Hyi3Awr)SI!JdeKR{xB=ykL~Na!%Tu&!fu<526*G0jgE)m4D$cE|>QeVSt(=7eC4wr!;3~vy^{a3gGeRrLZb;V(C)k-'
    'Sfpjy%}*I)qK#RbKd_U$Rd?^8nE`xMs9~u&gPt^$mxbjbmDtcoK|s72@dkJuV-Xc4JNARKqEg3dmcy*%EiiV<*TFz*c#=yJpQq#x+)l0)E=R+T'
    'C?1jLN+luemO6nHH)_~y(BvA!8<9ZRV+cHc;Z@Gy^`L3DN818vUFt;e1r%CLC>O*LmM~;qZj<>xc|A`9H}nC<{!&AcMHk*V18U6b3|g^5W&>%h'
    'PK2DP{wKMUj?D>Bwq$m>^Q6loFRTHZ+tz3>dhNxeC<0|ka>tmFr*c^eE!n$=5YkFR!qHmX-O_8y1I(-'
    'Figob=*oyZxc?U>kHB#0Qh5GSR^F>061~=6$`N6-'
    '9$IVmr9uRjy}SAz`B!sVM?{wBLlq`>T%5<lws&(_UwKGj;RgUa2<3W3K8?tiO?gPc_WFbKUhsn07;<S<IC=;<WF@7TT9{WpJ2C6T=#QcS@mt`$'
    '*2X{Ijk98PB9+wTD)<Mr$OuoCoQ9yPTSd)=8%QPLvLborG6Y%F-'
    '|6HS3N7}CB+72VF_fkZoso;a>EM=rDLF94JokMRLdN?aKHeD8%n@!yiAX>QWTE8DimL?#w%jmVATcKjyvQUZv2nbZxiYLA59YfiaEhIk2Z_1}d'
    '_0=M>&{t5af<qf5fO-P{Z((!?#3A{4#AzcstEh9UZpiH2_tX3uWpt-PcfWJqY+|MEf<lhKo~1gm~S9zeJQ#DNbf}V<~!%3to)`04SChV-Ma>X|'
    'DCR+m$~*2CQRE90L6p)(Js79Q1W12bn6)zb>1ttf5S0@H22dZ4hm5%7lfNX`oOd#TK=%2YN_zo_Y!w)b~;SdV8tK5z<t)kB0ApvrMKE7;;Pg9+'
    'HMZrM+}jhG;%{As6HZA@3rbCv?~{xTU3(7+Ll>BU|NTkhHY_al_dcM-kv5NuvHP+B22K^>rC1w{gL~K<zj5^bt0&wgEd9b7DWzNqHjN%jn~E*X'
    'v1EAd`tiYyB+b!+KtY@s9zWWLL(=P14+<;U%NEN>zs_oH%v><!Z}p%Fw)Mzp~;PbZZ)UAXYsPs7`v&zEnD+vAK7p(N)9oam2iE%v<WS=iwo4G#'
    '<LLeVlg*N9+tR@=CSCGOhXjm7xWkpy^FbDscQ9<5dE-'
    'K3`(yAyOaD`V2?~gJZyF_+hpsc+5SC~=Ts=GvoQ!8b4sWS+d4rxq_GRv%l;1{1w|{UzXTP$A+HBZI4FUwAg^D)H+Dzk=O+m&IK<2sHdHa{__+r'
    '@%f8Q^$V*ZWV^<pivCNZ0Lrf&cILs5$93o_&rNVWL_lqW2^5!U_f&Bxkcx6fl<jnoyt%7JBJK^#&b}IhvY}X0G*AN2jBrCF_xJF9{P6==maN81'
    'YCg*a`aWDB?g|{+Y)UR<Tg<JHT*U~7ll)IG18~{Uqj%E8+&vDj<X$z0twA5b$12D<K(8VH??(jcFoDJZ4AeAn{jbBdElV5iY8AD)oz4hY4U-'
    'hrpo<J^vEyikYd~IqT^716Koo0EDq>_aMaPhHFLd5X&p`Ane^e)6Psqa5&mX#8UyEUvZI4_%2TG!f*3zidv=D!@!%0dvx0?ADvhz1kJ^Xxthe&'
    'plKK@aHp987Ldj)7LWoI<P(IsQ1IIV4hc87Bd03kfE!3D8-pe`f1r*(WZk@hW7sE`h@)Q5@5@a-'
    'B>9_r&||zro+L0kcLpG4nSUPd>eW{OIGSCCUYp=aA;2W&aWcdNl42vt+y}vW}iB1J6TQHPELHmCpFkP`Z~8=b0}*h~o1WeWDw!7YlE7&k%uU0K'
    'lB4G<zNLE%g~$CwnzR7MIr$U}mCZI(-'
    'CEgr8dzIeQHS6(+CAC?KWJNRNfE%VRIzi1zK7=^ia&Op_9gHm7(7jv!W;BZGqHX~60x6OllFsnA!;JxzWpfhWR|^Ke>%`dCqU<C<>zy0fBgtZ2'
    'CP$(e6U=cYV`O1YxqWh#WjTB-s&6ktG6UE4k;hGpxZfzr?fAG%AO9Xq6&d3#xnCD8B&ttec_WyZA*mLjAf8=sD$N@87ly@RV{lPv}{n(9`k-'
    'ttfeJW4&(#!>nw2sk3_0XFqA=tIY;%6PX|wkJ-TxpORYryLCQ38B+oxlZa_c<T8H#0P^(s}Hu}k=F5)5cE1`+a8=PF-'
    'vFs{Tp4|xz?5evyx5vQW~cUZfq6W8{OMYvo%b!!KRG!HFD-_Wb;9PVMd|D2j?H+5(|EBsK5V_O;5M~*S{(=R>7NJS}||JfRMQ|mO;Uq^Ab^SlU'
    '}eE)~{aFPsBd(j#}=O@4@CF_+8wGV;r_;&=g2#S7e{=Y^J4r+mg#k$wNwr@>Y#Z)l;&CpLl3d8((|L?;(-'
    '+M(fp;M)ct<4${gLf`@65E~N9jZJ4~3!c&)Kn1aawqqCuwn^~1hh^TbAo`W}`B4<^q<zjvGMHe|?q>i|IGzq#Q8r`UF9Oh9rQxZAwZmI_8nEr{'
    'OZg%$!TkJzKydNde%9{cAhNMd<J)n#s*QCrv&ldwojRKkTj@<F&xZCNt6iS*o4UHb{iwR6aiy~10*j`AoPOI%TQo?*e-6-'
    'pOd*^~nkU?33j8>rO5It+@uj0uFOP;Z}ABb!k`j<Z{T0T~#a%J{9yiO93vOyqU!4WEzuo`+k-'
    '^On|LB&}NDH(&rX@S1mbZ)PSeg^6`&8V6#K~at9uT0~?3?tg42i6*Yb$#|GOzCk6M#{Rugc_o_|2c7H06y>5yJxyMQQ!U9EJj`Z8mbA+iSAKSA'
    '<&k5o>K#dRj|=IVd^7&^OifGm)G5NXISK2LH2S(eju9`e6S<Jb{<9Fo%K?*mWTyR>suG>HdSxH%d*jkjq|+v)NBv&t+zyLjA0X_hb^AqH7?p*s'
    '(P!%vmxu^CdMnQ3<)LJ$o*eXpN-8b4b$($T>RUN*)R>-P~g2r&v_Z*P5?Qtx2bq<+Sg0f@kMVWK4(8*vPP-'
    'd8s`cKF46u*9c57&cBVc&=v}~{@GY>Z9kuL714u=oaWyvwm-)o3iR?gM2VkIj&RCY9zCSSS-DfX`I)GtUE;(DStnEg-e2z_C@URTr-'
    '<SAnGn|UYo^@_6mwq_aJAC$6J~-'
    'MheYG_5lb&hg;b(fmqd5$02V6sGaSQ?9i>o<`!?VJT1|o79&7&1~nKNs=KXoqP4(=#E!D#})iViK=|F^gUtpg=4hF7JH=-'
    'u^#kUuGqUV=wVaka@UDo)x92%F{7$E%LIW05LSk6^UjIRs&xTWY=Ekt)Aa+Zr|OS6-'
    'S5Xwz=pDI_X5*t+xHd9_T@!jhFy3uPsmMNyG4uA^J$PjCd3-4Rs5wB~<;^lujt5x*Ch1ZJ~(GN?o0LO&n7k|?O$5V#;LU_-bj55oD_PeAbF#RW'
    '{@VfV{1$hSq<Zq=p=66s{T6(0FG-'
    'C;b|yMPSy;D!hA076EKNL#3^#ge@Zr|U%tE0<fQkZl3!`vs_t<}@HZ`Amk<<@feHSX{{N0@%nUoZ>QRu4d~6Bs8Td1PYu6gpQ+xY_)QD(s2(DG'
    '0FL`-~N5lKIxve44$g<AZY~&ZXCf($;HI|+uEB09poee4cvG5-+TP;Z7@x)@vmzi^0U-fs_Y<kXEV``h7B=#1|s)pV`Ca-'
    '*3hX7Sul8WXJ1X&it`vM##(k%$u<(>=D_CwZZe#EZ;daw1ewSV$@bXZ=;Wq!{@YFhd4cmL`nmIO-`ZkT'
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
        print(f"[dry-run] backup seria criado em {b}")
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

    if sha256_bytes(cdata) != V31_SHA256:
        raise SystemExit("ERRO: payload do party_menu.c corrompido.")
    if sha256_bytes(adata) != ASSET_SHA256:
        raise SystemExit("ERRO: payload do shiny.png corrompido.")

    tc = root / C_REL
    ta = root / ASSET_REL
    current = sha256(tc)

    if current == V31_SHA256:
        replace = False
        print("C: Party Shiny V3.1 já instalado.")
    elif current == V3_SHA256:
        replace = True
        print("C: V3 detectada -> aplicando hotfix de alinhamento V3.1.")
    elif current == V2_SHA256:
        replace = True
        print("C: V2 detectada -> atualizando direto para V3.1.")
    elif current == V1_SHA256:
        replace = True
        print("C: V1 detectada -> atualizando direto para V3.1.")
    elif current == BASE_SHA256:
        replace = True
        print("C: base original reconhecida -> instalando V3.1.")
    elif force:
        replace = True
        print("AVISO: --force-replace ativo; substituindo party_menu.c diferente.")
    else:
        print("ERRO: seu src/party_menu.c não bate com BASE/V1/V2/V3/V3.1.")
        print("Nada foi sobrescrito para proteger alterações manuais.")
        print("Use --force-replace somente se quiser substituição completa.")
        return False

    asset_copy = not ta.is_file() or sha256(ta) != ASSET_SHA256
    changes = ([C_REL] if replace else []) + ([ASSET_REL] if asset_copy else [])

    if not changes:
        print("Nada para alterar.")
        return True

    b = backup(root, changes, dry)
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
        if sha256(tc) != V31_SHA256:
            raise SystemExit("ERRO: verificação final do party_menu.c falhou.")
        if sha256(ta) != ASSET_SHA256:
            raise SystemExit("ERRO: verificação final do shiny.png falhou.")
    return True

def restore_latest(root, dry):
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
                print(f"[dry-run] restauraria {src} -> {dst}")
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
    p = argparse.ArgumentParser(description="Instala Party Shiny V3.1.")
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
        return 0 if restore_latest(root, a.dry_run) else 1
    if not install(root, a.force_replace, a.dry_run):
        return 2
    if a.dry_run:
        return 0
    if a.build and not do_build(root, a.jobs):
        return 3
    if a.run and not do_run(root):
        return 4

    print("Party Shiny V3.1 instalado com sucesso.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
