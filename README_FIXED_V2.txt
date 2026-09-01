PMD RADIO GAMES - FIXED V2
===========================

CORREÇÃO IMPORTANTE:
A versão anterior assumia que littleroot.inc tinha piano no seu projeto.
No seu fork atual isso NÃO é verdade.

Esta V2 usa o voicegroup que JÁ EXISTE no seu próprio repo:
    sound/voicegroups/fly_me_to_the_moon.inc

Esse voicegroup tem:
    program 0   -> piano keysplit
    program 32  -> fretless bass
    program 40  -> strings
    program 61  -> alto sax
    program 73  -> flute
    program 118 -> drumset

Os 5 MIDIs foram REPORTADOS para esses slots.

INSTALAÇÃO:
1) Na raiz do repo, apague/substitua o install_pmd_radio.py antigo.
2) Extraia este ZIP na raiz:
       unzip -o PMD_RADIO_GAMES_FIXED_V2.zip -d .
3) Rode:
       python3 install_pmd_radio.py
4) Compile:
       make -j8

A execução anterior que parou no erro do littleroot não havia começado os patches,
pois a validação do voicegroup acontecia antes de copiar/alterar os arquivos.
