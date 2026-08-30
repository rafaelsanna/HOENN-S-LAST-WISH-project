#!/usr/bin/env python3
"""Pokemon HLW - RADIO INDIE GUITAR FIX V2.

Corrige o batch Indie Classics:
- restaura guitarras/riffs dos MIDIs originais;
- instala voicegroup proprio com samples DirectSound de guitarra;
- garante definicoes no ALL TRACKS + INDIE ROCK;
- funciona da raiz ou dentro de PHYTON/.

Uso recomendado:
    cd ~/pokeemerald-expansion
    python3 PHYTON/install_radio_indie_GUITAR_FIX_V2.py
"""
from pathlib import Path
import base64
import re
import shutil
import zlib

SONGS = [
    ('MUS_FREAKING_OUT_THE_NEIGHBORHOOD', 'freaking_out_the_neighborhood', 'FREAKING OUT THE NEIGHBORHOOD (MAC DEMARCO)', 94),
    ('MUS_DRACULA_TAME_IMPALA', 'dracula_tame_impala', 'DRACULA (TAME IMPALA)', 92),
    ('MUS_LOVESONG_THE_CURE', 'lovesong_the_cure', 'LOVESONG (THE CURE)', 93),
    ('MUS_FRIDAY_IM_IN_LOVE', 'friday_im_in_love', "FRIDAY I'M IN LOVE (THE CURE)", 94),
    ('MUS_BOYS_DONT_CRY', 'boys_dont_cry', "BOYS DON'T CRY (THE CURE)", 94),
    ('MUS_ROSE_PARADE', 'rose_parade', 'ROSE PARADE (ELLIOTT SMITH)', 92),
    ('MUS_SHADOWPLAY', 'shadowplay', 'SHADOWPLAY (JOY DIVISION)', 96),
    ('MUS_NEW_DAWN_FADES', 'new_dawn_fades', 'NEW DAWN FADES (JOY DIVISION)', 96),
    ('MUS_DISORDER', 'disorder', 'DISORDER (JOY DIVISION)', 96),
    ('MUS_LOVE_WILL_TEAR_US_APART', 'love_will_tear_us_apart', 'LOVE WILL TEAR US APART (JOY DIVISION)', 96),
]

