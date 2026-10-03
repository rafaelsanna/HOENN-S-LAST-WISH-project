#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pathlib import Path
from datetime import datetime
import argparse, shutil, subprocess
SCRIPT_DIR=Path(__file__).resolve().parent
TARGET=Path("src/nuzlocke.c")
POKEMON_H=Path("include/pokemon.h")
OLD='static bool8 Nuzlocke_IsSpeciesInPlayerCollection(u16 species)\n{\n    s32 i;\n    s32 box;\n    s32 slot;\n\n    if (species == SPECIES_NONE)\n        return FALSE;\n\n    for (i = 0; i < PARTY_SIZE; i++)\n    {\n        if (GetMonData(&gPlayerParty[i], MON_DATA_SPECIES) == species)\n            return TRUE;\n    }\n\n    if (gPokemonStoragePtr == NULL)\n        return FALSE;\n\n    for (box = 0; box < TOTAL_BOXES_COUNT; box++)\n    {\n        for (slot = 0; slot < IN_BOX_COUNT; slot++)\n        {\n            if (GetBoxMonData(&gPokemonStoragePtr->boxes[box][slot], MON_DATA_SPECIES) == species)\n                return TRUE;\n        }\n    }\n\n    return FALSE;\n}\n\nstatic bool8 Nuzlocke_IsSpeciesAlreadyOwned(u16 species)\n{\n    u16 dexNum;\n\n    if (species == SPECIES_NONE || gSaveBlock2Ptr == NULL)\n        return FALSE;\n\n    dexNum = SpeciesToNationalPokedexNum(species);\n    if (dexNum != 0 && dexNum <= NATIONAL_DEX_COUNT\n     && GetSetPokedexFlag(dexNum, FLAG_GET_CAUGHT))\n        return TRUE;\n\n    if (Nuzlocke_IsSpeciesInPlayerCollection(species))\n        return TRUE;\n\n    if (gSaveBlock3Ptr != NULL && Nuzlocke_IsSpeciesFlagSet(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags, species))\n        return TRUE;\n\n    return FALSE;\n}\n'
NEW='static u16 Nuzlocke_GetEvolutionFamilyRoot(u16 species)\n{\n    u16 preEvolution;\n    u16 safety = 0;\n\n    if (species == SPECIES_NONE || species >= NUM_SPECIES)\n        return SPECIES_NONE;\n\n    // Walk backwards until the first species in the active evolution line.\n    // The safety counter prevents a malformed/custom evolution loop from hanging.\n    while (safety++ < NUM_SPECIES)\n    {\n        preEvolution = GetSpeciesPreEvolution(species);\n        if (preEvolution == SPECIES_NONE || preEvolution == species)\n            break;\n\n        species = preEvolution;\n    }\n\n    return species;\n}\n\nstatic bool8 Nuzlocke_IsSpeciesInPlayerCollection(u16 familyRoot)\n{\n    s32 i;\n    s32 box;\n    s32 slot;\n    u16 ownedSpecies;\n\n    if (familyRoot == SPECIES_NONE)\n        return FALSE;\n\n    for (i = 0; i < PARTY_SIZE; i++)\n    {\n        ownedSpecies = GetMonData(&gPlayerParty[i], MON_DATA_SPECIES);\n        if (ownedSpecies == SPECIES_NONE)\n            continue;\n\n        if (Nuzlocke_GetEvolutionFamilyRoot(ownedSpecies) == familyRoot)\n            return TRUE;\n    }\n\n    if (gPokemonStoragePtr == NULL)\n        return FALSE;\n\n    for (box = 0; box < TOTAL_BOXES_COUNT; box++)\n    {\n        for (slot = 0; slot < IN_BOX_COUNT; slot++)\n        {\n            ownedSpecies = GetBoxMonData(&gPokemonStoragePtr->boxes[box][slot], MON_DATA_SPECIES);\n            if (ownedSpecies == SPECIES_NONE)\n                continue;\n\n            if (Nuzlocke_GetEvolutionFamilyRoot(ownedSpecies) == familyRoot)\n                return TRUE;\n        }\n    }\n\n    return FALSE;\n}\n\nstatic bool8 Nuzlocke_IsSpeciesAlreadyOwned(u16 species)\n{\n    u16 candidate;\n    u16 dexNum;\n    u16 familyRoot;\n\n    if (species == SPECIES_NONE || species >= NUM_SPECIES || gSaveBlock2Ptr == NULL)\n        return FALSE;\n\n    familyRoot = Nuzlocke_GetEvolutionFamilyRoot(species);\n    if (familyRoot == SPECIES_NONE)\n        return FALSE;\n\n    // Party / PC: any member of the same evolution family counts as a dupe.\n    if (Nuzlocke_IsSpeciesInPlayerCollection(familyRoot))\n        return TRUE;\n\n    // Persistent history: a caught or released member of the same evolution\n    // family also keeps the whole family under Species Clause.\n    for (candidate = 1; candidate < NUM_SPECIES; candidate++)\n    {\n        bool8 wasCaught;\n        bool8 wasReleased;\n\n        // Avoid asking evolution helpers about species disabled by this build.\n        if (!IsSpeciesEnabled(candidate))\n            continue;\n\n        dexNum = SpeciesToNationalPokedexNum(candidate);\n        wasCaught = dexNum != 0\n                 && dexNum <= NATIONAL_DEX_COUNT\n                 && GetSetPokedexFlag(dexNum, FLAG_GET_CAUGHT);\n\n        wasReleased = gSaveBlock3Ptr != NULL\n                   && Nuzlocke_IsSpeciesFlagSet(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags, candidate);\n\n        if (!wasCaught && !wasReleased)\n            continue;\n\n        if (Nuzlocke_GetEvolutionFamilyRoot(candidate) == familyRoot)\n            return TRUE;\n    }\n\n    return FALSE;\n}\n'
def repo(explicit=None):
    if explicit:
        r=Path(explicit).expanduser().resolve()
        if not (r/TARGET).is_file(): raise SystemExit(f"Repo inválido: {r}")
        return r
    cur=Path.cwd().resolve()
    for r in [cur,*cur.parents]:
        if (r/TARGET).is_file(): return r
    raise SystemExit("Não encontrei a raiz do pokeemerald-expansion.")
