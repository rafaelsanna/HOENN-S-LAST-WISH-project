#ifndef GUARD_CONSTANTS_VARS_H
#define GUARD_CONSTANTS_VARS_H

#define VARS_START 0x4000

// temporary vars
// The first 0x10 vars are temporary--they are cleared every time a map is loaded.
#define TEMP_VARS_START            0x4000
#define VAR_TEMP_0                 (TEMP_VARS_START + 0x0)
#define VAR_TEMP_1                 (TEMP_VARS_START + 0x1)
#define VAR_TEMP_2                 (TEMP_VARS_START + 0x2)
#define VAR_TEMP_3                 (TEMP_VARS_START + 0x3) // Note: Used when the player checks a TV
#define VAR_TEMP_4                 (TEMP_VARS_START + 0x4)
#define VAR_TEMP_5                 (TEMP_VARS_START + 0x5)
#define VAR_TEMP_6                 (TEMP_VARS_START + 0x6)
#define VAR_TEMP_7                 (TEMP_VARS_START + 0x7)
#define VAR_TEMP_8                 (TEMP_VARS_START + 0x8)
#define VAR_TEMP_9                 (TEMP_VARS_START + 0x9)
#define VAR_TEMP_A                 (TEMP_VARS_START + 0xA)
#define VAR_TEMP_B                 (TEMP_VARS_START + 0xB)
#define VAR_TEMP_C                 (TEMP_VARS_START + 0xC)
#define VAR_TEMP_D                 (TEMP_VARS_START + 0xD)
#define VAR_TEMP_E                 (TEMP_VARS_START + 0xE)
#define VAR_TEMP_F                 (TEMP_VARS_START + 0xF)
#define TEMP_VARS_END              VAR_TEMP_F
#define NUM_TEMP_VARS              (TEMP_VARS_END - TEMP_VARS_START + 1)

// object gfx id vars
// These 0x10 vars are used to dynamically control a map object's sprite.
// For example, the rival's sprite id is dynamically set based on the player's gender.
// See VarGetObjectEventGraphicsId().
#define VAR_OBJ_GFX_ID_0           0x4010
#define VAR_OBJ_GFX_ID_1           0x4011
#define VAR_OBJ_GFX_ID_2           0x4012
#define VAR_OBJ_GFX_ID_3           0x4013
#define VAR_OBJ_GFX_ID_4           0x4014
#define VAR_OBJ_GFX_ID_5           0x4015
#define VAR_OBJ_GFX_ID_6           0x4016
#define VAR_OBJ_GFX_ID_7           0x4017
#define VAR_OBJ_GFX_ID_8           0x4018
#define VAR_OBJ_GFX_ID_9           0x4019
#define VAR_OBJ_GFX_ID_A           0x401A
#define VAR_OBJ_GFX_ID_B           0x401B
#define VAR_OBJ_GFX_ID_C           0x401C
#define VAR_OBJ_GFX_ID_D           0x401D
#define VAR_OBJ_GFX_ID_E           0x401E
#define VAR_OBJ_GFX_ID_F           0x401F

// general purpose vars
#define VAR_RECYCLE_GOODS                                0x4020
#define VAR_REPEL_STEP_COUNT                             0x4021
#define VAR_ICE_STEP_COUNT                               0x4022
#define VAR_STARTER_MON                                  0x4023 // 0=Bulbasaur, 1=Totodile, 2=Torchic
#define VAR_MIRAGE_RND_H                                 0x4024
#define VAR_MIRAGE_RND_L                                 0x4025
#define VAR_SECRET_BASE_MAP                              0x4026
#define VAR_CYCLING_ROAD_RECORD_COLLISIONS               0x4027
#define VAR_CYCLING_ROAD_RECORD_TIME_L                   0x4028
#define VAR_CYCLING_ROAD_RECORD_TIME_H                   0x4029
#define VAR_FRIENDSHIP_STEP_COUNTER                      0x402A
#define VAR_POISON_STEP_COUNTER                          0x402B
#define VAR_RESET_RTC_ENABLE                             0x402C
#define VAR_ENIGMA_BERRY_AVAILABLE                       0x402D
#define VAR_WONDER_NEWS_STEP_COUNTER                     0x402E

#define VAR_FRONTIER_MANIAC_FACILITY                     0x402F
#define VAR_FRONTIER_GAMBLER_CHALLENGE                   0x4030
#define VAR_FRONTIER_GAMBLER_SET_CHALLENGE               0x4031
#define VAR_FRONTIER_GAMBLER_AMOUNT_BET                  0x4032
#define VAR_FRONTIER_GAMBLER_STATE                       0x4033

