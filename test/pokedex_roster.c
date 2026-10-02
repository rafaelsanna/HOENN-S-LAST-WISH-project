#include "global.h"
#include "pokedex.h"
#include "pokemon.h"
#include "test/test.h"

static const u16 sAddedDexSpecies[] =
{
    SPECIES_TREECKO,
    SPECIES_GROVYLE,
    SPECIES_SCEPTILE,
    SPECIES_MUDKIP,
    SPECIES_MARSHTOMP,
    SPECIES_SWAMPERT,
    SPECIES_CHIKORITA,
    SPECIES_BAYLEEF,
    SPECIES_MEGANIUM,
    SPECIES_CYNDAQUIL,
    SPECIES_QUILAVA,
    SPECIES_TYPHLOSION,
    SPECIES_LEDYBA,
    SPECIES_LEDIAN,
    SPECIES_SPINARAK,
    SPECIES_ARIADOS,
    SPECIES_SPEAROW,
    SPECIES_FEAROW,
    SPECIES_HOOTHOOT,
    SPECIES_NOCTOWL,
    SPECIES_AIPOM,
    SPECIES_SUNKERN,
    SPECIES_SUNFLORA,
    SPECIES_SUDOWOODO,
    SPECIES_MAREEP,
    SPECIES_FLAAFFY,
    SPECIES_AMPHAROS,
    SPECIES_EXEGGCUTE,
    SPECIES_EXEGGUTOR,
    SPECIES_DIGLETT,
    SPECIES_DUGTRIO,
    SPECIES_SHUCKLE,
    SPECIES_KRABBY,
    SPECIES_KINGLER,
    SPECIES_OMANYTE,
    SPECIES_OMASTAR,
    SPECIES_KABUTO,
    SPECIES_KABUTOPS,
    SPECIES_AERODACTYL,
    SPECIES_MILTANK,
    SPECIES_DITTO,
    SPECIES_REMORAID,
    SPECIES_OCTILLERY,
    SPECIES_LARVITAR,
    SPECIES_PUPITAR,
    SPECIES_TYRANITAR,
    SPECIES_SEEL,
    SPECIES_DEWGONG,
    SPECIES_SWINUB,
    SPECIES_PILOSWINE,
    SPECIES_MAMOSWINE,
    SPECIES_DELIBIRD,
    SPECIES_SHELLDER,
    SPECIES_CLOYSTER,
    SPECIES_DUNSPARCE,
    SPECIES_DUDUNSPARCE,
    SPECIES_TAUROS,
    SPECIES_KANGASKHAN,
    SPECIES_BELLSPROUT,
    SPECIES_WEEPINBELL,
    SPECIES_VICTREEBEL,
    SPECIES_PONYTA,
    SPECIES_RAPIDASH,
    SPECIES_EKANS,
    SPECIES_ARBOK,
    SPECIES_PARAS,
    SPECIES_PARASECT,
    SPECIES_VENONAT,
    SPECIES_VENOMOTH,
};