EMBEDDED_MIDIS = {
    'mus_freaking_out_the_neighborhood.mid': (
        'eNrtW19rU1kQH239A8vuk7ALYkkxpjG0ttr4By9pjiHkWlrl7q4PPqZQoaKSUCvUt8bUSHYfEooU/BYiy8KyLIiI30LwC/jiF4gz'
        '594993iTWxIabaW/p/wy85s5M2fOmXtPOLlxa2WZiI7SITpy6MONW6v3iH76SK8qRG9OUWfkh8U7S8sJ99HdtaVV6vw6cvSPk9S5'
        'PTp6+JfjLdoqek9WnhQVbc0LmFciqVWjEsNhlUhKIikxKAgoMMiLKm9LLA6rCtpPvcx+/kxs3RR0k0WLoltksCCSBT0GAxnDFZWr'
        '9irE7jhKIimFpC/MMIvdITZnGK1rh+FnMEIUNK6zZ0Z5HTMD13aYF4d5yXkH0pxI5myVyXBO7OfEfgeSIxLHjs3k6oi9o+rlHiQl'
        'JPUFKSe6nHYQRGtlEkgsjhkkcG1UjqgcbU45j656dMmj8x5lvGdKvDHnqqJLis4rytjOv4sZvCbgmh6fdQX11At1ZnEFS4l1XXPQ'
        'ou45QEdDR0NHQ0dDR0NHQ0cbfkfDJGIp7pOlWAjaZWea/ENvepn+4kPvWz7ejvz428rjtZUHwbG3Rc/nPXKky9bLmxyoo5vr88se'
        'XfAozXFsXlZ0QVFaxTD7Ny/ppj4rzJLu5bOGORUyp+KY/ZsXdUiTwizqkCbjQurJ3KX51xgINUKNUCPU6CDUyNXMaWG6mjk9EHOX'
        '5l9jID/3i2HuFwdi7tJ8lwM5obnz7RdDMdxxxZ13XE9m/+ZK77gpYSq946Z8ZjZkZndgxpl3D+QfbTPC9E+0mYGY/ZtjH2EfRdbS'
        'bLhsZgdi9m/uh5QNQ8rG7aOezDjzPdxH32wgvJzgBRI1Qo1QI9QIBzG8QOIghoMY9hEOYjiI4SCGlxPUCDVCjVAj1Ag1Qo1QI9QI'
        'NUKN9qRG/5+kWhSepMxdw8P/0t8Vonf6D3a/V+5XgpuGzfe0LbfIG66i7QUBC0oktaqWyD3LxrwtkVuVjaKqVbflOmSjoEVMioo0'
        'i0KJKyRXNWe25YZlI2/roqBetkls5zsYepSGHiVxlDkR5YRuQsl56ywJP6+I4goDuTPfcNTmbUzl8KZSrss27OuyJ/6jl7yEX4/z'
        'Eh4tLD182KL2Ge+pt3FGUfs0O9g4rUTCQCSTAniztDMCeC+0Zb9s8E5pT4jVhE2eEDBhk435OQHnGCTEKsFgTCRjWsIgYZt3h9GP'
        'VUpAypYgL+S1H/IyfvYJOCtZnNWAJb1ArWqLBmGbGTITEwXMNiJTcTPDUcBsIxoX9rgGLOkFmG1EY8Ies2sVBcw2ItQorkZmf5n1'
        'HAXMNqK0sNP2/owCZhvRYDUaFkD/RF7IC887PO9QIzzv0D+RF/JCXsgLee3PvOTX+A37d/ifP9E/FaLOyLHi6qMH9+6uNWdepLz1'
        'JltZn/WyBpksJQWzg6T/VUaQr6JNCk7G0PyvcAIncHKAnBgQ21MCRq36QjtICeplHtGBD/6B5KMZwQmcwAmeweCDj2cwnMAJnHz/'
        'z2BMLpzACZwMuaekPPb1TAXGSf3L/2fi+SF/'
    ),
    'mus_dracula_tame_impala.mid': (
        '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'
    ),
    'mus_lovesong_the_cure.mid': (
        'eNrtV89rE0EUfmlL7LFHQYT8A8UYE5clyzIQloTQyAo9eNyDgiDFUBB6zGY3WzSmLSHkEnLRkzcR6UERpKiX4sGrB1E8efYiFInv'
        '2x2bdRsqpSptnFPefG/ej3nvm7yd2vLN60SUphSlUx9ry6u3ePGdHt8menmORrPzV+6srNxYzVyk0dXZ9D2Grs3NzZydp62yTbq9'
        'SY2yIF18OeLa/fR7A2FTwW5nGkJQQbh1rHO2W8c6h7Vpe07DFLSlA9UnQaGTPEA2yh9catimhXgEYkNWBsnCowGFwYoi0CKgfd8a'
        'dJG1yvQEZrrnwMqQaRiRU1M6MaPlzyRFUus5h6op6VrG9FTMvxbzm/qPUJn+8UyZUouSUouCRhcoGoJnNugpD8FX8SGY23N6kpp+'
        'RM2eJK4fEbcnae1HtP5V6zmHqinpGhn6ujT7RzE13C/Warhf3rSftihPWww/Sb6q5k5tc73X035cFVNd1mm5rDvUk1PZT0zlmfe0'
        'zVP5zfnYVL7kfVjoW/ZaYAnql/mXbfoV9hZU4kIZAlQWBCuOHFSVIJRYEHbLDkQoMCJEy57GUJ7Tx4dRwJ3pG1z2wBDeO1XEY4eS'
        'tewk+ek/gxQyPEgwPPWQnjPDd+MMz9+9nx0gkzZvnih4TiiUIHBuAwMqI66Sm936oAKIjz1A3m0B6Ji+UUj2yI6qgKoMVQFVAaFe'
        'od0kQbrcR1DlthUKLVsKIcKOwNC2OU4gDsmjECNsZ8azPJJQhEP+ExrghdLWEEMHpI+hWKse0BNu1U4q1qpCsOt0a2zSrAnqLrFJ'
        'c4kF1KVZHSOe07UAWeJR5gRtb9ksrbFAXSZqsyy8z6f4NLHH3Da94E69XYh16jINDbxK10XHwKvUrQ8xoDpMniH4AJSR8EUJMCc2'
        'aRi+ONlCvjjHFiAgUFjkJZiHhYqhYpzKGO66KtaJisFfZKpYKsb/EgPT+wetQAnQ'
    ),
    'mus_friday_im_in_love.mid': (
        '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'
    ),
    'mus_boys_dont_cry.mid': (
        'eNrtWktrE1EUPrX1sRRxUVAhi9KFWGpLCY1DwiUki0gLo3bhsvWBLSoNIRXdJX1QioqhdOPGfyCIdFHBhYg/wp3+ABf+g/idOzcz'
        'd5KZOG2M2vZAoed+97vnnHsed+6EmZ1bvEdEp2iAhga+z85VHhKd/Ebvl4k+X6Lm4PnUzeU79yvV1K3HS9XF1IOVpepChZo3Bk/u'
        'faXm7aGhE8NnPtJ21l2bX80qFuplW6iXt3Ms5QApJim1X7ZyN1wjYEoxKc9SHlCBSQUIRRaKtpDHIs1RLPD6HAs5dfi8fUWw9tb3'
        'pP4jJQHvv7d7fpTr71Kd4J4kQbwNvIVGy+zavG1WG0lIavcNJMs3CJ5vIHkuPdUzRfxPdoxQc5y8Y36kRrs45r9cwDE/VHlWXaSd'
        'rEsZl8bAXAczo2hM0U7OJcelcQahx1E0DlC5BPIEg7AC8gTAvEsgT7qbah0+gDxpgas22FoOMFjeMgQwMNRyqV62XOoJrJe7U9fm'
        'IzYPZuBTTyDMd6XCfGeYwQzi1BMI812pMN+ZUDA7E9ojKPUg9SD1IPXQp3oIZamvqQ8lpK9ZDsW+rwkFuP/cwVJXakip5Olw5Onv'
        '7env52nDTbqn0LmTHDyKpSdp6mFLcluR24rcXqUe5PYqt1fJU//zVNAbnWKwoDc6ZYFY3hWEpaTUGLCod59m80W9+7QFgtkVhPmk'
        '1BjwH+++FPhU8n1KDs4E4MwBwFIQ+9L/EpF/XA/Hpu/keJbHqOTpz+dJXlPkNUVeW6UepB6kHqQepB72Ww/2d0X+d0inrtO7ZaJP'
        'JWoOngt9bfpk+e7Co/pPamSwwxqWQaiXteCw4CAwDf70q5YN5tbmG/zaU8MLT0sAa5pZ0wHLhuJZ0DXNksXaVIETvlvx3gDi170D'
        'erPh2izqIL08a2mIdctCOlyIXGchqypGmEYysX7DPbAHfMesTfbigQlPoDLDUEa9GMbk6qKeNCydh00F2htWAd+tTbAKCGn1ijoS'
        'aOfIYV1OuAzBdtrSDVI6ksTf/dWyoZqILwAUmuFHmolQGs/ShRmvy3hjZyKi0tDZuhnQ1jqeisdgKR5TI889jum8bnBvFkMzm/N+'
        'jODFadXQix0z7RhlGaMserWezfGstzprprNmdTCm9qE+vDzPcswOadu6yvNZLqq8T/9TwwIPYangDa3Q+/0RzmJMqk3ZJSSZArZ6'
        'L67GWHiegoCDLrZ5f1uI7U3RfuBRcIj6uq1jVTtAdkvo7kRiTO/ijDGa3lKrxX3lmOSHYm3CeqJcvEYf8ERpDp4uVFYeP1yq7qrX'
        'o1doFJnZGlWEv98MR6BxawTC5SkIl7UAgiePtuEjBhd+BF/CLmGXsB+xsEvBCF/4iQ4E0+8RgoTuyIRazkN5gB6fsEswhS984Qtf'
        '+MIX/nHjy7VTbvsSdgmjhP3Ihb05Tr8AOVrR/Q=='
    ),
    'mus_rose_parade.mid': (
        'eNrtWr1u2zAQPjdB0kfImNWQ4QoQBMsOYStI1gAqkKFjinQoUBQxOnl0kLFD8gp9gz5CH6Vv4h5/RB4linCEOHDb26j7jqfj/ZKU'
        'rq4/fwKAIxjAYPD76vrbF4BsCj/vAH6dwObg6OPt7d3XJWzeHxz/OIXNh8PjNydv4emygkUFswqy6n65vixhUcKshKyEpwsPuqCQ'
        'qKCQdBhLSJRQKPoYobmakhtorqbkErpfdmNRiedKj2kFQwmdKz2mJQylRMTmHjZ3mF4aSh25paHUEYocVQ83azmI8BBotS2ipHgs'
        'mSc3e2UetGdq1oaPaUP9iEy0q3A8aFfrkb2JGL22oVvbEIkL+bhQC9B61xSUNZOjmdIFvS+sUmNjIa3UWBuppq/WcZq1mDAiHKWQ'
        'g4JSJnIwoZRcDnJKycyCYspFoL8gn4VK2Nz4TqiEzV0+Cy+fhclncFDuQTmF2rM40/tneiRgImG2N7HUiblplB7j5yjiKOIo4ija'
        'qyjSetSW1nqkdqdSQ6ttkVpQw1/UWU0e5S/rKbfhadDttkcYgdpsbvOzJT2R40Q7SPvFDdobP9Q1MbomikHG1kSuXXOi0IlcPIrr'
        'xCAGkVB1cRoJHQVZYni6Da/Uo6cmhsIY9IRIRcGQ6io2kQr1MlBH4CkinlMP5TnVnxFP6zMFJcbUZwpKdgRFfb1FBanP4f4iuNhx'
        'y+SWuf9R1K/eWd/ZnmUptp01rxX0dZbwJIp2PRx5FjZ6dM3i+IjFR7MjEq/ZdAvkY91oafd1O5jn7oQal0EdmwWPyF7lrOes/9+y'
        'no9GfDTioxG3N25vHB//YHt7gXLS8kHh2a3wfBDGdhEn/dTXPlefv9Gl2ufmCziBcJYH2U/UEZ76deZFtSu8b/+BAvDImceVmSsz'
        'XzewVznrOev5uoGvG/i6ga8buL1xe+P2Zq0V/Mrd6kYBnsLwFJrHHmQL2RA0/RkNb/s+92qXEX08RMTt8hoi+Bqilv6Xvh04AY0j'
        '9w6KQn/zpj9yh3XoLA/fT+kf4Q83tnV5f4aT6Y9+V9u8gz9DRjvf'
    ),
    'mus_shadowplay.mid': (
        'eNrtmkFrE0EUx19tqR49ilaIJSyll9QSKG1KGYoFPRRW6cFjCh5aiiSUCsGT21hCrRoJIvgtRDwoeBDx7Gfw4l38AvG9md3s7uwm'
        'bW2M2eZ/ypv3f/Pe7G9nZ3aSrG9sPSCiSRqjibEf6xu7O0TTit5ViL7coPb4xXub23ubuZvUvjs++ewate9PTFy4cole5d16+Ule'
        'ieFVB2U4UtRhY0qMKW2w9N8MQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQACEEYTgiOEor5qS2tciVafFmMaNx+wHBEAABEAABEAA'
        'BEAABEAAhOxAaJIMo10g8z+Sqwv0vkL09Xr4P5L5/ZfUUi6VXCq6DbWvFJUUFdWB2/F61Y43DK2XU5ypkQfucd0XXJqTvguK5s5H'
        'c9GleWkuKppPNtNxBwQtUk0CqSipN2rkKMRmhldtzUhjhoWkUXBJ2wVFw9vELFYNdYr18eRrLsjK+lByj3LysLRWJHRFP0Hm8WEP'
        '4zYeplnSGdlYDGOOcq01sdbYtSrGqq5jMIdGJ7Xd/8Xl1LLacziXCNfD9YfSCU8aS2Is6XLm6gco8YqjCcsE841GlkbNg9XbaFF9'
        'Hr0nJBMbAvYW3F/c36G6vzh+pENoymZOyy7pRCzwPr+syE/HHVjVWUwfVq1c+1spL3G1mM9+1+h5vLac3foOuGyEEVeOMYpINZte'
        'jzTmlSo1jS2lXkpwXwyI2H0JpJqt9EhjPKlp+ibZc89rEM6+3c++Q34IxuIpi+eZzma6PweV4kH2USDiOUOxejlarGP4GYf51KPP'
        'OnJW40Ebg6/MGBwU82R00PbRM1Kjy6zgGsmgpLEihjVRkh5/MkX2BfPVTNSw945ICb97j8z9ktIGNlAjb4zby12o8CIRhKthGG9g'
        '6EWriUVbXu86Px/RY/pQIfp2J/z5qPj0d+61ko2uXn6qZKPzflHccfBcxR0f7R7fLcdPqx2OwKnQJx4Bl7+1++jhzvYevZ0tetXD'
        'WSVGzfo8vUCB1q+EqIRKqIRKqIRK56eS/K3lMM+G43Ic246Jy/vNvGlChQoVKlSoUEdZ1Z6a6E4QUhM55VMHHhP1LzJm7I0GRKEO'
        'VD3JFAIGYAAGYBhRDOdA9aqh+je7fj+jMvgGAXzABxUqHg/gw+qCpw3TBdMF0yV7+Joko2kX6A9xvzjv'
    ),
    'mus_new_dawn_fades.mid': (
        'eNrtWcGKG0cQLcdLEoI/IBfDCoQQ6xWaDIo0QlrRSB7ULBgm4MMedUhgjQkWjgMTfJG0a0TwwcLMxRd/Qwi5BHIwJqd8Qk455i+U'
        'qp5uTY802lU2a20k1WGpmqpXr7vfdNfMaB88PP0aAD6GW7B3668HD58+BvjsOfz0BODdXZje/iR49N2zb/a/gOlXt+98CTA92dv7'
        '6PNP/4RJsTcWg6KAyUHvrDc4QOceOffQKfVeBIMSOmWKlFUEnZLCDPsrYyxmHSmSUxRjcfPDKw8SZ4a2UqHOYOAgO7BtLBVyKrZT'
        'JZZqOhXqDAaq2YHtYhn9DRMhoSGhIl/uD4SAhgDKCw8aHlQ8JEyCLQl1CS4hWwLqAlwKelD3wCVkEmxKqElwCNkUUBPgUNCDmgcO'
        'IZNgnYaGEiHrahTa6XUaGkqETIKbNs/UlLoetD0ws8UO0RXQFrDiQlJzPvbAV2xmRch2LMBXhAnMAmB5KmVWnVqg9KCjZmiWj7RS'
        'QEdNMoFZgHiqixKl1PAV55GaidIKaX3FeaTmo2EWAMtTqaI0h9w4B9Kc/ySlj7s0538xsG0sFWkOuXHUjnczU2VyyvSAcMnLBlWl'
        'agoIWsxZIByEWkmbIm3bEXrPTxoSH2INFcGUYPB/AQuJRyauGp0qcMcJBx2yFCDHx4BPllh8EWK7CanDTLqE6C4iqBbpO1esacu4'
        'pSSR2SQFbtO03ejZi1dAzrQM8SvonTb8gq+gv1uvoJXRHxAJbFvnCIy63rB/juNHbXJwlKhDKRwl8snBmUQupfAIRi1yWmkMRnwV'
        'QaejeLCPY1Z18GE/alKimVm8mNIRLGtQg8WLhmqtCVQ9d9CPHzoZFKrhxwCKNzRJBrJLrT5evfg/CjA/8QuWwovmRfOid2HRZ72o'
        '60DbAeG83D83b+UYPXbAV4kWJawXbMxJBzpUAU3KWW/JmPNV4siBOuWsV931jcSPIz6v27vottBrmjl0is7j5Y5FOpWBEVuN+c1S'
        'Sp2w+hKVsaxlO6tVpW/phVXMk97N8VaefUnc/QF+xi+J97nkS8J9C6+LwVlvhN/56Az72gnn7EJiCTKHNoe2ELwIRgXlhHN2dKod'
        'pMhCGIo8AfJLnHBFe0lBjgA0WE6Ec3ZpYs5KY02BDDMtq8wqs8qsMqvMKrPKrDKrzCqzyqwyq7wxKtfQ1ixbRVu1bAVtxbIuWtey'
        'LDZvaVaZGwc3Dt7SrDKrzCpze2ax/7XYY6EV06oXyClcl2ZIsaISywI5muF1LJXrN6zeS9e7EjeCa/0DNgfw6xOg/77ef/r9t48f'
        'PYM3eRH+mMezoh14U0CLf7PrtF0AmkR4GZAZ18cYxIyFoKmtvj7U14f2iKzr6rrO6WmuDy+2rPNVdV5N3w+l9+L1bjBjdV4oKWP4'
        '3N2Yvyt8Cq6F0TPqB5APWH1m3GhG7iE3yhgse5KGrPN17nIJecm7fL2MSu1hZab60q+cq96NYqblu3KlM+HxmeAzsatnQpozcQL5'
        'Ez4TrP4OdSR6DISx6OapoC/DG/tFZwe0bmY0/9QPCpc9AvhHtg/JzLeKfw/lu8J3hZn5ib5exmDht0HNGGjGwABHp1YFAYd9CwkX'
        'IQ0lVlyCXCvnWJAzLcM/32Zftw=='
    ),
    'mus_disorder.mid': (
        'eNrtXV9oW3UUPjPd2q1DFEFHdct1y276j7akuwTjJb2bE93D5OqGDB+k2Va11jVpkkKHIk2bUir+mWWICntwgm92RQQnioyywWCP'
        'TvBBRKaCPikIikyJv3Nyd3ubpjFJU+2f7+n7cu6555zv993c/PKn9PDR504S0RbaRHWbvjt8NDlApP1Ms3GiS/dTznen3ZfuS2qP'
        'xuMDWvOBWCrVQrnHfZuPf0i5Y3V1t+1o+JzOdNvjvaPdFpNMonLSxqe3CVGRtiUihWQ35+wWoiIVk+qaQimUQimUQimUrlqlISah'
        'ohFIhuSaSA4yCSqiM9EVCTAJKOLnyn5ox6WOWzeUQimU4sUXkiEZ2wxox60bSqEUSqEUSteiUj8T/+oh1Wl3l24Pkz2yu1CEdxd7'
        'meyVjYciuncH4u5JFpNl56hewRVugTFqmCMTjvAX4am7BV4cEhj/UeDVtMC5GwIfzAlc+ELg4tcC144LXP9K4NtnBX7aIXDzG4Yt'
        'm38VuEMXaBoV6DwnEDkh8PBjAnZM4Jm/BJKTAi8/KPDKvQLnnxaYuSzw2TGBq/cJ3AgL/PKmwN9+hvptMnx98HYBY0Tg4C6BIyQw'
        '9JJARjrUn7kp8J4mMBcR+HKfwA+nBX5vZGho2inQfl6gR6o0PDEj8PqAwMWAwJ/XGLYGLwkkTIH3mwR+e41hW3urwMQfAleeYmhs'
        'Fe2NQ7MC319n2G7I1Ns/MRh2ZUcp10nODx789FGcaG4n5Xz3HOhLDsaSJ7Ujw6cG+5Ja8yPD/elYsiUzq01HlPFjEYum9zPZr0jJ'
        'SCZRGJmwJWJwxPCeVTLi1PFEnDqYB/NgnmI56lDxs0x70hozrfFeFVJd8yFFzPkkdcwJZRKKqZi5MMs9zzm0osWjTKKK9DDp8ZIo'
        'y8wfUqSHK3pCi7OdQiUqOoXcxVUV3SX0EGfhF5M1NSyePJgH8+Dmi5vv/3LzpYhNhpOpFt3wBPM55QSXeXr5NWvcyJyvaS4M5jPN'
        'ajPLCkZtCjtB5W7YzQzPNwp7MvPBgky3ZvjfahZmwnf4Dt/hO3yH7/AdvsN3+A7f4Tt8h+/wHb7Dd/i+mnx3fybQcJo+jhNdPkQ5'
        '312HYoPaQ8PJdH9Ka34yfiL2Qqpl7ELvWf5VV7bbospISM2bDQlRkVDRCA+VNbzEPdTFpEuRDj6rw3q7q8o5Vmqgd7Vaz5FJVLgg'
        'HRzqkFAhcbNd4hbyDLKw/4RdSf/x0XXkSGULoZJqcWUur+1b1nrxX/XFHcHbtTIjarEOi+U7xLAnbLRfuv1M4qzJIbWlKEL4C8ls'
        'VIjKjlrTvaslWy2bw+i/IZOWkAiTiGcD8sDz9KnagOR89QeTw6cG+tP0Tus+4j+Nmmq1KGAVe6g7D3V5mOeVnlX4EB2LdtTtkSm9'
        'FLaXRukRKNBQC21VrsjCo0sWqWQd164uJw0ewSN4VCtdcApOwSk4BafgFJyCU+tUl3eGkVvh+XeF6rBexttHXITQBV14cm3Y1yzc'
        'AKELVyCcglNwCk7BKTgFp6ALb6lwEULXuntybbjfikARnlDQhSsQTsEpOAWn4BScglNwCk4tVQQfwMAraFqmJs8nLoUEnmw8T/g/'
        'gUyVt5BIXPOJk5YkesgbxCTXSf8ACOGgSA=='
    ),
    'mus_love_will_tear_us_apart.mid': (
        'eNrtW01PE1EUvUhFF/4AElloQgiBNDWkKSETmpfWhtjwMUZiXNKoUQLSpoWkS6eMERemhriAhf4CF8a40ISFMS5YmvgHWLp06a7e'
        '91qmb9rSjkBhppzdnXM/3rnvXu57dNq5xaePiGiA+uhy38HcYn6FH/roS5Zo/w5V+gfuZx9mVgtUuds/sD9ElQeh0KXBq9Yf2omb'
        'm0tbcUE7wnwptoQSGJFCQiIJYeUYsnIKcqwTUkiwYEgjQxrFpZHUTUloSmwuNQVnyPfRy8TRZUwWhG6dlDZJHWkOXYuok+taxD0U'
        'L7jFw59ekKsXiIiVCFUPgsHf9JEPgm/X+SC4NrOxvJ7J30iuPs6svac30yZNmRTlKM+nBbFXVLwwHbTogNQW07ytnINauRam3sHN'
        'pVZBNZR8vVKnvRMmaf5c1ICqisfQBDrhNipumTPz+g9VwqS4Uk3ItXiQxJVqglXJuoq9krqqjZdweQmPXoZJMZMiEjcExQRFNJDj'
        'NIPeLTuD/i8TGgmNdNqNVCZdVXqnlEadheF4GPVIDWBLy6JHrGVEF5hQbGO1Kk+rfXZAtmwGvVt2Bk+pl4oesc7tpcpGYblMtZxh'
        'DWTLZtC7ZSew9MHVPHyt05qH74UnPPbd8fiq1c3ODzR594hwL3Z+51CXeXiuSsokd8SUoJ43KJ5Qf0G2qaMBn4huA/s1hh7I47jB'
        'cdNZg43CuYxzGQZoF99d4+rvO0IH9ClL9P0WVfqv3FvPL689Kfyl7Vn2Kc0K2p7nEVmaZ2GBlykt6MisRKRNWiJpFmak1wwLKSmk'
        'xOnFiUshriNpKaRPbpOUQlI3vji598L+oFl9lbvP4jhzbugnfeY59+Mmz7lQIlMo0Nvx6gd69rj6iA+PeMRjkB7lf292VAkMRtsj'
        '8kWIHWNhUqomdcQxli/P7AkW5HsLO6IEVkWOQBoF+XLBDiuBkfARSKOALJAFskAWyAJZIAtkgSyOl8V49dsdZ3QLxUJYqDcXwkxD'
        'FsgCWSALZIHb4ykdvoiMyGcaudbzVs5T9/vJGkI7YdQskz2qvdc0ftHXLMkvb9zObzxbWV7fo92xKI2YNMzb/WpM0IigYSFBKycf'
        'd5WKZW+4lQtmODp0OAQ1U4/osFmUSDWeEut0lFOx5qCpGXXiHDdGXQ0GXWTQaNS1XFCRoPbEIYxuQDegG9ANOC/AABMCDDAhwAAT'
        'AgwwIcAAEwIMMCHAABMC3YAJgZ7o7Z5APcEADMAA+4hbJGqBGwMqggmBWmBCoCcwIdAN6AZ0A7oB5wUYYEKAgc8nBNiADdiADdiA'
        'DdiAzTmxUb89LVP9x6uVCP0DCzzv1g=='
    ),
}