#define VAR_DEOXYS_ROCK_STEP_COUNT                       0x4034
#define VAR_DEOXYS_ROCK_LEVEL                            0x4035
#define VAR_PC_BOX_TO_SEND_MON                           0x4036
#define VAR_ABNORMAL_WEATHER_LOCATION                    0x4037
#define VAR_ABNORMAL_WEATHER_STEP_COUNTER                0x4038
#define VAR_SHOULD_END_ABNORMAL_WEATHER                  0x4039
#define VAR_FARAWAY_ISLAND_STEP_COUNTER                  0x403A
#define VAR_REGICE_STEPS_1                               0x403B
#define VAR_REGICE_STEPS_2                               0x403C
#define VAR_REGICE_STEPS_3                               0x403D
#define VAR_ALTERING_CAVE_WILD_SET                       0x403E
#define VAR_DISTRIBUTE_EON_TICKET                        0x403F // This var is read and written, but is always zero. The only way to obtain the Eon Ticket in Emerald is via Record Mixing
#define VAR_DAYS                                         0x4040
#define VAR_FANCLUB_FAN_COUNTER                          0x4041
#define VAR_FANCLUB_LOSE_FAN_TIMER                       0x4042
#define VAR_DEPT_STORE_FLOOR                             0x4043
#define VAR_TRICK_HOUSE_LEVEL                            0x4044
#define VAR_POKELOT_PRIZE_ITEM                           0x4045
#define VAR_NATIONAL_DEX                                 0x4046
#define VAR_SEEDOT_SIZE_RECORD                           0x4047
#define VAR_ASH_GATHER_COUNT                             0x4048
#define VAR_BIRCH_STATE                                  0x4049
#define VAR_CRUISE_STEP_COUNT                            0x404A
#define VAR_POKELOT_RND1                                 0x404B
#define VAR_POKELOT_RND2                                 0x404C
#define VAR_POKELOT_PRIZE_PLACE                          0x404D
#ifndef B_VAR_DIFFICULTY
#define B_VAR_DIFFICULTY                                 0x404E
#endif
#define VAR_LOTAD_SIZE_RECORD                            0x404F
#define VAR_LITTLEROOT_TOWN_STATE                        0x4050
#define VAR_OLDALE_TOWN_STATE                            0x4051
#define VAR_DEWFORD_TOWN_STATE                           0x4052 // Unused Var
#define VAR_LAVARIDGE_TOWN_STATE                         0x4053
#define VAR_CURRENT_SECRET_BASE                          0x4054 // was probably allocated for VAR_FALLARBOR_TOWN_STATE at one point
#define VAR_VERDANTURF_TOWN_STATE                        0x4055 // Unused Var
#define VAR_PACIFIDLOG_TOWN_STATE                        0x4056 // Unused Var
#define VAR_PETALBURG_CITY_STATE                         0x4057
#define VAR_SLATEPORT_CITY_STATE                         0x4058
#define VAR_MAUVILLE_CITY_STATE                          0x4059 // Unused Var
#define VAR_RUSTBORO_CITY_STATE                          0x405A
#define VAR_FORTREE_CITY_STATE                           0x405B // Unused Var
#define VAR_LILYCOVE_CITY_STATE                          0x405C // Unused Var
#define VAR_MOSSDEEP_CITY_STATE                          0x405D
#define VAR_SOOTOPOLIS_CITY_STATE                        0x405E
#define VAR_EVER_GRANDE_CITY_STATE                       0x405F // Unused Var
#define VAR_ROUTE101_STATE                               0x4060
#define VAR_ROUTE102_STATE                               0x4061 // Unused Var
#define VAR_ROUTE103_STATE                               0x4062 // Unused Var
#define VAR_ROUTE104_STATE                               0x4063
#define VAR_ROUTE105_STATE                               0x4064 // Unused Var
#define VAR_ROUTE106_STATE                               0x4065 // Unused Var
#define VAR_ROUTE107_STATE                               0x4066 // Unused Var
#define VAR_ROUTE108_STATE                               0x4067 // Unused Var
#define VAR_ROUTE109_STATE                               0x4068 // Unused Var
#define VAR_ROUTE110_STATE                               0x4069
#define VAR_ROUTE111_STATE                               0x406A // Unused Var
#define VAR_ROUTE112_STATE                               0x406B // Unused Var
#define VAR_ROUTE113_STATE                               0x406C // Unused Var
#define VAR_ROUTE114_STATE                               0x406D // Unused Var
#define VAR_ROUTE115_STATE                               0x406E // Unused Var
#define VAR_ROUTE116_STATE                               0x406F
#define VAR_ROUTE117_STATE                               0x4070 // Unused Var
// Five save words store one persistent reveal bit for each of the 79 floating
// bridge tiles in Fortree Gym. These route-state slots have no other users.
#define VAR_FORTREE_GYM_BRIDGE_REVEALS_0                 VAR_ROUTE112_STATE
#define VAR_FORTREE_GYM_BRIDGE_REVEALS_1                 VAR_ROUTE113_STATE
#define VAR_FORTREE_GYM_BRIDGE_REVEALS_2                 VAR_ROUTE114_STATE
#define VAR_FORTREE_GYM_BRIDGE_REVEALS_3                 VAR_ROUTE115_STATE
#define VAR_FORTREE_GYM_BRIDGE_REVEALS_4                 VAR_ROUTE117_STATE
#define VAR_ROUTE118_STATE                               0x4071
#define VAR_ROUTE119_STATE                               0x4072
#define VAR_ROUTE120_STATE                               0x4073 // Unused Var
#define VAR_ROUTE121_STATE                               0x4074
#define VAR_ROUTE122_STATE                               0x4075 // Unused Var
#define VAR_ROUTE123_STATE                               0x4076 // Unused Var
#define VAR_ROUTE124_STATE                               0x4077 // Unused Var
#define VAR_ROUTE125_STATE                               0x4078 // Unused Var
#define VAR_ROUTE126_STATE                               0x4079 // Unused Var
#define VAR_ROUTE127_STATE                               0x407A // Unused Var
#define VAR_ROUTE128_STATE                               0x407B
#define VAR_ROUTE129_STATE                               0x407C // Unused Var
#define VAR_ROUTE130_STATE                               0x407D // Unused Var
#define VAR_ROUTE131_STATE                               0x407E // Unused Var
#define VAR_ROUTE132_STATE                               0x407F // Unused Var
#define VAR_ROUTE133_STATE                               0x4080 // Unused Var
#define VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT              VAR_ROUTE132_STATE
#define VAR_MOSSDEEP_TEDDIURSA_FLOOR                    VAR_ROUTE133_STATE
// Reuse the search counter outside the hunt instead of allocating more flags.
#define MR_BUTTONS_ESTHER_REASSURED                    4 // Before Honey: Esther referred the player to Mom
#define MR_BUTTONS_REN_TM_RECEIVED                     0xFFFF // After completion: Ren's one-time gift received
#define VAR_HIDDEN_GROTTO_RESET_DAYS                 0x4081
#define VAR_LITTLEROOT_HOUSES_STATE_MAY                  0x4082
#define VAR_HIDDEN_GROTTO_00                             0x4083
#define VAR_BIRCH_LAB_STATE                              0x4084
#define VAR_PETALBURG_GYM_STATE                          0x4085 // 0-1: Wally tutorial, 2-6: 0-4 badges, 7: Defeated Norman, 8: Rematch Norman
#define VAR_CONTEST_HALL_STATE                           0x4086
#define VAR_CABLE_CLUB_STATE                             0x4087
#define VAR_CONTEST_TYPE                                 0x4088
#define VAR_SECRET_BASE_INITIALIZED                      0x4089
#define VAR_CONTEST_PRIZE_PICKUP                         0x408A
#define VAR_LAST_REPEL_LURE_USED                         0x408B // Unused Var
#define VAR_LITTLEROOT_HOUSES_STATE_BRENDAN              0x408C
#define VAR_LITTLEROOT_RIVAL_STATE                       0x408D
#define VAR_BOARD_BRINEY_BOAT_STATE                      0x408E
#define VAR_DEVON_CORP_3F_STATE                          0x408F
#define VAR_BRINEY_HOUSE_STATE                           0x4090
#define VAR_HIDDEN_GROTTO_01                             0x4091
#define VAR_LITTLEROOT_INTRO_STATE                       0x4092
#define VAR_MAUVILLE_GYM_STATE                           0x4093
#define VAR_LILYCOVE_MUSEUM_2F_STATE                     0x4094
#define VAR_LILYCOVE_FAN_CLUB_STATE                      0x4095
#define VAR_BRINEY_LOCATION                              0x4096
#define VAR_INIT_SECRET_BASE                             0x4097
#define VAR_PETALBURG_WOODS_STATE                        0x4098
#define VAR_LILYCOVE_CONTEST_LOBBY_STATE                 0x4099
#define VAR_RUSTURF_TUNNEL_STATE                         0x409A
#define VAR_HIDDEN_GROTTO_02                             0x409B
#define VAR_ELITE_4_STATE                                0x409C
#define VAR_HIDDEN_GROTTO_03                             0x409D
#define VAR_MOSSDEEP_SPACE_CENTER_STAIR_GUARD_STATE      0x409E
#define VAR_MOSSDEEP_SPACE_CENTER_STATE                  0x409F
#define VAR_SLATEPORT_HARBOR_STATE                       0x40A0
#define VAR_HIDDEN_GROTTO_04                             0x40A1
#define VAR_SEAFLOOR_CAVERN_STATE                        0x40A2
#define VAR_CABLE_CAR_STATION_STATE                      0x40A3
#define VAR_SAFARI_ZONE_STATE                            0x40A4  // 0: In or out of SZ, 1: Player exiting SZ, 2: Player entering SZ
#define VAR_TRICK_HOUSE_BEING_WATCHED_STATE              0x40A5
#define VAR_TRICK_HOUSE_FOUND_TRICK_MASTER               0x40A6
#define VAR_TRICK_HOUSE_ENTRANCE_STATE                   0x40A7
#define VAR_HIDDEN_GROTTO_05                             0x40A8
#define VAR_CYCLING_CHALLENGE_STATE                      0x40A9
#define VAR_SLATEPORT_MUSEUM_1F_STATE                    0x40AA
#define VAR_TRICK_HOUSE_PUZZLE_1_STATE                   0x40AB
#define VAR_TRICK_HOUSE_PUZZLE_2_STATE                   0x40AC
#define VAR_TRICK_HOUSE_PUZZLE_3_STATE                   0x40AD
#define VAR_TRICK_HOUSE_PUZZLE_4_STATE                   0x40AE
#define VAR_TRICK_HOUSE_PUZZLE_5_STATE                   0x40AF
#define VAR_TRICK_HOUSE_PUZZLE_6_STATE                   0x40B0
#define VAR_TRICK_HOUSE_PUZZLE_7_STATE                   0x40B1
#define VAR_TRICK_HOUSE_PUZZLE_8_STATE                   0x40B2
#define VAR_WEATHER_INSTITUTE_STATE                      0x40B3
#define VAR_SS_TIDAL_STATE                               0x40B4
#define VAR_TRICK_HOUSE_ENTER_FROM_CORRIDOR              0x40B5
#define VAR_TRICK_HOUSE_PUZZLE_7_STATE_2                 0x40B6 // Leftover from RS, never set
#define VAR_SLATEPORT_FAN_CLUB_STATE                     0x40B7
#define VAR_HIDDEN_GROTTO_06                             0x40B8
#define VAR_MT_PYRE_STATE                                0x40B9
#define VAR_NEW_MAUVILLE_STATE                           0x40BA
#define VAR_UNUSED_0x40BB                                0x40BB // Unused Var
#define VAR_BRAVO_TRAINER_BATTLE_TOWER_ON                0x40BC
#define VAR_JAGGED_PASS_ASH_WEATHER                      0x40BD
#define VAR_GLASS_WORKSHOP_STATE                         0x40BE
#define VAR_METEOR_FALLS_STATE                           0x40BF
#define VAR_SOOTOPOLIS_MYSTERY_EVENTS_STATE              0x40C0
#define VAR_TRICK_HOUSE_PRIZE_PICKUP                     0x40C1
#define VAR_PACIFIDLOG_TM_RECEIVED_DAY                   0x40C2
#define VAR_VICTORY_ROAD_1F_STATE                        0x40C3
#define VAR_FOSSIL_RESURRECTION_STATE                    0x40C4
#define VAR_WHICH_FOSSIL_REVIVED                         0x40C5
#define VAR_STEVENS_HOUSE_STATE                          0x40C6
#define VAR_OLDALE_RIVAL_STATE                           0x40C7
#define VAR_JAGGED_PASS_STATE                            0x40C8
#define VAR_SCOTT_PETALBURG_ENCOUNTER                    0x40C9
#define VAR_SKY_PILLAR_STATE                             0x40CA
#define VAR_MIRAGE_TOWER_STATE                           0x40CB
#define VAR_FOSSIL_MANIAC_STATE                          0x40CC
#define VAR_CABLE_CLUB_TUTORIAL_STATE                    0x40CD
#define VAR_FRONTIER_BATTLE_MODE                         0x40CE
#define VAR_FRONTIER_FACILITY                            0x40CF
#define VAR_HAS_ENTERED_BATTLE_FRONTIER                  0x40D0 // Var is used like a flag.
#define VAR_SCOTT_STATE                                  0x40D1
#define VAR_SLATEPORT_OUTSIDE_MUSEUM_STATE               0x40D2
#define VAR_DEX_UPGRADE_JOHTO_STARTER_STATE              0x40D3
#define VAR_SS_TIDAL_SCOTT_STATE                         0x40D4 // Always equal to FLAG_MET_SCOTT_ON_SS_TIDAL
#define VAR_ROAMER_POKEMON                               0x40D5 // 0 = Latias, 1 = Latios
#define VAR_TRAINER_HILL_IS_ACTIVE                       0x40D6
#define VAR_SKY_PILLAR_RAYQUAZA_CRY_DONE                 0x40D7
#define VAR_SOOTOPOLIS_WALLACE_STATE                     0x40D8
#define VAR_HAS_TALKED_TO_SEAFLOOR_CAVERN_ENTRANCE_GRUNT 0x40D9
#define VAR_REGISTER_BIRCH_STATE                         0x40DA
#define VAR_LUKA_PETALBURG_ENCOUNTER                     0x40DB /// LUKA AFTER 5 GYM
#define VAR_WALLY_TUTORIAL_RESULT                        0x40DC //  If you lose to LUKA first battle
#define VAR_GIFT_PICHU_SLOT                              0x40DD
#define VAR_NIGHTMARE_STATE                              0x40DE
#define VAR_HIDDEN_GROTTO_07                             0x40DF
#define VAR_HIDDEN_GROTTO_08                             0x40E0
#define VAR_HIDDEN_GROTTO_09                             0x40E1
#define VAR_HIDDEN_GROTTO_10                             0x40E2
#define VAR_HIDDEN_GROTTO_11                             0x40E3
#define VAR_HIDDEN_GROTTO_12                             0x40E4
#define VAR_HIDDEN_GROTTO_13                             0x40E5
#define VAR_DAILY_SLOTS                                  0x40E6
#define VAR_DAILY_WILDS                                  0x40E7
#define VAR_DAILY_BLENDER                                0x40E8
#define VAR_DAILY_PLANTED_BERRIES                        0x40E9
#define VAR_DAILY_PICKED_BERRIES                         0x40EA
#define VAR_DAILY_ROULETTE                               0x40EB
#define VAR_SECRET_BASE_STEP_COUNTER                     0x40EC // Used by Secret Base TV programs
#define VAR_SECRET_BASE_LAST_ITEM_USED                   0x40ED // Used by Secret Base TV programs
#define VAR_SECRET_BASE_LOW_TV_FLAGS                     0x40EE // Used by Secret Base TV programs
#define VAR_SECRET_BASE_HIGH_TV_FLAGS                    0x40EF // Used by Secret Base TV programs
#define VAR_SECRET_BASE_IS_NOT_LOCAL                     0x40F0 // Set to TRUE while in another player's secret base.
#define VAR_DAILY_BP                                     0x40F1
#define VAR_WALLY_CALL_STEP_COUNTER                      0x40F2
#define VAR_SCOTT_FORTREE_CALL_STEP_COUNTER              0x40F3
#define VAR_ROXANNE_CALL_STEP_COUNTER                    0x40F4
#define VAR_SCOTT_BF_CALL_STEP_COUNTER                   0x40F5
#define VAR_RIVAL_RAYQUAZA_CALL_STEP_COUNTER             0x40F6
#define VAR_RANDOMIZER_MODE                              0x40F7 // RANDOMIZER MODE
#define VAR_RANDOMIZER_SEED_L                            0x40F8 // RANDOMIZER SEED LOW
#define VAR_RANDOMIZER_SEED_H                                0x40F9 // RANDOMIZER SEED HIGH
#define VAR_HIDDEN_GROTTO_14                             0x40FA
#define VAR_HIDDEN_GROTTO_15                             0x40FB
#define VAR_HIDDEN_GROTTO_16                             0x40FC
#define VAR_HIDDEN_GROTTO_17                             0x40FD
#define VAR_HIDDEN_GROTTO_18                             0x40FE
#define VAR_GOT_INFINITECANDY                            0x40FF
#define VAR_HIDDEN_GROTTO_19                             0x4100

