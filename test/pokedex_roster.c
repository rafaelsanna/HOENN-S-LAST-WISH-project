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
    {HOENN_DEX_MEGANIUM, HOENN_DEX_CYNDAQUIL, HOENN_DEX_TYPHLOSION, HOENN_DEX_CHARMANDER},
    {HOENN_DEX_DUSTOX, HOENN_DEX_LEDYBA, HOENN_DEX_ARIADOS, HOENN_DEX_VENONAT},
    {HOENN_DEX_PIDGEOT, HOENN_DEX_SPEAROW, HOENN_DEX_NOCTOWL, HOENN_DEX_FARFETCHD},
    {HOENN_DEX_SLAKING, HOENN_DEX_AIPOM, HOENN_DEX_AIPOM, HOENN_DEX_DROWZEE},
    {HOENN_DEX_JUMPLUFF, HOENN_DEX_SUNKERN, HOENN_DEX_SUNFLORA, HOENN_DEX_GEODUDE},
    {HOENN_DEX_NOSEPASS, HOENN_DEX_SUDOWOODO, HOENN_DEX_SUDOWOODO, HOENN_DEX_SKITTY},
    {HOENN_DEX_MANECTRIC, HOENN_DEX_MAREEP, HOENN_DEX_AMPHAROS, HOENN_DEX_PLUSLE},
    {HOENN_DEX_VICTREEBEL, HOENN_DEX_EXEGGCUTE, HOENN_DEX_EXEGGUTOR, HOENN_DEX_DODUO},
    {HOENN_DEX_SANDSLASH, HOENN_DEX_DIGLETT, HOENN_DEX_DUGTRIO, HOENN_DEX_CUBONE},
    {HOENN_DEX_FORRETRESS, HOENN_DEX_SHUCKLE, HOENN_DEX_SHUCKLE, HOENN_DEX_SPINDA},
    {HOENN_DEX_CRAWDAUNT, HOENN_DEX_KRABBY, HOENN_DEX_KINGLER, HOENN_DEX_BALTOY},
    {HOENN_DEX_CLAYDOL, HOENN_DEX_OMANYTE, HOENN_DEX_AERODACTYL, HOENN_DEX_LILEEP},
    {HOENN_DEX_SNORLAX, HOENN_DEX_MILTANK, HOENN_DEX_MILTANK, HOENN_DEX_TAUROS},
    {HOENN_DEX_KECLEON, HOENN_DEX_DITTO, HOENN_DEX_DITTO, HOENN_DEX_SHUPPET},
    {HOENN_DEX_LANTURN, HOENN_DEX_REMORAID, HOENN_DEX_OCTILLERY, HOENN_DEX_MANTYKE},
    {HOENN_DEX_SALAMENCE, HOENN_DEX_LARVITAR, HOENN_DEX_TYRANITAR, HOENN_DEX_BELDUM},
    {HOENN_DEX_WALREIN, HOENN_DEX_SEEL, HOENN_DEX_DEWGONG, HOENN_DEX_CLAMPERL},
    {HOENN_DEX_GLALIE, HOENN_DEX_SWINUB, HOENN_DEX_MAMOSWINE, HOENN_DEX_SPHEAL},
    {HOENN_DEX_JYNX, HOENN_DEX_DELIBIRD, HOENN_DEX_DELIBIRD, HOENN_DEX_SNORUNT},
    {HOENN_DEX_GOREBYSS, HOENN_DEX_SHELLDER, HOENN_DEX_CLOYSTER, HOENN_DEX_RELICANTH},
    {HOENN_DEX_SMEARGLE, HOENN_DEX_DUNSPARCE, HOENN_DEX_DUDUNSPARCE, HOENN_DEX_PINSIR},
    {HOENN_DEX_MILTANK, HOENN_DEX_TAUROS, HOENN_DEX_KANGASKHAN, HOENN_DEX_LICKITUNG},
    {HOENN_DEX_BELLOSSOM, HOENN_DEX_BELLSPROUT, HOENN_DEX_VICTREEBEL, HOENN_DEX_EXEGGCUTE},
    {HOENN_DEX_ARCANINE, HOENN_DEX_PONYTA, HOENN_DEX_RAPIDASH, HOENN_DEX_TREECKO},
    {HOENN_DEX_URSALUNA, HOENN_DEX_EKANS, HOENN_DEX_ARBOK, HOENN_DEX_SEVIPER},
    {HOENN_DEX_VENOMOTH, HOENN_DEX_PARAS, HOENN_DEX_PARASECT, HOENN_DEX_NIDORAN_F},
    {HOENN_DEX_ARIADOS, HOENN_DEX_VENONAT, HOENN_DEX_VENOMOTH, HOENN_DEX_PARAS},
};