def backup(p):
    d=SCRIPT_DIR/"backups"; d.mkdir(parents=True,exist_ok=True)
    out=d/f"nuzlocke_{datetime.now().strftime('%Y%m%d_%H%M%S_%f')}.c"
    shutil.copy2(p,out); return out
def main():
    ap=argparse.ArgumentParser(); ap.add_argument("--repo"); ap.add_argument("--dry-run",action="store_true"); ap.add_argument("--compile",action="store_true"); ap.add_argument("--jobs",type=int,default=8); a=ap.parse_args()
    r=repo(a.repo)
    h=(r/POKEMON_H)
    if not h.is_file(): raise SystemExit("include/pokemon.h não encontrado.")
    ht=h.read_text(encoding="utf-8")
    missing=[x for x in ("GetSpeciesPreEvolution","IsSpeciesEnabled") if x not in ht]
    if missing: raise SystemExit("API ausente: "+", ".join(missing)+"\nRode: grep -nE \"GetSpeciesPreEvolution|IsSpeciesEnabled\" include/pokemon.h src/pokemon.c")
    p=r/TARGET; t=p.read_text(encoding="utf-8")
    if NEW in t: nt=t; changed=False
    elif OLD in t: nt=t.replace(OLD,NEW,1); changed=True
    else: raise SystemExit("Species Clause está em formato diferente; não vou sobrescrever no escuro.")
    print("=== NUZLOCKE SPECIES CLAUSE - EVOLUTION FAMILY V1 ===")
    print("Rattata/Raticate, Pichu/Pikachu/Raichu e branches como Eevee contam como a mesma família.")
    print("Party, PC, Pokédex caught e released são considerados.")
    print("Dupe não consome a captura da rota; pode fugir e procurar outro elegível.")
    print("src/nuzlocke.c:", "mudaria" if changed else "já aplicado")
    if a.dry_run: print("\nDRY-RUN OK."); return 0
    if changed:
        print("Backup:",backup(p)); p.write_text(nt,encoding="utf-8",newline="\n")
    if a.compile: return subprocess.call(["make",f"-j{max(1,a.jobs)}"],cwd=r)
    return 0
if __name__=="__main__": raise SystemExit(main())