#define VARS_END                                         0x4100
#define VARS_COUNT                                       (VARS_END - VARS_START + 1)

// Frozen HLW custom variables live in the required save extension.
#define HLW_CUSTOM_VARS_START                            0x5000
#define VAR_HLW_GROTTO_RESET_DAYS                     (HLW_CUSTOM_VARS_START + 0x00)
#define VAR_UNUSED_0x5001                            (HLW_CUSTOM_VARS_START + 0x01)
#define VAR_UNUSED_0x5002                            (HLW_CUSTOM_VARS_START + 0x02)
#define VAR_UNUSED_0x5003                            (HLW_CUSTOM_VARS_START + 0x03)
#define VAR_UNUSED_0x5004                            (HLW_CUSTOM_VARS_START + 0x04)
#define VAR_UNUSED_0x5005                            (HLW_CUSTOM_VARS_START + 0x05)
#define VAR_UNUSED_0x5006                            (HLW_CUSTOM_VARS_START + 0x06)
#define VAR_UNUSED_0x5007                            (HLW_CUSTOM_VARS_START + 0x07)
#define VAR_UNUSED_0x5008                            (HLW_CUSTOM_VARS_START + 0x08)
#define VAR_UNUSED_0x5009                            (HLW_CUSTOM_VARS_START + 0x09)
#define VAR_UNUSED_0x500A                            (HLW_CUSTOM_VARS_START + 0x0A)
#define VAR_UNUSED_0x500B                            (HLW_CUSTOM_VARS_START + 0x0B)
#define VAR_UNUSED_0x500C                            (HLW_CUSTOM_VARS_START + 0x0C)
#define VAR_UNUSED_0x500D                            (HLW_CUSTOM_VARS_START + 0x0D)
#define VAR_UNUSED_0x500E                            (HLW_CUSTOM_VARS_START + 0x0E)
#define VAR_UNUSED_0x500F                            (HLW_CUSTOM_VARS_START + 0x0F)
#define VAR_UNUSED_0x5010                            (HLW_CUSTOM_VARS_START + 0x10)
#define VAR_UNUSED_0x5011                            (HLW_CUSTOM_VARS_START + 0x11)
#define VAR_UNUSED_0x5012                            (HLW_CUSTOM_VARS_START + 0x12)
#define VAR_UNUSED_0x5013                            (HLW_CUSTOM_VARS_START + 0x13)
#define VAR_UNUSED_0x5014                            (HLW_CUSTOM_VARS_START + 0x14)
#define VAR_UNUSED_0x5015                            (HLW_CUSTOM_VARS_START + 0x15)
#define VAR_UNUSED_0x5016                            (HLW_CUSTOM_VARS_START + 0x16)
#define VAR_UNUSED_0x5017                            (HLW_CUSTOM_VARS_START + 0x17)
#define VAR_UNUSED_0x5018                            (HLW_CUSTOM_VARS_START + 0x18)
#define VAR_UNUSED_0x5019                            (HLW_CUSTOM_VARS_START + 0x19)
#define VAR_UNUSED_0x501A                            (HLW_CUSTOM_VARS_START + 0x1A)
#define VAR_UNUSED_0x501B                            (HLW_CUSTOM_VARS_START + 0x1B)
#define VAR_UNUSED_0x501C                            (HLW_CUSTOM_VARS_START + 0x1C)
#define VAR_UNUSED_0x501D                            (HLW_CUSTOM_VARS_START + 0x1D)
#define VAR_UNUSED_0x501E                            (HLW_CUSTOM_VARS_START + 0x1E)
#define VAR_UNUSED_0x501F                            (HLW_CUSTOM_VARS_START + 0x1F)
#define VAR_UNUSED_0x5020                            (HLW_CUSTOM_VARS_START + 0x20)
#define VAR_UNUSED_0x5021                            (HLW_CUSTOM_VARS_START + 0x21)
#define VAR_UNUSED_0x5022                            (HLW_CUSTOM_VARS_START + 0x22)
#define VAR_UNUSED_0x5023                            (HLW_CUSTOM_VARS_START + 0x23)
#define VAR_UNUSED_0x5024                            (HLW_CUSTOM_VARS_START + 0x24)
#define VAR_UNUSED_0x5025                            (HLW_CUSTOM_VARS_START + 0x25)
#define VAR_UNUSED_0x5026                            (HLW_CUSTOM_VARS_START + 0x26)
#define VAR_UNUSED_0x5027                            (HLW_CUSTOM_VARS_START + 0x27)
#define VAR_UNUSED_0x5028                            (HLW_CUSTOM_VARS_START + 0x28)
#define VAR_UNUSED_0x5029                            (HLW_CUSTOM_VARS_START + 0x29)
#define VAR_UNUSED_0x502A                            (HLW_CUSTOM_VARS_START + 0x2A)
#define VAR_UNUSED_0x502B                            (HLW_CUSTOM_VARS_START + 0x2B)
#define VAR_UNUSED_0x502C                            (HLW_CUSTOM_VARS_START + 0x2C)
#define VAR_UNUSED_0x502D                            (HLW_CUSTOM_VARS_START + 0x2D)
#define VAR_UNUSED_0x502E                            (HLW_CUSTOM_VARS_START + 0x2E)
#define VAR_UNUSED_0x502F                            (HLW_CUSTOM_VARS_START + 0x2F)
#define VAR_UNUSED_0x5030                            (HLW_CUSTOM_VARS_START + 0x30)
#define VAR_UNUSED_0x5031                            (HLW_CUSTOM_VARS_START + 0x31)
#define VAR_UNUSED_0x5032                            (HLW_CUSTOM_VARS_START + 0x32)
#define VAR_UNUSED_0x5033                            (HLW_CUSTOM_VARS_START + 0x33)
#define VAR_UNUSED_0x5034                            (HLW_CUSTOM_VARS_START + 0x34)
#define VAR_UNUSED_0x5035                            (HLW_CUSTOM_VARS_START + 0x35)
#define VAR_UNUSED_0x5036                            (HLW_CUSTOM_VARS_START + 0x36)
#define VAR_UNUSED_0x5037                            (HLW_CUSTOM_VARS_START + 0x37)
#define VAR_UNUSED_0x5038                            (HLW_CUSTOM_VARS_START + 0x38)
#define VAR_UNUSED_0x5039                            (HLW_CUSTOM_VARS_START + 0x39)
#define VAR_UNUSED_0x503A                            (HLW_CUSTOM_VARS_START + 0x3A)
#define VAR_UNUSED_0x503B                            (HLW_CUSTOM_VARS_START + 0x3B)
#define VAR_UNUSED_0x503C                            (HLW_CUSTOM_VARS_START + 0x3C)
#define VAR_UNUSED_0x503D                            (HLW_CUSTOM_VARS_START + 0x3D)
#define VAR_UNUSED_0x503E                            (HLW_CUSTOM_VARS_START + 0x3E)
#define VAR_UNUSED_0x503F                            (HLW_CUSTOM_VARS_START + 0x3F)
#define VAR_UNUSED_0x5040                            (HLW_CUSTOM_VARS_START + 0x40)
#define VAR_UNUSED_0x5041                            (HLW_CUSTOM_VARS_START + 0x41)
#define VAR_UNUSED_0x5042                            (HLW_CUSTOM_VARS_START + 0x42)
#define VAR_UNUSED_0x5043                            (HLW_CUSTOM_VARS_START + 0x43)
#define VAR_UNUSED_0x5044                            (HLW_CUSTOM_VARS_START + 0x44)
#define VAR_UNUSED_0x5045                            (HLW_CUSTOM_VARS_START + 0x45)
#define VAR_UNUSED_0x5046                            (HLW_CUSTOM_VARS_START + 0x46)
#define VAR_UNUSED_0x5047                            (HLW_CUSTOM_VARS_START + 0x47)
#define VAR_UNUSED_0x5048                            (HLW_CUSTOM_VARS_START + 0x48)
#define VAR_UNUSED_0x5049                            (HLW_CUSTOM_VARS_START + 0x49)
#define VAR_UNUSED_0x504A                            (HLW_CUSTOM_VARS_START + 0x4A)
#define VAR_UNUSED_0x504B                            (HLW_CUSTOM_VARS_START + 0x4B)
#define VAR_UNUSED_0x504C                            (HLW_CUSTOM_VARS_START + 0x4C)
#define VAR_UNUSED_0x504D                            (HLW_CUSTOM_VARS_START + 0x4D)
#define VAR_UNUSED_0x504E                            (HLW_CUSTOM_VARS_START + 0x4E)
#define VAR_UNUSED_0x504F                            (HLW_CUSTOM_VARS_START + 0x4F)
#define VAR_UNUSED_0x5050                            (HLW_CUSTOM_VARS_START + 0x50)
#define VAR_UNUSED_0x5051                            (HLW_CUSTOM_VARS_START + 0x51)
#define VAR_UNUSED_0x5052                            (HLW_CUSTOM_VARS_START + 0x52)
#define VAR_UNUSED_0x5053                            (HLW_CUSTOM_VARS_START + 0x53)
#define VAR_UNUSED_0x5054                            (HLW_CUSTOM_VARS_START + 0x54)
#define VAR_UNUSED_0x5055                            (HLW_CUSTOM_VARS_START + 0x55)
#define VAR_UNUSED_0x5056                            (HLW_CUSTOM_VARS_START + 0x56)
#define VAR_UNUSED_0x5057                            (HLW_CUSTOM_VARS_START + 0x57)
#define VAR_UNUSED_0x5058                            (HLW_CUSTOM_VARS_START + 0x58)
#define VAR_UNUSED_0x5059                            (HLW_CUSTOM_VARS_START + 0x59)
#define VAR_UNUSED_0x505A                            (HLW_CUSTOM_VARS_START + 0x5A)
#define VAR_UNUSED_0x505B                            (HLW_CUSTOM_VARS_START + 0x5B)
#define VAR_UNUSED_0x505C                            (HLW_CUSTOM_VARS_START + 0x5C)
#define VAR_UNUSED_0x505D                            (HLW_CUSTOM_VARS_START + 0x5D)
#define VAR_UNUSED_0x505E                            (HLW_CUSTOM_VARS_START + 0x5E)
#define VAR_UNUSED_0x505F                            (HLW_CUSTOM_VARS_START + 0x5F)
#define VAR_UNUSED_0x5060                            (HLW_CUSTOM_VARS_START + 0x60)
#define VAR_UNUSED_0x5061                            (HLW_CUSTOM_VARS_START + 0x61)
#define VAR_UNUSED_0x5062                            (HLW_CUSTOM_VARS_START + 0x62)
#define VAR_UNUSED_0x5063                            (HLW_CUSTOM_VARS_START + 0x63)
#define VAR_UNUSED_0x5064                            (HLW_CUSTOM_VARS_START + 0x64)
#define VAR_UNUSED_0x5065                            (HLW_CUSTOM_VARS_START + 0x65)
#define VAR_UNUSED_0x5066                            (HLW_CUSTOM_VARS_START + 0x66)
#define VAR_UNUSED_0x5067                            (HLW_CUSTOM_VARS_START + 0x67)
#define VAR_UNUSED_0x5068                            (HLW_CUSTOM_VARS_START + 0x68)
#define VAR_UNUSED_0x5069                            (HLW_CUSTOM_VARS_START + 0x69)
#define VAR_UNUSED_0x506A                            (HLW_CUSTOM_VARS_START + 0x6A)
#define VAR_UNUSED_0x506B                            (HLW_CUSTOM_VARS_START + 0x6B)
#define VAR_UNUSED_0x506C                            (HLW_CUSTOM_VARS_START + 0x6C)
#define VAR_UNUSED_0x506D                            (HLW_CUSTOM_VARS_START + 0x6D)
#define VAR_UNUSED_0x506E                            (HLW_CUSTOM_VARS_START + 0x6E)
#define VAR_UNUSED_0x506F                            (HLW_CUSTOM_VARS_START + 0x6F)
#define VAR_UNUSED_0x5070                            (HLW_CUSTOM_VARS_START + 0x70)
#define VAR_UNUSED_0x5071                            (HLW_CUSTOM_VARS_START + 0x71)
#define VAR_UNUSED_0x5072                            (HLW_CUSTOM_VARS_START + 0x72)
#define VAR_UNUSED_0x5073                            (HLW_CUSTOM_VARS_START + 0x73)
#define VAR_UNUSED_0x5074                            (HLW_CUSTOM_VARS_START + 0x74)
#define VAR_UNUSED_0x5075                            (HLW_CUSTOM_VARS_START + 0x75)
#define VAR_UNUSED_0x5076                            (HLW_CUSTOM_VARS_START + 0x76)
#define VAR_UNUSED_0x5077                            (HLW_CUSTOM_VARS_START + 0x77)
#define VAR_UNUSED_0x5078                            (HLW_CUSTOM_VARS_START + 0x78)
#define VAR_UNUSED_0x5079                            (HLW_CUSTOM_VARS_START + 0x79)
#define VAR_UNUSED_0x507A                            (HLW_CUSTOM_VARS_START + 0x7A)
#define VAR_UNUSED_0x507B                            (HLW_CUSTOM_VARS_START + 0x7B)
#define VAR_UNUSED_0x507C                            (HLW_CUSTOM_VARS_START + 0x7C)
#define VAR_UNUSED_0x507D                            (HLW_CUSTOM_VARS_START + 0x7D)
#define VAR_UNUSED_0x507E                            (HLW_CUSTOM_VARS_START + 0x7E)
#define VAR_UNUSED_0x507F                            (HLW_CUSTOM_VARS_START + 0x7F)
#define VAR_UNUSED_0x5080                            (HLW_CUSTOM_VARS_START + 0x80)
#define VAR_UNUSED_0x5081                            (HLW_CUSTOM_VARS_START + 0x81)
#define VAR_UNUSED_0x5082                            (HLW_CUSTOM_VARS_START + 0x82)
#define VAR_UNUSED_0x5083                            (HLW_CUSTOM_VARS_START + 0x83)
#define VAR_UNUSED_0x5084                            (HLW_CUSTOM_VARS_START + 0x84)
#define VAR_UNUSED_0x5085                            (HLW_CUSTOM_VARS_START + 0x85)
#define VAR_UNUSED_0x5086                            (HLW_CUSTOM_VARS_START + 0x86)
#define VAR_UNUSED_0x5087                            (HLW_CUSTOM_VARS_START + 0x87)
#define VAR_UNUSED_0x5088                            (HLW_CUSTOM_VARS_START + 0x88)
#define VAR_UNUSED_0x5089                            (HLW_CUSTOM_VARS_START + 0x89)
#define VAR_UNUSED_0x508A                            (HLW_CUSTOM_VARS_START + 0x8A)
#define VAR_UNUSED_0x508B                            (HLW_CUSTOM_VARS_START + 0x8B)
#define VAR_UNUSED_0x508C                            (HLW_CUSTOM_VARS_START + 0x8C)
#define VAR_UNUSED_0x508D                            (HLW_CUSTOM_VARS_START + 0x8D)
#define VAR_UNUSED_0x508E                            (HLW_CUSTOM_VARS_START + 0x8E)
#define VAR_UNUSED_0x508F                            (HLW_CUSTOM_VARS_START + 0x8F)
#define VAR_UNUSED_0x5090                            (HLW_CUSTOM_VARS_START + 0x90)
#define VAR_UNUSED_0x5091                            (HLW_CUSTOM_VARS_START + 0x91)
#define VAR_UNUSED_0x5092                            (HLW_CUSTOM_VARS_START + 0x92)
#define VAR_UNUSED_0x5093                            (HLW_CUSTOM_VARS_START + 0x93)
#define VAR_UNUSED_0x5094                            (HLW_CUSTOM_VARS_START + 0x94)
#define VAR_UNUSED_0x5095                            (HLW_CUSTOM_VARS_START + 0x95)
#define VAR_UNUSED_0x5096                            (HLW_CUSTOM_VARS_START + 0x96)
#define VAR_UNUSED_0x5097                            (HLW_CUSTOM_VARS_START + 0x97)
#define VAR_UNUSED_0x5098                            (HLW_CUSTOM_VARS_START + 0x98)
#define VAR_UNUSED_0x5099                            (HLW_CUSTOM_VARS_START + 0x99)
#define VAR_UNUSED_0x509A                            (HLW_CUSTOM_VARS_START + 0x9A)
#define VAR_UNUSED_0x509B                            (HLW_CUSTOM_VARS_START + 0x9B)
#define VAR_UNUSED_0x509C                            (HLW_CUSTOM_VARS_START + 0x9C)
#define VAR_UNUSED_0x509D                            (HLW_CUSTOM_VARS_START + 0x9D)
#define VAR_UNUSED_0x509E                            (HLW_CUSTOM_VARS_START + 0x9E)
#define VAR_UNUSED_0x509F                            (HLW_CUSTOM_VARS_START + 0x9F)
#define VAR_UNUSED_0x50A0                            (HLW_CUSTOM_VARS_START + 0xA0)
#define VAR_UNUSED_0x50A1                            (HLW_CUSTOM_VARS_START + 0xA1)
#define VAR_UNUSED_0x50A2                            (HLW_CUSTOM_VARS_START + 0xA2)
#define VAR_UNUSED_0x50A3                            (HLW_CUSTOM_VARS_START + 0xA3)
#define VAR_UNUSED_0x50A4                            (HLW_CUSTOM_VARS_START + 0xA4)
#define VAR_UNUSED_0x50A5                            (HLW_CUSTOM_VARS_START + 0xA5)
#define VAR_UNUSED_0x50A6                            (HLW_CUSTOM_VARS_START + 0xA6)
#define VAR_UNUSED_0x50A7                            (HLW_CUSTOM_VARS_START + 0xA7)
#define VAR_UNUSED_0x50A8                            (HLW_CUSTOM_VARS_START + 0xA8)
#define VAR_UNUSED_0x50A9                            (HLW_CUSTOM_VARS_START + 0xA9)
#define VAR_UNUSED_0x50AA                            (HLW_CUSTOM_VARS_START + 0xAA)
#define VAR_UNUSED_0x50AB                            (HLW_CUSTOM_VARS_START + 0xAB)
#define VAR_UNUSED_0x50AC                            (HLW_CUSTOM_VARS_START + 0xAC)
#define VAR_UNUSED_0x50AD                            (HLW_CUSTOM_VARS_START + 0xAD)
#define VAR_UNUSED_0x50AE                            (HLW_CUSTOM_VARS_START + 0xAE)
#define VAR_UNUSED_0x50AF                            (HLW_CUSTOM_VARS_START + 0xAF)
#define VAR_UNUSED_0x50B0                            (HLW_CUSTOM_VARS_START + 0xB0)
#define VAR_UNUSED_0x50B1                            (HLW_CUSTOM_VARS_START + 0xB1)
#define VAR_UNUSED_0x50B2                            (HLW_CUSTOM_VARS_START + 0xB2)
#define VAR_UNUSED_0x50B3                            (HLW_CUSTOM_VARS_START + 0xB3)
#define VAR_UNUSED_0x50B4                            (HLW_CUSTOM_VARS_START + 0xB4)
#define VAR_UNUSED_0x50B5                            (HLW_CUSTOM_VARS_START + 0xB5)
#define VAR_UNUSED_0x50B6                            (HLW_CUSTOM_VARS_START + 0xB6)
#define VAR_UNUSED_0x50B7                            (HLW_CUSTOM_VARS_START + 0xB7)
#define VAR_UNUSED_0x50B8                            (HLW_CUSTOM_VARS_START + 0xB8)
#define VAR_UNUSED_0x50B9                            (HLW_CUSTOM_VARS_START + 0xB9)
#define VAR_UNUSED_0x50BA                            (HLW_CUSTOM_VARS_START + 0xBA)
#define VAR_UNUSED_0x50BB                            (HLW_CUSTOM_VARS_START + 0xBB)
#define VAR_UNUSED_0x50BC                            (HLW_CUSTOM_VARS_START + 0xBC)
#define VAR_UNUSED_0x50BD                            (HLW_CUSTOM_VARS_START + 0xBD)
#define VAR_UNUSED_0x50BE                            (HLW_CUSTOM_VARS_START + 0xBE)
#define VAR_UNUSED_0x50BF                            (HLW_CUSTOM_VARS_START + 0xBF)
#define VAR_UNUSED_0x50C0                            (HLW_CUSTOM_VARS_START + 0xC0)
#define VAR_UNUSED_0x50C1                            (HLW_CUSTOM_VARS_START + 0xC1)
#define VAR_UNUSED_0x50C2                            (HLW_CUSTOM_VARS_START + 0xC2)
#define VAR_UNUSED_0x50C3                            (HLW_CUSTOM_VARS_START + 0xC3)
#define VAR_UNUSED_0x50C4                            (HLW_CUSTOM_VARS_START + 0xC4)
#define VAR_UNUSED_0x50C5                            (HLW_CUSTOM_VARS_START + 0xC5)
#define VAR_UNUSED_0x50C6                            (HLW_CUSTOM_VARS_START + 0xC6)
#define VAR_UNUSED_0x50C7                            (HLW_CUSTOM_VARS_START + 0xC7)
#define VAR_UNUSED_0x50C8                            (HLW_CUSTOM_VARS_START + 0xC8)
#define VAR_UNUSED_0x50C9                            (HLW_CUSTOM_VARS_START + 0xC9)
#define VAR_UNUSED_0x50CA                            (HLW_CUSTOM_VARS_START + 0xCA)
#define VAR_UNUSED_0x50CB                            (HLW_CUSTOM_VARS_START + 0xCB)
#define VAR_UNUSED_0x50CC                            (HLW_CUSTOM_VARS_START + 0xCC)
#define VAR_UNUSED_0x50CD                            (HLW_CUSTOM_VARS_START + 0xCD)
#define VAR_UNUSED_0x50CE                            (HLW_CUSTOM_VARS_START + 0xCE)
#define VAR_UNUSED_0x50CF                            (HLW_CUSTOM_VARS_START + 0xCF)
#define VAR_UNUSED_0x50D0                            (HLW_CUSTOM_VARS_START + 0xD0)
#define VAR_UNUSED_0x50D1                            (HLW_CUSTOM_VARS_START + 0xD1)
#define VAR_UNUSED_0x50D2                            (HLW_CUSTOM_VARS_START + 0xD2)
#define VAR_UNUSED_0x50D3                            (HLW_CUSTOM_VARS_START + 0xD3)
#define VAR_UNUSED_0x50D4                            (HLW_CUSTOM_VARS_START + 0xD4)
#define VAR_UNUSED_0x50D5                            (HLW_CUSTOM_VARS_START + 0xD5)
#define VAR_UNUSED_0x50D6                            (HLW_CUSTOM_VARS_START + 0xD6)
#define VAR_UNUSED_0x50D7                            (HLW_CUSTOM_VARS_START + 0xD7)
#define VAR_UNUSED_0x50D8                            (HLW_CUSTOM_VARS_START + 0xD8)
#define VAR_UNUSED_0x50D9                            (HLW_CUSTOM_VARS_START + 0xD9)
#define VAR_UNUSED_0x50DA                            (HLW_CUSTOM_VARS_START + 0xDA)
#define VAR_UNUSED_0x50DB                            (HLW_CUSTOM_VARS_START + 0xDB)
#define VAR_UNUSED_0x50DC                            (HLW_CUSTOM_VARS_START + 0xDC)
#define VAR_UNUSED_0x50DD                            (HLW_CUSTOM_VARS_START + 0xDD)
#define VAR_UNUSED_0x50DE                            (HLW_CUSTOM_VARS_START + 0xDE)
#define VAR_UNUSED_0x50DF                            (HLW_CUSTOM_VARS_START + 0xDF)
#define VAR_UNUSED_0x50E0                            (HLW_CUSTOM_VARS_START + 0xE0)
#define VAR_UNUSED_0x50E1                            (HLW_CUSTOM_VARS_START + 0xE1)
#define VAR_UNUSED_0x50E2                            (HLW_CUSTOM_VARS_START + 0xE2)
#define VAR_UNUSED_0x50E3                            (HLW_CUSTOM_VARS_START + 0xE3)
#define VAR_UNUSED_0x50E4                            (HLW_CUSTOM_VARS_START + 0xE4)
#define VAR_UNUSED_0x50E5                            (HLW_CUSTOM_VARS_START + 0xE5)
#define VAR_UNUSED_0x50E6                            (HLW_CUSTOM_VARS_START + 0xE6)
#define VAR_UNUSED_0x50E7                            (HLW_CUSTOM_VARS_START + 0xE7)
#define VAR_UNUSED_0x50E8                            (HLW_CUSTOM_VARS_START + 0xE8)
#define VAR_UNUSED_0x50E9                            (HLW_CUSTOM_VARS_START + 0xE9)
#define VAR_UNUSED_0x50EA                            (HLW_CUSTOM_VARS_START + 0xEA)
#define VAR_UNUSED_0x50EB                            (HLW_CUSTOM_VARS_START + 0xEB)
#define VAR_UNUSED_0x50EC                            (HLW_CUSTOM_VARS_START + 0xEC)
#define VAR_UNUSED_0x50ED                            (HLW_CUSTOM_VARS_START + 0xED)
#define VAR_UNUSED_0x50EE                            (HLW_CUSTOM_VARS_START + 0xEE)
#define VAR_UNUSED_0x50EF                            (HLW_CUSTOM_VARS_START + 0xEF)
#define VAR_UNUSED_0x50F0                            (HLW_CUSTOM_VARS_START + 0xF0)
#define VAR_UNUSED_0x50F1                            (HLW_CUSTOM_VARS_START + 0xF1)
#define VAR_UNUSED_0x50F2                            (HLW_CUSTOM_VARS_START + 0xF2)
#define VAR_UNUSED_0x50F3                            (HLW_CUSTOM_VARS_START + 0xF3)
#define VAR_UNUSED_0x50F4                            (HLW_CUSTOM_VARS_START + 0xF4)
#define VAR_UNUSED_0x50F5                            (HLW_CUSTOM_VARS_START + 0xF5)
#define VAR_UNUSED_0x50F6                            (HLW_CUSTOM_VARS_START + 0xF6)
#define VAR_UNUSED_0x50F7                            (HLW_CUSTOM_VARS_START + 0xF7)
#define VAR_UNUSED_0x50F8                            (HLW_CUSTOM_VARS_START + 0xF8)
#define VAR_UNUSED_0x50F9                            (HLW_CUSTOM_VARS_START + 0xF9)
#define VAR_UNUSED_0x50FA                            (HLW_CUSTOM_VARS_START + 0xFA)
#define VAR_UNUSED_0x50FB                            (HLW_CUSTOM_VARS_START + 0xFB)
#define VAR_UNUSED_0x50FC                            (HLW_CUSTOM_VARS_START + 0xFC)
#define VAR_UNUSED_0x50FD                            (HLW_CUSTOM_VARS_START + 0xFD)
#define VAR_UNUSED_0x50FE                            (HLW_CUSTOM_VARS_START + 0xFE)
#define VAR_UNUSED_0x50FF                            (HLW_CUSTOM_VARS_START + 0xFF)
#define HLW_CUSTOM_VARS_END                              VAR_UNUSED_0x50FF
#define NUM_HLW_CUSTOM_VARS                              (HLW_CUSTOM_VARS_END - HLW_CUSTOM_VARS_START + 1)

