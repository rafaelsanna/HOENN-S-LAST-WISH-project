#!/usr/bin/env python3
from pathlib import Path
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
backup = src.with_suffix(src.suffix + ".bak_melmetal_beam_v4_horizontal")

if not backup.exists():
    shutil.copy2(src, backup)
    print(f"Backup criado: {backup}")

def function_span(source: str, signature: str):
    start = source.find(signature)
    if start < 0:
        return None

    open_brace = source.find("{", start)
    if open_brace < 0:
        return None

    depth = 0
    for i in range(open_brace, len(source)):
        if source[i] == "{":
            depth += 1
        elif source[i] == "}":
            depth -= 1
            if depth == 0:
                return start, i + 1
    return None

point_sig = "static u8 GetConcertBeamLightStrengthAtPoint"
point_span = function_span(text, point_sig)
if point_span is None:
    sys.exit("ERRO: nao achei GetConcertBeamLightStrengthAtPoint().")

helper_sig = "static u8 GetConcertBeamLightStrengthForMelmetal"

new_helper = r'''// Special case for the custom Melmetal 64x64 stage sprite.
//
// IMPORTANT: vertical position is intentionally ignored here.
//
// The normal NPC lighting test rejects a point when its Y is above the beam
// apex. That is correct for normal characters, but wrong for this 64x64 custom
// stage sprite: its visible artwork can overlap the spotlight while its object
// anchor / sampled Y is still above the mathematical cone.
//
// For Melmetal, project the lighting test onto a fixed horizontal slice inside
// the beam (48 px below the apex), then test several X positions across the
// sprite. Result: if the moving beam crosses Melmetal horizontally, Melmetal
// receives the beam palette light regardless of its map Y.
static u8 GetConcertBeamLightStrengthForMelmetal(const struct Sprite *sprite, u8 beamId)
{
    struct Sprite *beam;
    s16 centerX;
    s16 halfWidth;
    s16 left;
    s16 right;
    s16 probeY;
    u8 sample;
    u8 strength = 0;

    if (!sConcertBeamCreated || beamId >= NUM_CONCERT_BEAMS)
        return 0;

    if (sConcertBeamSpriteIds[beamId] >= MAX_SPRITES)
        return 0;

    beam = &gSprites[sConcertBeamSpriteIds[beamId]];

    if (!beam->inUse || beam->invisible)
        return 0;

    centerX = sprite->x + sprite->x2;

    halfWidth = sprite->centerToCornerVecX;
    if (halfWidth < 0)
        halfWidth = -halfWidth;

    // Melmetal is known to be a 64x64 custom overworld sprite.
    if (halfWidth < 24 || halfWidth > 40)
        halfWidth = 32;

    // A little inset avoids transparent border pixels triggering too early.
    left = centerX - halfWidth + 5;
    right = centerX + halfWidth - 5;

    // GetConcertBeamLightStrengthAtPoint() defines:
    //   apexY = beam->y - 32
    //
    // Probe at dy = 48, i.e. well inside the visible cone where it is wide
    // enough to match what the player actually sees on screen.
    probeY = beam->y + 16;

    // Seven horizontal samples across the 64x64 sprite.
    for (sample = 0; sample < 7; sample++)
    {
        s16 sampleX = left + ((right - left) * sample) / 6;
        u8 sampleStrength =
            GetConcertBeamLightStrengthAtPoint(sampleX, probeY, beamId);

        if (sampleStrength > strength)
            strength = sampleStrength;
    }

    return strength;
}'''

helper_span = function_span(text, helper_sig)
if helper_span is not None:
    hs, he = helper_span
    text = text[:hs] + new_helper + text[he:]
    print("Helper V3 substituido pela logica horizontal V4.")
else:
    # Insert immediately after the normal point-light helper.
    ps, pe = point_span
    text = text[:pe] + "\n\n" + new_helper + text[pe:]
    print("Helper V4 adicionado.")

# Make sure ConcertBeam_ApplyObjectLighting actually calls the helper
apply_span = function_span(text, "void ConcertBeam_ApplyObjectLighting(void)")
if apply_span is None:
    sys.exit("ERRO: nao achei ConcertBeam_ApplyObjectLighting().")

as_, ae = apply_span
func = text[as_:ae]

if "GetConcertBeamLightStrengthForMelmetal(sprite, beamId)" not in func:
    marker = "if (isMelmetal)"
    pos = func.find(marker)
    if pos < 0:
        sys.exit(
            "ERRO: nao achei o case isMelmetal dentro de "
            "ConcertBeam_ApplyObjectLighting()."
        )

    open_brace = func.find("{", pos)
    if open_brace < 0:
        sys.exit("ERRO: bloco isMelmetal sem chave.")

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
        sys.exit("ERRO: nao consegui localizar o fim do case isMelmetal.")

    replacement = r'''if (isMelmetal)
            {
                // Special 64x64 stage sprite: ignore vertical gating and
                // illuminate whenever the moving beam crosses it horizontally.
                beamStrength =
                    GetConcertBeamLightStrengthForMelmetal(sprite, beamId);
            }'''

    func = func[:pos] + replacement + func[close_brace + 1:]
    text = text[:as_] + func + text[ae:]
    print("Case Melmetal atualizado para chamar o helper V4.")
else:
    print("Case Melmetal ja chama o helper especial.")

src.write_text(text)

print()
print("OK: Melmetal beam lighting V4 aplicado.")
print()
print("Agora a regra especial e:")
print("  - NPC comum: continua dependendo de X + Y normalmente")
print("  - Melmetal: Y e ignorado")
print("  - Melmetal recebe luz quando o beam cruza horizontalmente o sprite 64x64")
print("  - a intensidade ainda vem da mesma funcao do beam")
print("  - Koraidon e outros NPCs nao sao alterados")
print()
print("Rode:")
print("  rm -f build/modern/src/field_weather_effect.o build/modern/src/field_weather_effect.d")
print("  make -j8")