static const struct
{
    u16 previous;
    u16 first;
    u16 last;
    u16 next;
} sAddedFamilyPlacements[] =
{
    {HOENN_DEX_RAPIDASH, HOENN_DEX_TREECKO, HOENN_DEX_SCEPTILE, HOENN_DEX_MUDKIP},
    {HOENN_DEX_SCEPTILE, HOENN_DEX_MUDKIP, HOENN_DEX_SWAMPERT, HOENN_DEX_CHIKORITA},
    {HOENN_DEX_SWAMPERT, HOENN_DEX_CHIKORITA, HOENN_DEX_MEGANIUM, HOENN_DEX_CYNDAQUIL},
    {HOENN_DEX_MEGANIUM, HOENN_DEX_CYNDAQUIL, HOENN_DEX_TYPHLOSION, HOENN_DEX_PICHU},
    {HOENN_DEX_DUSTOX, HOENN_DEX_LEDYBA, HOENN_DEX_ARIADOS, HOENN_DEX_VENONAT},
    {HOENN_DEX_PIDGEOT, HOENN_DEX_SPEAROW, HOENN_DEX_NOCTOWL, HOENN_DEX_RALTS},
    {HOENN_DEX_SLAKING, HOENN_DEX_AIPOM, HOENN_DEX_AIPOM, HOENN_DEX_ABRA},
    {HOENN_DEX_JUMPLUFF, HOENN_DEX_SUNKERN, HOENN_DEX_SUNFLORA, HOENN_DEX_GEODUDE},
    {HOENN_DEX_NOSEPASS, HOENN_DEX_SUDOWOODO, HOENN_DEX_SUDOWOODO, HOENN_DEX_SKITTY},
    {HOENN_DEX_MANECTRIC, HOENN_DEX_MAREEP, HOENN_DEX_AMPHAROS, HOENN_DEX_PLUSLE},
    {HOENN_DEX_VICTREEBEL, HOENN_DEX_EXEGGCUTE, HOENN_DEX_EXEGGUTOR, HOENN_DEX_DODUO},
    {HOENN_DEX_SANDSLASH, HOENN_DEX_DIGLETT, HOENN_DEX_DUGTRIO, HOENN_DEX_PINECO},
    {HOENN_DEX_FORRETRESS, HOENN_DEX_SHUCKLE, HOENN_DEX_SHUCKLE, HOENN_DEX_SPINDA},
    {HOENN_DEX_CRAWDAUNT, HOENN_DEX_KRABBY, HOENN_DEX_KINGLER, HOENN_DEX_BALTOY},
    {HOENN_DEX_CLAYDOL, HOENN_DEX_OMANYTE, HOENN_DEX_AERODACTYL, HOENN_DEX_LILEEP},
    {HOENN_DEX_BLISSEY, HOENN_DEX_MILTANK, HOENN_DEX_MILTANK, HOENN_DEX_TAUROS},
    {HOENN_DEX_KECLEON, HOENN_DEX_DITTO, HOENN_DEX_DITTO, HOENN_DEX_SHUPPET},
    {HOENN_DEX_LANTURN, HOENN_DEX_REMORAID, HOENN_DEX_OCTILLERY, HOENN_DEX_MANTYKE},
    {HOENN_DEX_SALAMENCE, HOENN_DEX_LARVITAR, HOENN_DEX_TYRANITAR, HOENN_DEX_BELDUM},
    {HOENN_DEX_WALREIN, HOENN_DEX_SEEL, HOENN_DEX_DEWGONG, HOENN_DEX_CLAMPERL},
    {HOENN_DEX_GLALIE, HOENN_DEX_SWINUB, HOENN_DEX_MAMOSWINE, HOENN_DEX_SPHEAL},
    {HOENN_DEX_JYNX, HOENN_DEX_DELIBIRD, HOENN_DEX_DELIBIRD, HOENN_DEX_SNORUNT},
    {HOENN_DEX_GOREBYSS, HOENN_DEX_SHELLDER, HOENN_DEX_CLOYSTER, HOENN_DEX_RELICANTH},
    {HOENN_DEX_SMEARGLE, HOENN_DEX_DUNSPARCE, HOENN_DEX_DUDUNSPARCE, HOENN_DEX_PINSIR},
    {HOENN_DEX_MILTANK, HOENN_DEX_TAUROS, HOENN_DEX_KANGASKHAN, HOENN_DEX_FEEBAS},
    {HOENN_DEX_BELLOSSOM, HOENN_DEX_BELLSPROUT, HOENN_DEX_VICTREEBEL, HOENN_DEX_EXEGGCUTE},
    {HOENN_DEX_ARCANINE, HOENN_DEX_PONYTA, HOENN_DEX_RAPIDASH, HOENN_DEX_TREECKO},
    {HOENN_DEX_URSALUNA, HOENN_DEX_EKANS, HOENN_DEX_ARBOK, HOENN_DEX_SEVIPER},
    {HOENN_DEX_VENOMOTH, HOENN_DEX_PARAS, HOENN_DEX_PARASECT, HOENN_DEX_NIDORAN_F},
    {HOENN_DEX_ARIADOS, HOENN_DEX_VENONAT, HOENN_DEX_VENOMOTH, HOENN_DEX_PARAS},
};