#define SPECIAL_VARS_START            0x8000
// special vars
// They are commonly used as parameters to commands, or return values from commands.
#define VAR_0x8000                    0x8000
#define VAR_0x8001                    0x8001
#define VAR_0x8002                    0x8002
#define VAR_0x8003                    0x8003
#define VAR_0x8004                    0x8004
#define VAR_0x8005                    0x8005
#define VAR_0x8006                    0x8006
#define VAR_0x8007                    0x8007
#define VAR_0x8008                    0x8008
#define VAR_0x8009                    0x8009
#define VAR_0x800A                    0x800A
#define VAR_0x800B                    0x800B
#define VAR_FACING                    0x800C
#define VAR_RESULT                    0x800D
#define VAR_ITEM_ID                   0x800E
#define VAR_LAST_TALKED               0x800F
#define VAR_CONTEST_RANK              0x8010
#define VAR_CONTEST_CATEGORY          0x8011
#define VAR_MON_BOX_ID                0x8012
#define VAR_MON_BOX_POS               0x8013
#define VAR_UNUSED_0x8014             0x8014
#define VAR_TRAINER_BATTLE_OPPONENT_A 0x8015 // Alias of TRAINER_BATTLE_PARAM.opponentA

#define SPECIAL_VARS_END              0x8015