VOICEGROUP_TEXT = 'voice_group hlw_indie_guitar\n\tvoice_keysplit_all voicegroup_rs_drumset\n\tvoice_keysplit voicegroup_piano_keysplit, keysplit_piano\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_directsound 60, 0, DirectSoundWaveData_sc88pro_glockenspiel, 255, 165, 51, 242\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_directsound 60, 0, DirectSoundWaveData_sc88pro_organ2, 255, 0, 255, 127\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_directsound 60, 0, DirectSoundWaveData_sc88pro_nylon_str_guitar, 255, 180, 128, 120\n\tvoice_directsound 60, 0, DirectSoundWaveData_sc88pro_nylon_str_guitar, 255, 180, 128, 120\n\tvoice_directsound 60, 0, DirectSoundWaveData_sc88pro_nylon_str_guitar, 255, 180, 128, 120\n\tvoice_directsound 60, 0, DirectSoundWaveData_sc88pro_nylon_str_guitar, 255, 180, 128, 120\n\tvoice_directsound 60, 0, DirectSoundWaveData_sd90_classical_overdrive_guitar, 255, 0, 220, 120\n\tvoice_directsound 60, 0, DirectSoundWaveData_sd90_classical_overdrive_guitar, 255, 0, 220, 120\n\tvoice_directsound 60, 0, DirectSoundWaveData_sd90_classical_overdrive_guitar, 255, 0, 220, 120\n\tvoice_directsound 60, 0, DirectSoundWaveData_sd90_classical_overdrive_guitar, 255, 0, 220, 120\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 253, 0, 149\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_keysplit voicegroup_strings_keysplit, keysplit_strings\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_directsound 60, 0, DirectSoundWaveData_classical_choir_voice_ahhs, 255, 0, 230, 150\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n\tvoice_directsound 60, 0, DirectSoundWaveData_sc88pro_flute, 255, 0, 255, 165\n'