static const u16 sCompletedGen12Families[] =
{
    SPECIES_CATERPIE,
    SPECIES_METAPOD,
    SPECIES_BUTTERFREE,
    SPECIES_WEEDLE,
    SPECIES_KAKUNA,
    SPECIES_BEEDRILL,
    SPECIES_FARFETCHD,
    SPECIES_DROWZEE,
    SPECIES_HYPNO,
    SPECIES_MIME_JR,
    SPECIES_MR_MIME,
    SPECIES_ONIX,
    SPECIES_STEELIX,
    SPECIES_QWILFISH,
    SPECIES_TYROGUE,
    SPECIES_HITMONLEE,
    SPECIES_HITMONCHAN,
    SPECIES_HITMONTOP,
    SPECIES_PORYGON,
    SPECIES_PORYGON2,
    SPECIES_PORYGON_Z,
    SPECIES_CUBONE,
    SPECIES_MAROWAK,
    SPECIES_MUNCHLAX,
    SPECIES_SNORLAX,
    SPECIES_LICKITUNG,
    SPECIES_LICKILICKY,
    SPECIES_CHARMANDER,
    SPECIES_CHARMELEON,
    SPECIES_CHARIZARD,
    SPECIES_SQUIRTLE,
    SPECIES_WARTORTLE,
    SPECIES_BLASTOISE,
    SPECIES_UNOWN,
};

static const struct
{
    u16 previous;
    u16 first;
    u16 last;
    u16 next;
} sCompletedFamilyPlacements[] =
{
    {HOENN_DEX_FURRET, HOENN_DEX_CATERPIE, HOENN_DEX_BUTTERFREE, HOENN_DEX_WEEDLE},
    {HOENN_DEX_BUTTERFREE, HOENN_DEX_WEEDLE, HOENN_DEX_BEEDRILL, HOENN_DEX_WURMPLE},
    {HOENN_DEX_NOCTOWL, HOENN_DEX_FARFETCHD, HOENN_DEX_FARFETCHD, HOENN_DEX_RALTS},
    {HOENN_DEX_AIPOM, HOENN_DEX_DROWZEE, HOENN_DEX_HYPNO, HOENN_DEX_ABRA},
    {HOENN_DEX_ALAKAZAM, HOENN_DEX_MIME_JR, HOENN_DEX_MR_MIME, HOENN_DEX_NINCADA},
    {HOENN_DEX_GOLEM, HOENN_DEX_ONIX, HOENN_DEX_STEELIX, HOENN_DEX_NOSEPASS},
    {HOENN_DEX_TENTACRUEL, HOENN_DEX_QWILFISH, HOENN_DEX_QWILFISH, HOENN_DEX_SABLEYE},
    {HOENN_DEX_MACHAMP, HOENN_DEX_TYROGUE, HOENN_DEX_HITMONTOP, HOENN_DEX_MEDITITE},
    {HOENN_DEX_MAGNETON, HOENN_DEX_PORYGON, HOENN_DEX_PORYGON_Z, HOENN_DEX_VOLTORB},
    {HOENN_DEX_DUGTRIO, HOENN_DEX_CUBONE, HOENN_DEX_MAROWAK, HOENN_DEX_PINECO},
    {HOENN_DEX_BLISSEY, HOENN_DEX_MUNCHLAX, HOENN_DEX_SNORLAX, HOENN_DEX_MILTANK},
    {HOENN_DEX_KANGASKHAN, HOENN_DEX_LICKITUNG, HOENN_DEX_LICKILICKY, HOENN_DEX_FEEBAS},
    {HOENN_DEX_TYPHLOSION, HOENN_DEX_CHARMANDER, HOENN_DEX_CHARIZARD, HOENN_DEX_SQUIRTLE},
    {HOENN_DEX_CHARIZARD, HOENN_DEX_SQUIRTLE, HOENN_DEX_BLASTOISE, HOENN_DEX_PICHU},
    {HOENN_DEX_XATU, HOENN_DEX_UNOWN, HOENN_DEX_UNOWN, HOENN_DEX_MURKROW},
};

static const u16 sExcludedGen12Legendaries[] =
{
    NATIONAL_DEX_ARTICUNO,
    NATIONAL_DEX_ZAPDOS,
    NATIONAL_DEX_MOLTRES,
    NATIONAL_DEX_MEWTWO,
    NATIONAL_DEX_MEW,
    NATIONAL_DEX_RAIKOU,
    NATIONAL_DEX_ENTEI,
    NATIONAL_DEX_SUICUNE,
    NATIONAL_DEX_LUGIA,
    NATIONAL_DEX_HO_OH,
};