// If an overworld trigger uses this pseudo-variable as the trigger check,
// then the script will be run using RunScriptImmediately instead of in the
// global script context. This means it will run faster, but cannot do any
// cutscenes nor call a wait command. Used for weather effects in vanilla.
#define TRIGGER_RUN_IMMEDIATELY   0

// Temp var aliases
#define VAR_TEMP_CHALLENGE_STATUS  VAR_TEMP_0

#define VAR_TEMP_MIXED_RECORDS         VAR_TEMP_0
#define VAR_TEMP_RECORD_MIX_GIFT_ITEM  VAR_TEMP_1

#define VAR_TEMP_PLAYING_PYRAMID_MUSIC  VAR_TEMP_E

#define VAR_TEMP_FRONTIER_TUTOR_SELECTION  VAR_TEMP_D
#define VAR_TEMP_FRONTIER_TUTOR_ID         VAR_TEMP_E

#define VAR_TEMP_TRANSFERRED_SPECIES  VAR_TEMP_1

#if TESTING
#define TESTING_VARS_START                  0x9000
#define TESTING_VAR_DIFFICULTY              (TESTING_VARS_START + 0x0)
#define TESTING_VAR_STARTING_STATUS         (TESTING_VARS_START + 0x1)
#define TESTING_VAR_STARTING_STATUS_TIMER   (TESTING_VARS_START + 0x2)
#define TESTING_VAR_UNUSED_3                (TESTING_VARS_START + 0x3)
#define TESTING_VAR_UNUSED_4                (TESTING_VARS_START + 0x4)
#define TESTING_VAR_UNUSED_5                (TESTING_VARS_START + 0x5)
#define TESTING_VAR_UNUSED_6                (TESTING_VARS_START + 0x6)
#define TESTING_VAR_UNUSED_7                (TESTING_VARS_START + 0x7)
#endif // TESTING

#endif // GUARD_CONSTANTS_VARS_H