def die(message):
    raise SystemExit("ERRO: " + message)


def find_root():
    script = Path(__file__).resolve()
    candidates = [
        Path.cwd().resolve(),
        script.parent.resolve(),
        script.parent.parent.resolve(),
    ]
    for candidate in candidates:
        if (candidate / "src/radio.c").exists() and (candidate / "include/constants/songs.h").exists():
            return candidate
    die(
        "nao achei a raiz do pokeemerald-expansion. "
        "Deixe este script em PHYTON/ ou na raiz do projeto."
    )


ROOT = find_root()
MID_DST = ROOT / "sound/songs/midi"
MIDI_CFG = MID_DST / "midi.cfg"
SONGS_H = ROOT / "include/constants/songs.h"
SONG_TABLE = ROOT / "sound/song_table.inc"
RADIO_C = ROOT / "src/radio.c"
BACKUP_DIR = ROOT / "PHYTON" / "_backups" / "indie_guitar_fix_v2"
VOICEGROUP_FILE = ROOT / "sound/voicegroups/hlw_indie_guitar.inc"
VOICE_GROUPS_INC = ROOT / "sound/voice_groups.inc"
DIRECT_SOUND_DATA = ROOT / "sound/direct_sound_data.inc"


def backup(path):
    BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    target = BACKUP_DIR / path.name
    if not target.exists():
        shutil.copyfile(path, target)
        target.touch()
        print("[BACKUP]", target)