static void SetUpCompletedRegionalDex(void)
{
    memset(gSaveBlock3Ptr->dexSeen, 0, sizeof(gSaveBlock3Ptr->dexSeen));
    memset(gSaveBlock3Ptr->dexCaught, 0, sizeof(gSaveBlock3Ptr->dexCaught));
    for (u16 dexNum = 1; dexNum < HOENN_DEX_COUNT; dexNum++)
        GetSetPokedexFlag(HoennToNationalOrder(dexNum), FLAG_SET_CAUGHT);
}

static void ClearCaughtSpecies(u16 species)
{
    u16 nationalNum = SpeciesToNationalPokedexNum(species) - 1;

    gSaveBlock3Ptr->dexCaught[nationalNum / 8] &= ~(1 << (nationalNum % 8));
}

TEST("Regional dex includes all newly added species")
{
    EXPECT_EQ(ARRAY_COUNT(sAddedDexSpecies), 69);
    for (u32 i = 0; i < ARRAY_COUNT(sAddedDexSpecies); i++)
    {
        u16 species = sAddedDexSpecies[i];
        u16 dexNum = SpeciesToHoennPokedexNum(species);

        EXPECT(dexNum > HOENN_DEX_NONE && dexNum < HOENN_DEX_COUNT);
        EXPECT_EQ(NationalPokedexNumToSpecies(HoennToNationalOrder(dexNum)), species);
    }
    EXPECT_EQ(SpeciesToHoennPokedexNum(SPECIES_CATERPIE), HOENN_DEX_NONE);
    EXPECT_EQ(SpeciesToHoennPokedexNum(SPECIES_METAPOD), HOENN_DEX_NONE);
    EXPECT_EQ(SpeciesToHoennPokedexNum(SPECIES_BUTTERFREE), HOENN_DEX_NONE);
}

TEST("Regional dex includes every Gen 3 species")
{
    for (u16 nationalNum = NATIONAL_DEX_TREECKO; nationalNum <= NATIONAL_DEX_DEOXYS; nationalNum++)
    {
        u16 species = NationalPokedexNumToSpecies(nationalNum);
        u16 dexNum = SpeciesToHoennPokedexNum(species);

        EXPECT(dexNum > HOENN_DEX_NONE && dexNum < HOENN_DEX_COUNT);
        EXPECT_EQ(HoennToNationalOrder(dexNum), nationalNum);
    }
}

TEST("Regional dex additions preserve the intended family order and neighboring entries")
{
    u32 speciesIndex = 0;

    for (u32 i = 0; i < ARRAY_COUNT(sAddedFamilyPlacements); i++)
    {
        u16 previous = sAddedFamilyPlacements[i].previous;

#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GEN_4_CROSS_EVOS
        if (previous == HOENN_DEX_NOSEPASS)
            previous = HOENN_DEX_PROBOPASS;
        if (previous == HOENN_DEX_GLALIE)
            previous = HOENN_DEX_FROSLASS;
#endif
        EXPECT_EQ(sAddedFamilyPlacements[i].first, previous + 1);
        EXPECT_EQ(sAddedFamilyPlacements[i].last + 1, sAddedFamilyPlacements[i].next);
        for (u16 dexNum = sAddedFamilyPlacements[i].first; dexNum <= sAddedFamilyPlacements[i].last; dexNum++)
            EXPECT_EQ(NationalPokedexNumToSpecies(HoennToNationalOrder(dexNum)), sAddedDexSpecies[speciesIndex++]);
    }
    EXPECT_EQ(speciesIndex, ARRAY_COUNT(sAddedDexSpecies));
}

