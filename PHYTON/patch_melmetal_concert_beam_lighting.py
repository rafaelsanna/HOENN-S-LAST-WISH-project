#!/usr/bin/env python3
from pathlib import Path
import shutil
import sys

REPO = Path.cwd()
if not (REPO / "src" / "field_weather_effect.c").exists():
    candidate = Path.home() / "pokeemerald-expansion"
    if (candidate / "src" / "field_weather_effect.c").exists():
        REPO = candidate
    else:
        sys.exit("ERRO: rode este script dentro de ~/pokeemerald-expansion")

path = REPO / "src" / "field_weather_effect.c"
backup = path.with_suffix(path.suffix + ".bak_melmetal_concert_beam")

text = path.read_text()

old_define = "#define CONCERT_BEAM_OBJECT_PALETTE_COUNT     12"

new_defines = '''#define CONCERT_BEAM_STANDARD_PALETTE_COUNT   12
#define CONCERT_BEAM_OBJECT_PALETTE_COUNT     16

// Melmetal is used here as a custom 64x64 stage/screen sprite.
// Sample three horizontal points so the spotlight can illuminate the
// visible left/center/right portions of the large sprite.
static const s8 sConcertBeamMelmetalSampleXOffsets[] =
{
    -20,
      0,
     20,
};'''

if "CONCERT_BEAM_STANDARD_PALETTE_COUNT" not in text:
    if old_define not in text:
        sys.exit(
            "ERRO: nao achei o define antigo "
            "CONCERT_BEAM_OBJECT_PALETTE_COUNT 12.\n"
            "O arquivo pode estar diferente do esperado."
        )
    text = text.replace(old_define, new_defines, 1)

signature = "void ConcertBeam_ApplyObjectLighting(void)"
start = text.find(signature)
if start == -1:
    sys.exit("ERRO: nao achei ConcertBeam_ApplyObjectLighting().")

brace_open = text.find("{", start)
if brace_open == -1:
    sys.exit("ERRO: achei a funcao, mas nao achei a chave de abertura.")

depth = 0
end = None
for i in range(brace_open, len(text)):
    c = text[i]
    if c == "{":
        depth += 1
    elif c == "}":
        depth -= 1
        if depth == 0:
            end = i + 1
            break

if end is None:
    sys.exit("ERRO: nao consegui localizar o fim de ConcertBeam_ApplyObjectLighting().")

new_function = '''void ConcertBeam_ApplyObjectLighting(void)
{
    u8 paletteStrength[CONCERT_BEAM_OBJECT_PALETTE_COUNT] = {0};
    u8 objectEventId;
    u8 paletteNum;

    if (!sConcertBeamCreated)
        return;

    // Collect the strongest beam contribution for each overworld OBJ palette.
    // Ordinary object events remain restricted to the normal 0..11 slots.
    // Melmetal may use one of the dynamic OBJ palette slots 12..15 because
    // this species slot is being used as a custom 64x64 stage sprite.
    for (objectEventId = 0; objectEventId < OBJECT_EVENTS_COUNT; objectEventId++)
    {
        struct ObjectEvent *objectEvent = &gObjectEvents[objectEventId];
        struct Sprite *sprite;
        s16 pointX;
        s16 pointY;
        u8 strength = 0;
        u8 beamId;
        bool8 isMelmetal;

        if (!objectEvent->active || objectEvent->invisible)
            continue;
        if (objectEvent->spriteId >= MAX_SPRITES)
            continue;

        sprite = &gSprites[objectEvent->spriteId];
        if (!sprite->inUse || sprite->invisible)
            continue;

        paletteNum = sprite->oam.paletteNum;

        // Hardware OBJ palette numbers are 0..15.
        if (paletteNum >= CONCERT_BEAM_OBJECT_PALETTE_COUNT)
            continue;

        isMelmetal =
            (objectEvent->graphicsId == OBJ_EVENT_GFX_SPECIES(MELMETAL));

        // Keep custom/weather/UI OBJ palette slots protected for every normal
        // object. Only our Melmetal stage sprite is allowed through here.
        if (paletteNum >= CONCERT_BEAM_STANDARD_PALETTE_COUNT
         && !isMelmetal)
        {
            continue;
        }

        // Object sprites use map-space x/y. Sample near the upper body.
        pointX = sprite->x + sprite->x2;
        pointY = sprite->y + sprite->y2
               + CONCERT_BEAM_OBJECT_SAMPLE_Y_OFFSET;

        for (beamId = 0; beamId < NUM_CONCERT_BEAMS; beamId++)
        {
            u8 beamStrength = 0;

            if (isMelmetal)
            {
                u8 sampleId;

                // Melmetal is 64x64, so a single center point can miss a beam
                // that is visibly crossing one side of the artwork.
                for (sampleId = 0;
                     sampleId < ARRAY_COUNT(sConcertBeamMelmetalSampleXOffsets);
                     sampleId++)
                {
                    u8 sampleStrength =
                        GetConcertBeamLightStrengthAtPoint(
                            pointX + sConcertBeamMelmetalSampleXOffsets[sampleId],
                            pointY,
                            beamId
                        );

                    if (sampleStrength > beamStrength)
                        beamStrength = sampleStrength;
                }
            }
            else
            {
                beamStrength =
                    GetConcertBeamLightStrengthAtPoint(
                        pointX,
                        pointY,
                        beamId
                    );
            }

            if (beamStrength > strength)
                strength = beamStrength;
        }

        if (strength > paletteStrength[paletteNum])
            paletteStrength[paletteNum] = strength;
    }

    // ConcertLights_ApplyLighting() already rebuilt the normal concert grade
    // this frame. Add the local warm spotlight on top without accumulating.
    for (paletteNum = 0;
         paletteNum < CONCERT_BEAM_OBJECT_PALETTE_COUNT;
         paletteNum++)
    {
        if (paletteStrength[paletteNum] != 0)
        {
            BlendPalettesFine(
                1,
                gPlttBufferFaded + OBJ_PLTT_ID(paletteNum),
                gPlttBufferFaded + OBJ_PLTT_ID(paletteNum),
                paletteStrength[paletteNum],
                CONCERT_BEAM_LIGHT_COLOR
            );
        }
    }
}'''

current_function = text[start:end]

if "sConcertBeamMelmetalSampleXOffsets" in current_function:
    print("A funcao ja parece estar com o patch do Melmetal.")
else:
    text = text[:start] + new_function + text[end:]

if not backup.exists():
    shutil.copy2(path, backup)
    print(f"Backup criado: {backup}")
else:
    print(f"Backup ja existe: {backup}")

path.write_text(text)

print()
print("OK: patch aplicado em:")
print(f"  {path}")
print()
print("Ele faz:")
print("  - mantem NPCs normais usando palettes 0..11")
print("  - permite Melmetal usar palette OBJ 12..15")
print("  - amostra esquerda/centro/direita do sprite 64x64")
print("  - faz o beam clarear Melmetal como os outros NPCs")
print("  - NAO altera Koraidon")
print("  - NAO altera playlist")
print("  - NAO altera posicao/animacao do beam")
print()
print("Agora rode:")
print("  rm -f build/modern/src/field_weather_effect.o build/modern/src/field_weather_effect.d")
print("  make -j8")