def write_if_changed(path, text):
    current = path.read_text(encoding="utf-8")
    if current == text:
        print("[OK] sem mudanca:", path)
        return
    backup(path)
    path.write_text(text, encoding="utf-8")
    path.touch()
    print("[PATCH]", path)


def parse_defines(text):
    return {
        m.group(1): m.group(2)
        for m in re.finditer(r"^\s*#define\s+([A-Za-z0-9_]+)\s+([^\s/]+)", text, re.M)
    }


def resolve_value(token, defines, seen=None):
    seen = set() if seen is None else seen
    token = token.strip()
    try:
        return int(token, 0)
    except ValueError:
        pass
    if token in seen or token not in defines:
        return None
    seen.add(token)
    return resolve_value(defines[token], defines, seen)


def patch_songs_h(text):
    end_match = re.search(r"^\s*#define\s+END_MUS\s+([^\s/]+).*$", text, re.M)
    if not end_match:
        die("nao achei #define END_MUS em include/constants/songs.h")

    old_end_token = end_match.group(1)
    defines = parse_defines(text)
    old_end_value = resolve_value(old_end_token, defines)

    if old_end_value is None:
        values = []
        for name, raw in defines.items():
            if name.startswith("MUS_"):
                value = resolve_value(raw, defines)
                if value is not None and value < 0x7FFF:
                    values.append(value)
        if not values:
            die("nao consegui resolver o ID atual de END_MUS")
        old_end_value = max(values)

    next_id = old_end_value + 1
    new_lines = []
    assigned = {}

    for macro, slug, title, volume in SONGS:
        existing = resolve_value(macro, defines)
        if existing is None:
            assigned[macro] = next_id
            new_lines.append(f"#define {macro:<38} {next_id}\n")
            defines[macro] = str(next_id)
            next_id += 1
        else:
            assigned[macro] = existing

    if new_lines:
        text = text[:end_match.start()] + "".join(new_lines) + text[end_match.start():]
        newest = max(SONGS, key=lambda item: assigned[item[0]])[0]
        if assigned[newest] > old_end_value:
            text = re.sub(
                r"^\s*#define\s+END_MUS\s+[^\n]+$",
                f"#define END_MUS {newest}",
                text,
                count=1,
                flags=re.M,
            )

    return text, old_end_token, assigned


