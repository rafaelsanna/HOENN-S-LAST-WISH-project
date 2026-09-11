#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import sys

repo = Path.cwd()
src = repo / "src" / "field_weather_effect.c"

if not src.exists():
    candidate = Path.home() / "pokeemerald-expansion"
    if (candidate / "src" / "field_weather_effect.c").exists():
        repo = candidate
        src = repo / "src" / "field_weather_effect.c"
    else:
        sys.exit("ERRO: rode este script dentro de ~/pokeemerald-expansion")

text = src.read_text()
backup = src.with_suffix(src.suffix + ".bak_melmetal_beam_v3_bbox")

if not backup.exists():
    shutil.copy2(src, backup)
    print(f"Backup criado: {backup}")

# Remove old V1/V2 hard-coded sample arrays.
text = re.sub(
    r'\n?static const s8 sConcertBeamMelmetalSampleXOffsets\[\]\s*=\s*\{.*?\};\s*',
    '\n',
    text,
    count=1,
    flags=re.S,
)

text = re.sub(
    r'\n?// The custom 64x64 screen sits much higher.*?'
    r'static const s8 sConcertBeamMelmetalSampleYOffsets\[\]\s*=\s*\{.*?\};\s*',
    '\n',
    text,
    count=1,
    flags=re.S,
)

text = re.sub(
    r'\n?static const s8 sConcertBeamMelmetalSampleYOffsets\[\]\s*=\s*\{.*?\};\s*',
    '\n',
    text,
    count=1,
    flags=re.S,
)

def function_span(source: str, signature: str):
    start = source.find(signature)
    if start < 0:
        raise RuntimeError(f"nao achei {signature}")
    open_brace = source.find("{", start)
    if open_brace < 0:
        raise RuntimeError(f"nao achei a chave de abertura de {signature}")

    depth = 0
    for i in range(open_brace, len(source)):
        if source[i] == "{":
            depth += 1
        elif source[i] == "}":
            depth -= 1
            if depth == 0:
                return start, i + 1
    raise RuntimeError(f"nao achei o fim de {signature}")

helper_name = "GetConcertBeamLightStrengthForMelmetal"

if helper_name not in text:
    try:
        pstart, pend = function_span(
            text,
            "static u8 GetConcertBeamLightStrengthAtPoint"
        )
    except RuntimeError as e:
        sys.exit(f"ERRO: {e}")

    helper = r'''

// Special case for the custom Melmetal stage sprite.
//
// Normal NPCs are small enough that one torso sample is a good approximation.
// This Melmetal slot is a 64x64 animated screen/set-piece, so its map anchor can
// sit outside the mathematical cone even while the visible upper part is clearly
// crossed by the spotlight. Test the rendered sprite rectangle instead.
static u8 GetConcertBeamLightStrengthForMelmetal(const struct Sprite *sprite, u8 beamId)
{
    s16 centerX = sprite->x + sprite->x2;
    s16 centerY = sprite->y + sprite->y2;
    s16 halfWidth = sprite->centerToCornerVecX;
    s16 halfHeight = sprite->centerToCornerVecY;
    s16 left;
    s16 right;
    s16 top;
    s16 bottom;
    u8 xIndex;
    u8 yIndex;
    u8 strength = 0;

    // centerToCornerVec is normally negative. Be defensive in case this build
    // stores/updates it differently; Melmetal is known to be 64x64.
    if (halfWidth < 0)
        halfWidth = -halfWidth;
    if (halfHeight < 0)
        halfHeight = -halfHeight;

    if (halfWidth < 24 || halfWidth > 40)
        halfWidth = 32;
    if (halfHeight < 24 || halfHeight > 40)
        halfHeight = 32;

    // Stay a few pixels inside the OAM rectangle so transparent border pixels do
    // not make the character light up noticeably before the cone reaches the art.
    left   = centerX - halfWidth  + 4;
    right  = centerX + halfWidth  - 4;
    top    = centerY - halfHeight + 4;
    bottom = centerY + halfHeight - 4;

    // 5x5 coverage of the full 64x64 visual rectangle.
    // This includes the upper half that the old torso-only test never reached.
    for (yIndex = 0; yIndex < 5; yIndex++)
    {
        s16 sampleY = top + ((bottom - top) * yIndex) / 4;

        for (xIndex = 0; xIndex < 5; xIndex++)
        {
            s16 sampleX = left + ((right - left) * xIndex) / 4;
            u8 sampleStrength =
                GetConcertBeamLightStrengthAtPoint(sampleX, sampleY, beamId);

            if (sampleStrength > strength)
                strength = sampleStrength;
        }
    }

    return strength;
}
'''
    text = text[:pend] + helper + text[pend:]
    print("Helper de bounding-box do Melmetal adicionado.")
else:
    print("Helper V3 ja existe; nao vou duplicar.")

try:
    fstart, fend = function_span(text, "void ConcertBeam_ApplyObjectLighting(void)")
except RuntimeError as e:
    sys.exit(f"ERRO: {e}")

func = text[fstart:fend]

mel_start = func.find("if (isMelmetal)")
if mel_start < 0:
    sys.exit(
        "ERRO: nao achei 'if (isMelmetal)' dentro de "
        "ConcertBeam_ApplyObjectLighting(). "
        "O patch V1/V2 precisa estar aplicado."
    )

open_brace = func.find("{", mel_start)
if open_brace < 0:
    sys.exit("ERRO: bloco isMelmetal sem chave de abertura.")

depth = 0
close_brace = None
for i in range(open_brace, len(func)):
    if func[i] == "{":
        depth += 1
    elif func[i] == "}":
        depth -= 1
        if depth == 0:
            close_brace = i
            break

if close_brace is None:
    sys.exit("ERRO: nao consegui fechar o bloco if (isMelmetal).")

after = func[close_brace + 1:]
else_match = re.match(r'\s*else\s*\{', after)
if not else_match:
    sys.exit("ERRO: nao achei o else logo depois do bloco isMelmetal.")

else_open = close_brace + 1 + else_match.end() - 1
depth = 0
else_close = None
for i in range(else_open, len(func)):
    if func[i] == "{":
        depth += 1
    elif func[i] == "}":
        depth -= 1
        if depth == 0:
            else_close = i
            break

if else_close is None:
    sys.exit("ERRO: nao consegui fechar o bloco else.")

replacement = r'''if (isMelmetal)
            {
                // 64x64 custom stage sprite: detect beam overlap against the
                // whole visible rectangle, not a single NPC torso point.
                beamStrength =
                    GetConcertBeamLightStrengthForMelmetal(sprite, beamId);
            }
            else
            {
                beamStrength =
                    GetConcertBeamLightStrengthAtPoint(
                        pointX,
                        pointY,
                        beamId
                    );
            }'''

func = func[:mel_start] + replacement + func[else_close + 1:]
text = text[:fstart] + func + text[fend:]

src.write_text(text)

print()
print("OK: Melmetal Concert Beam V3 aplicado.")
print("Mudanca principal:")
print("  - NPC normal: continua testando 1 ponto no torso")
print("  - Melmetal: testa uma grade 5x5 sobre o retangulo 64x64 inteiro")
print("  - isso cobre especialmente a parte de cima do sprite")
print("  - Koraidon, playlist, animacao e posicao do beam nao sao alterados")
print()
print("Agora rode:")
print("  rm -f build/modern/src/field_weather_effect.o build/modern/src/field_weather_effect.d")
print("  make -j8")