TEST("Both Dudunsparce forms use the same regional and saved National dex entry")
{
    u16 species;

    PARAMETRIZE { species = SPECIES_DUDUNSPARCE_TWO_SEGMENT; }
    PARAMETRIZE { species = SPECIES_DUDUNSPARCE_THREE_SEGMENT; }

    EXPECT_EQ(SpeciesToHoennPokedexNum(species), HOENN_DEX_DUDUNSPARCE);
    EXPECT_EQ(SpeciesToNationalPokedexNum(species), NATIONAL_DEX_DUDUNSPARCE);
    EXPECT_EQ(NationalPokedexNumToSpecies(HoennToNationalOrder(HOENN_DEX_DUDUNSPARCE)), SPECIES_DUDUNSPARCE);
    memset(gSaveBlock3Ptr->dexCaught, 0, sizeof(gSaveBlock3Ptr->dexCaught));
    GetSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_SET_CAUGHT);
    EXPECT_EQ(GetSetPokedexFlag(NATIONAL_DEX_DUDUNSPARCE, FLAG_GET_CAUGHT), TRUE);
}

TEST("Regional dex mappings have no gaps duplicates or changed National identities")
{
    bool8 seen[NATIONAL_DEX_COUNT + 1] = {0};

    for (u16 dexNum = 1; dexNum < HOENN_DEX_COUNT; dexNum++)
    {
        u16 nationalNum = HoennToNationalOrder(dexNum);
        u16 species = NationalPokedexNumToSpecies(nationalNum);

        EXPECT(nationalNum > NATIONAL_DEX_NONE && nationalNum <= NATIONAL_DEX_COUNT);
        EXPECT(!seen[nationalNum]);
        seen[nationalNum] = TRUE;
        EXPECT(gSpeciesInfo[species].baseHP > 0);
        EXPECT_EQ(NationalToHoennOrder(nationalNum), dexNum);
        EXPECT_EQ(SpeciesToNationalPokedexNum(species), nationalNum);
    }
    EXPECT_EQ(NATIONAL_DEX_MEW, 151);
    EXPECT_EQ(NATIONAL_DEX_CELEBI, 251);
}

TEST("Johto starter reward does not require owning the starters it awards")
{
    SetUpCompletedRegionalDex();
    for (u16 species = SPECIES_CHIKORITA; species <= SPECIES_TYPHLOSION; species++)
        ClearCaughtSpecies(species);

    EXPECT_EQ(HasAllHoennMonsForJohtoStarter(), TRUE);
    EXPECT_EQ(HasAllHoennMons(), FALSE);

    // Grotto starters remain prerequisites: only the reward itself is excluded.
    ClearCaughtSpecies(SPECIES_TREECKO);
    EXPECT_EQ(HasAllHoennMonsForJohtoStarter(), FALSE);
    GetSetPokedexFlag(NATIONAL_DEX_TREECKO, FLAG_SET_CAUGHT);
    ClearCaughtSpecies(SPECIES_MUDKIP);
    EXPECT_EQ(HasAllHoennMonsForJohtoStarter(), FALSE);
    GetSetPokedexFlag(NATIONAL_DEX_MUDKIP, FLAG_SET_CAUGHT);

    // Other newly added Pokemon are still required for the reward.
    ClearCaughtSpecies(SPECIES_SPEAROW);
    EXPECT_EQ(HasAllHoennMonsForJohtoStarter(), FALSE);
    GetSetPokedexFlag(NATIONAL_DEX_SPEAROW, FLAG_SET_CAUGHT);
    EXPECT_EQ(HasAllHoennMonsForJohtoStarter(), TRUE);

    // Ordinary completion still requires both added starter families.
    for (u16 species = SPECIES_CHIKORITA; species <= SPECIES_TYPHLOSION; species++)
        GetSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_SET_CAUGHT);
    EXPECT_EQ(HasAllHoennMons(), TRUE);
}