def patch_song_table(text, old_end_token):
    missing = [
        slug
        for macro, slug, title, volume in SONGS
        if not re.search(rf"^\s*song\s+mus_{re.escape(slug)}\s*,", text, re.M)
    ]
    if not missing:
        return text

    old_song = old_end_token.lower()
    match = re.search(
        rf"^(\s*song\s+{re.escape(old_song)})(\s*,[^\n]+)$",
        text,
        re.M,
    )
    if match:
        suffix = match.group(2)
        insert_at = match.end()
    else:
        candidates = list(
            re.finditer(r"^\s*song\s+mus_[a-z0-9_]+\s*,[^\n]+$", text, re.M)
        )
        if not candidates:
            die("nao achei linhas song mus_... em sound/song_table.inc")
        match = candidates[-1]
        suffix_match = re.search(r"(\s*,[^\n]+)$", match.group(0))
        suffix = suffix_match.group(1) if suffix_match else ", 0, 0"
        insert_at = match.end()
        print("[AVISO] END_MUS nao localizado na song table; usando a ultima musica")

    additions = "".join(f"\n\tsong mus_{slug}{suffix}" for slug in missing)
    return text[:insert_at] + additions + text[insert_at:]


def patch_midi_cfg(text):
    if text and not text.endswith("\n"):
        text += "\n"

    for macro, slug, title, volume in SONGS:
        filename = f"mus_{slug}.mid"
        pattern = rf"^\s*{re.escape(filename)}\s*:"
        line = f"{filename + ':':<44} -E -R35 -G_hlw_indie_guitar -V{volume:03d}"
        if re.search(pattern, text, re.M):
            text = re.sub(
                rf"^\s*{re.escape(filename)}\s*:.*$",
                line,
                text,
                count=1,
                flags=re.M,
            )
        else:
            text += line + "\n"

    return text