static const struct
{
    u16 form;
    u16 base;
} sExistingAddedFamilyForms[] =
{
#if P_GALARIAN_FORMS
    {SPECIES_FARFETCHD_GALAR, SPECIES_FARFETCHD},
    {SPECIES_MR_MIME_GALAR, SPECIES_MR_MIME},
#endif
#if P_HISUIAN_FORMS
    {SPECIES_QWILFISH_HISUI, SPECIES_QWILFISH},
#endif
#if P_ALOLAN_FORMS
    {SPECIES_MAROWAK_ALOLA, SPECIES_MAROWAK},
#endif
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
}

TEST("Regional dex includes the completed Gen 1 and 2 nonlegendary families and their later relatives")
{
    EXPECT_EQ(ARRAY_COUNT(sCompletedGen12Families), 34);
    EXPECT_EQ(HOENN_DEX_COUNT - 1, 417);
    for (u32 i = 0; i < ARRAY_COUNT(sCompletedGen12Families); i++)
    {
        u16 species = sCompletedGen12Families[i];
        u16 dexNum = SpeciesToHoennPokedexNum(species);

        EXPECT(dexNum > HOENN_DEX_NONE && dexNum < HOENN_DEX_COUNT);
        EXPECT(gSpeciesInfo[species].baseHP > 0);
        EXPECT_EQ(NationalPokedexNumToSpecies(HoennToNationalOrder(dexNum)), species);
    }
    EXPECT_EQ(SpeciesToHoennPokedexNum(SPECIES_SIRFETCHD), HOENN_DEX_NONE);
    EXPECT_EQ(SpeciesToHoennPokedexNum(SPECIES_MR_RIME), HOENN_DEX_NONE);
    EXPECT_EQ(SpeciesToHoennPokedexNum(SPECIES_OVERQWIL), HOENN_DEX_NONE);
}

TEST("Regional dex contains every Gen 1 and 2 nonlegendary without adding the previously excluded legendaries")
{
    for (u16 nationalNum = NATIONAL_DEX_BULBASAUR; nationalNum <= NATIONAL_DEX_CELEBI; nationalNum++)
    {
        u16 dexNum = NationalToHoennOrder(nationalNum);
        bool32 excluded = FALSE;

        for (u32 i = 0; i < ARRAY_COUNT(sExcludedGen12Legendaries); i++)
            if (sExcludedGen12Legendaries[i] == nationalNum)
                excluded = TRUE;
        if (excluded)
            EXPECT_EQ(dexNum, HOENN_DEX_NONE);
        else
        {
            EXPECT(dexNum > HOENN_DEX_NONE && dexNum < HOENN_DEX_COUNT);
            EXPECT_EQ(HoennToNationalOrder(dexNum), nationalNum);
        }
    }
}

TEST("Regional dex completed Gen 1 and 2 families preserve their intended order and neighboring entries")
{
    u32 speciesIndex = 0;

    for (u32 i = 0; i < ARRAY_COUNT(sCompletedFamilyPlacements); i++)
    {
        u16 previous = sCompletedFamilyPlacements[i].previous;

#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GEN_4_CROSS_EVOS
        if (previous == HOENN_DEX_MAGNETON)
            previous = HOENN_DEX_MAGNEZONE;
#endif
        EXPECT_EQ(sCompletedFamilyPlacements[i].first, previous + 1);
        EXPECT_EQ(sCompletedFamilyPlacements[i].last + 1, sCompletedFamilyPlacements[i].next);
        for (u16 dexNum = sCompletedFamilyPlacements[i].first; dexNum <= sCompletedFamilyPlacements[i].last; dexNum++)
            EXPECT_EQ(NationalPokedexNumToSpecies(HoennToNationalOrder(dexNum)), sCompletedGen12Families[speciesIndex++]);
    }
    EXPECT_EQ(speciesIndex, ARRAY_COUNT(sCompletedGen12Families));
}

TEST("Regional dex additions use base species entries rather than additional regional form entries")
{
    for (u32 i = 0; i < ARRAY_COUNT(sExistingAddedFamilyForms); i++)
    {
        u16 form = sExistingAddedFamilyForms[i].form;
        u16 base = sExistingAddedFamilyForms[i].base;
        u16 dexNum = SpeciesToHoennPokedexNum(base);

        // Existing engine forms share the base species' National identity. They
        // do not create separate regional entries or replace the base display.
        EXPECT_EQ(SpeciesToHoennPokedexNum(form), dexNum);
        EXPECT_EQ(SpeciesToNationalPokedexNum(form), SpeciesToNationalPokedexNum(base));
        EXPECT_EQ(NationalPokedexNumToSpecies(HoennToNationalOrder(dexNum)), base);
    }
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