def patch_macro_list(text):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start < 0 or end < 0:
        die("RADIO_SOUND_LIST_BGM nao encontrado em src/radio.c")

    block = text[start:end]
    lines = block.splitlines()

    missing = [
        macro
        for macro, slug, title, volume in SONGS
        if not any(f"X({macro})" in line for line in lines)
    ]
    if not missing:
        return text

    anchor = next(
        (
            i
            for i, line in enumerate(lines)
            if "X(MUS_UMINEKO_WORLDEND_DOMINATOR)" in line
        ),
        None,
    )

    x_indexes = [
        i for i, line in enumerate(lines)
        if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", line)
    ]
    if not x_indexes:
        die("lista X(MUS_...) vazia")

    position = anchor + 1 if anchor is not None else x_indexes[-1] + 1
    for offset, macro in enumerate(missing):
        lines.insert(position + offset, f"    X({macro})")

    x_indexes = [
        i for i, line in enumerate(lines)
        if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", line)
    ]
    for number, index in enumerate(x_indexes):
        base = re.sub(r"\s*\\\s*$", "", lines[index]).rstrip()
        lines[index] = base + (" \\" if number < len(x_indexes) - 1 else "")

    new_block = "\n".join(lines)
    if block.endswith("\n"):
        new_block += "\n"
    return text[:start] + new_block + text[end:]


def add_indie_station_entries(text):
    pattern = r"(static const u16 sStation_IndieRock\[\] = \{)(.*?)(\n\};)"
    match = re.search(pattern, text, re.S)
    if not match:
        die("nao achei sStation_IndieRock[] em src/radio.c")

    body = match.group(2)
    missing = [
        macro
        for macro, slug, title, volume in SONGS
        if not re.search(rf"\b{re.escape(macro)}\s*,", body)
    ]
    if not missing:
        return text

    pos = body.rfind("    STATION_END")
    if pos < 0:
        die("STATION_END nao encontrado em sStation_IndieRock")

    addition = (
        "\n    // Indie classics batch - Mac DeMarco / Tame Impala / Cure / Elliott Smith / Joy Division\n"
        + "".join(f"    {macro},\n" for macro in missing)
    )

    body = body[:pos] + addition + body[pos:]
    return text[:match.start(2)] + body + text[match.end(2):]


INDIE_NAME_CONSTANTS = r"""static const u8 sIndieName_FreakingOutNeighborhood[] = _("FREAKING OUT THE NEIGHBORHOOD (MAC DEMARCO)");
static const u8 sIndieName_DraculaTameImpala[]       = _("DRACULA (TAME IMPALA)");
static const u8 sIndieName_LovesongCure[]             = _("LOVESONG (THE CURE)");
static const u8 sIndieName_FridayImInLove[]           = _("FRIDAY I'M IN LOVE (THE CURE)");
static const u8 sIndieName_BoysDontCry[]              = _("BOYS DON'T CRY (THE CURE)");
static const u8 sIndieName_RoseParade[]               = _("ROSE PARADE (ELLIOTT SMITH)");
static const u8 sIndieName_Shadowplay[]               = _("SHADOWPLAY (JOY DIVISION)");
static const u8 sIndieName_NewDawnFades[]             = _("NEW DAWN FADES (JOY DIVISION)");
static const u8 sIndieName_Disorder[]                 = _("DISORDER (JOY DIVISION)");
static const u8 sIndieName_LoveWillTearUsApart[]      = _("LOVE WILL TEAR US APART (JOY DIVISION)");"""

INDIE_CASES = r"""    case MUS_FREAKING_OUT_THE_NEIGHBORHOOD:
        return sIndieName_FreakingOutNeighborhood;
    case MUS_DRACULA_TAME_IMPALA:
        return sIndieName_DraculaTameImpala;
    case MUS_LOVESONG_THE_CURE:
        return sIndieName_LovesongCure;
    case MUS_FRIDAY_IM_IN_LOVE:
        return sIndieName_FridayImInLove;
    case MUS_BOYS_DONT_CRY:
        return sIndieName_BoysDontCry;
    case MUS_ROSE_PARADE:
        return sIndieName_RoseParade;
    case MUS_SHADOWPLAY:
        return sIndieName_Shadowplay;
    case MUS_NEW_DAWN_FADES:
        return sIndieName_NewDawnFades;
    case MUS_DISORDER:
        return sIndieName_Disorder;
    case MUS_LOVE_WILL_TEAR_US_APART:
        return sIndieName_LoveWillTearUsApart;"""


def find_function_block(text, signature):
    start = text.find(signature)
    if start < 0:
        return None
    brace = text.find("{", start)
    if brace < 0:
        return None
    depth = 0
    for i in range(brace, len(text)):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                return start, brace, i + 1
    return None


def patch_indie_display_names(text):
    signature = "static const u8 *Radio_GetIndieDisplayName(u16 songId)"

    if "sIndieName_FreakingOutNeighborhood" not in text:
        pos = text.find(signature)
        if pos < 0:
            die("Radio_GetIndieDisplayName nao encontrado")
        text = text[:pos] + INDIE_NAME_CONSTANTS + "\n\n" + text[pos:]

    block = find_function_block(text, signature)
    if block is None:
        die("nao consegui analisar Radio_GetIndieDisplayName")

    start, brace, end = block
    func = text[start:end]

    missing_cases = [
        macro
        for macro, slug, title, volume in SONGS
        if f"case {macro}:" not in func
    ]
    if not missing_cases:
        return text

    chunks = re.findall(
        r"    case (MUS_[A-Z0-9_]+):\n        return ([A-Za-z0-9_]+);\n",
        INDIE_CASES,
    )
    case_chunks = []
    for macro, ret in chunks:
        if macro in missing_cases:
            case_chunks.append(f"    case {macro}:\n        return {ret};\n")

    default_pos = func.find("    default:")
    if default_pos < 0:
        die("default do Radio_GetIndieDisplayName nao encontrado")

    func = func[:default_pos] + "".join(case_chunks) + func[default_pos:]
    return text[:start] + func + text[end:]


def patch_radio(text):
    text = patch_macro_list(text)
    text = add_indie_station_entries(text)
    text = patch_indie_display_names(text)
    return text


for path in (MIDI_CFG, SONGS_H, SONG_TABLE, RADIO_C, VOICE_GROUPS_INC, DIRECT_SOUND_DATA):
    if not path.exists():
        die(f"nao achei {path}")

MID_DST.mkdir(parents=True, exist_ok=True)

# ------------------------------------------------------------------
# Install the custom INDIE guitar voicegroup.
# ------------------------------------------------------------------
required_symbols = (
    "DirectSoundWaveData_sc88pro_nylon_str_guitar",
    "DirectSoundWaveData_sd90_classical_overdrive_guitar",
    "DirectSoundWaveData_sc88pro_fingered_bass",
    "DirectSoundWaveData_sc88pro_glockenspiel",
    "DirectSoundWaveData_sc88pro_organ2",
    "DirectSoundWaveData_classical_choir_voice_ahhs",
    "DirectSoundWaveData_sc88pro_flute",
)
direct_text = DIRECT_SOUND_DATA.read_text(encoding="utf-8")
missing_symbols = [symbol for symbol in required_symbols if symbol not in direct_text]
if missing_symbols:
    die(
        "seu direct_sound_data.inc nao possui estes samples: "
        + ", ".join(missing_symbols)
    )

VOICEGROUP_FILE.parent.mkdir(parents=True, exist_ok=True)
if VOICEGROUP_FILE.exists():
    old_vg = VOICEGROUP_FILE.read_text(encoding="utf-8")
    if old_vg != VOICEGROUP_TEXT:
        backup(VOICEGROUP_FILE)
        VOICEGROUP_FILE.write_text(VOICEGROUP_TEXT, encoding="utf-8")
        VOICEGROUP_FILE.touch()
        print("[PATCH]", VOICEGROUP_FILE)
    else:
        print("[OK] voicegroup ja instalado:", VOICEGROUP_FILE)
else:
    VOICEGROUP_FILE.write_text(VOICEGROUP_TEXT, encoding="utf-8")
    VOICEGROUP_FILE.touch()
    print("[WRITE]", VOICEGROUP_FILE)

vg_inc_text = VOICE_GROUPS_INC.read_text(encoding="utf-8")
include_line = '.include "sound/voicegroups/hlw_indie_guitar.inc"'
if include_line not in vg_inc_text:
    if vg_inc_text and not vg_inc_text.endswith("\n"):
        vg_inc_text += "\n"
    vg_inc_text += include_line + "\n"
    write_if_changed(VOICE_GROUPS_INC, vg_inc_text)
else:
    print("[OK] voice_groups.inc ja inclui hlw_indie_guitar")

for macro, slug, title, volume in SONGS:
    filename = f"mus_{slug}.mid"
    try:
        data = zlib.decompress(base64.b64decode(EMBEDDED_MIDIS[filename]))
    except Exception as exc:
        die(f"falha ao extrair {filename}: {exc}")

    destination = MID_DST / filename
    if destination.exists() and destination.read_bytes() == data:
        print("[OK] MIDI ja instalado:", destination)
    else:
        if destination.exists():
            BACKUP_DIR.mkdir(parents=True, exist_ok=True)
            old = BACKUP_DIR / destination.name
            if not old.exists():
                shutil.copyfile(destination, old)
                old.touch()
                print("[BACKUP]", old)
        destination.write_bytes(data)
        destination.touch()
        print("[WRITE]", destination)

songs_patched, old_end_token, assigned = patch_songs_h(
    SONGS_H.read_text(encoding="utf-8")
)
write_if_changed(SONGS_H, songs_patched)
write_if_changed(
    SONG_TABLE,
    patch_song_table(SONG_TABLE.read_text(encoding="utf-8"), old_end_token),
)
write_if_changed(
    MIDI_CFG,
    patch_midi_cfg(MIDI_CFG.read_text(encoding="utf-8")),
)
write_if_changed(
    RADIO_C,
    patch_radio(RADIO_C.read_text(encoding="utf-8")),
)

for macro, slug, title, volume in SONGS:
    generated_s = MID_DST / f"mus_{slug}.s"
    if generated_s.exists():
        generated_s.unlink()
        print("[REMOVE]", generated_s)

    build_root = ROOT / "build"
    if build_root.exists():
        for obj in build_root.glob(f"**/sound/songs/midi/mus_{slug}.o"):
            obj.unlink()
            print("[REMOVE]", obj)

print()
print("[OK] RADIO INDIE - GUITAR FIX V2 instalado")
print("Estacao: INDIE ROCK somente")
print("Joy Division: riffs completos restaurados em guitarra")
print("Voicegroup: _hlw_indie_guitar (guitarras DirectSound reais)")
print("Backups:", BACKUP_DIR)
print()
print("IDs usados:")
for macro, slug, title, volume in SONGS:
    print(f"  {assigned[macro]:>4}  {macro:<38} {title}")
print()
print("Agora rode:")
print("  make -j9")
