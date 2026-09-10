// Renton's Dewford Gym Radio - shuffled ROCK / METAL playlist
//
// Completely independent from radio.c.
// It copies only the song IDs from the Radio's ROCK METAL station.
// The Dewford Gym map starts this special on MAP_SCRIPT_ON_RESUME.
//
// Each song plays one complete pass. Imported HLW tracks that contain a
// top-level GOTO loop are advanced when all active M4A tracks reach that loop,
// instead of repeating forever like normal map BGM.

#include "global.h"
#include "gba/m4a_internal.h"
#include "m4a.h"
#include "main.h"
#include "overworld.h"
#include "random.h"
#include "sound.h"
#include "task.h"
#include "constants/songs.h"

#define RENTON_RADIO_SONG_COUNT               14
#define RENTON_RADIO_MONITOR_MAX_TRACKS       16
#define RENTON_RADIO_MIN_RUNTIME_FRAMES       600
#define RENTON_RADIO_WRAP_WINDOW_FRAMES       90
#define RENTON_RADIO_MONITOR_WARMUP_FRAMES    60

// Same songs as radio.c -> sStation_RockMetal[].
// radio.c itself is not modified or called.
static const u16 sRentonGymRadioSongs[RENTON_RADIO_SONG_COUNT] =
{
    MUS_3S_AND_7S,
    MUS_GO_WITH_THE_FLOW,
    MUS_MY_GOD_IS_THE_SUN,
    MUS_ROSEMARY_DEFTONES,
    MUS_MY_OWN_SUMMER,
    MUS_CHANGE_IN_THE_HOUSE_OF_FLIES,
    MUS_BE_QUIET_AND_DRIVE,
    MUS_AROUND_THE_FUR,
    MUS_FAINT,
    MUS_EASIER_TO_RUN,
    MUS_IN_THE_END,
    MUS_BREAKING_THE_HABIT,
    MUS_KRYPTONITE,
    MUS_ANIMAL_I_HAVE_BECOME,
};

static EWRAM_DATA u8 sRentonRadioOrder[RENTON_RADIO_SONG_COUNT];
static EWRAM_DATA u8 sRentonRadioOrderPos;
static EWRAM_DATA u8 sRentonRadioLastIndex;
static EWRAM_DATA bool8 sRentonRadioHasLastIndex;
static EWRAM_DATA u16 sRentonRadioCurrentSong;

static EWRAM_DATA u16 sRentonRadioMonitorSong;
static EWRAM_DATA u32 sRentonRadioMonitorCmdPtr[RENTON_RADIO_MONITOR_MAX_TRACKS];
static EWRAM_DATA u8 sRentonRadioMonitorPatternLevel[RENTON_RADIO_MONITOR_MAX_TRACKS];
static EWRAM_DATA u16 sRentonRadioMonitorExpectedMask;
static EWRAM_DATA u16 sRentonRadioMonitorWrappedMask;
static EWRAM_DATA u16 sRentonRadioMonitorFinishedMask;
static EWRAM_DATA u16 sRentonRadioMonitorRuntimeFrames;
static EWRAM_DATA u8 sRentonRadioMonitorWrapWindow;
static EWRAM_DATA u8 sRentonRadioMonitorWarmup;

static void Task_RentonGymRadio(u8 taskId);

static void RentonGymRadio_Shuffle(void)
{
    s16 i;

    for (i = 0; i < RENTON_RADIO_SONG_COUNT; i++)
        sRentonRadioOrder[i] = i;

    // Fisher-Yates: every ROCK/METAL track appears once before reshuffling.
    for (i = RENTON_RADIO_SONG_COUNT - 1; i > 0; i--)
    {
        u8 j = Random() % (i + 1);
        u8 temp = sRentonRadioOrder[i];

        sRentonRadioOrder[i] = sRentonRadioOrder[j];
        sRentonRadioOrder[j] = temp;
    }

    // Do not repeat the last song of the previous shuffle as the first song
    // of the new shuffle.
    if (sRentonRadioHasLastIndex
     && sRentonRadioOrder[0] == sRentonRadioLastIndex)
    {
        u8 temp = sRentonRadioOrder[0];

        sRentonRadioOrder[0] = sRentonRadioOrder[1];
        sRentonRadioOrder[1] = temp;
    }

    sRentonRadioOrderPos = 0;
}

static u16 RentonGymRadio_GetNextSong(void)
{
    u8 index;

    if (sRentonRadioOrderPos >= RENTON_RADIO_SONG_COUNT)
        RentonGymRadio_Shuffle();

    index = sRentonRadioOrder[sRentonRadioOrderPos++];
    sRentonRadioLastIndex = index;
    sRentonRadioHasLastIndex = TRUE;

    return sRentonGymRadioSongs[index];
}

static void RentonGymRadio_ResetMonitor(void)
{
    u8 i;

    sRentonRadioMonitorSong = sRentonRadioCurrentSong;
    sRentonRadioMonitorExpectedMask = 0;
    sRentonRadioMonitorWrappedMask = 0;
    sRentonRadioMonitorFinishedMask = 0;
    sRentonRadioMonitorRuntimeFrames = 0;
    sRentonRadioMonitorWrapWindow = 0;
    sRentonRadioMonitorWarmup = RENTON_RADIO_MONITOR_WARMUP_FRAMES;

    for (i = 0; i < RENTON_RADIO_MONITOR_MAX_TRACKS; i++)
    {
        sRentonRadioMonitorCmdPtr[i] = 0;
        sRentonRadioMonitorPatternLevel[i] = 0;
    }
}

static bool8 RentonGymRadio_CurrentSongCompletedPass(void)
{
    u8 i;
    u8 trackCount;
    u16 completedMask;

    if (gMPlayInfo_BGM.songHeader != gSongTable[sRentonRadioCurrentSong].header)
        return FALSE;

    if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)
        return FALSE;

    // Also supports a genuinely non-looping BGM.
    if (!(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK))
        return TRUE;

    if (gMPlayInfo_BGM.tracks == NULL || gMPlayInfo_BGM.trackCount == 0)
        return FALSE;

    if (sRentonRadioMonitorSong != sRentonRadioCurrentSong)
    {
        RentonGymRadio_ResetMonitor();
        return FALSE;
    }

    if (sRentonRadioMonitorRuntimeFrames < 0xFFFF)
        sRentonRadioMonitorRuntimeFrames++;

    trackCount = gMPlayInfo_BGM.trackCount;
    if (trackCount > RENTON_RADIO_MONITOR_MAX_TRACKS)
        trackCount = RENTON_RADIO_MONITOR_MAX_TRACKS;

    // Let M4A establish the stable active-track set.
    if (sRentonRadioMonitorWarmup != 0)
    {
        for (i = 0; i < trackCount; i++)
        {
            struct MusicPlayerTrack *track = &gMPlayInfo_BGM.tracks[i];

            if ((track->flags & MPT_FLG_EXIST) && track->cmdPtr != NULL)
            {
                sRentonRadioMonitorExpectedMask |= (1 << i);
                sRentonRadioMonitorCmdPtr[i] = (u32)track->cmdPtr;
                sRentonRadioMonitorPatternLevel[i] = track->patternLevel;
            }
        }

        sRentonRadioMonitorWarmup--;
        return FALSE;
    }

    if (sRentonRadioMonitorWrapWindow != 0)
    {
        sRentonRadioMonitorWrapWindow--;

        if (sRentonRadioMonitorWrapWindow == 0)
            sRentonRadioMonitorWrappedMask = 0;
    }

    for (i = 0; i < trackCount; i++)
    {
        struct MusicPlayerTrack *track = &gMPlayInfo_BGM.tracks[i];
        u16 bit = (1 << i);

        if (!(sRentonRadioMonitorExpectedMask & bit))
            continue;

        if (!(track->flags & MPT_FLG_EXIST) || track->cmdPtr == NULL)
        {
            sRentonRadioMonitorFinishedMask |= bit;
            continue;
        }

        // A top-level backwards cmdPtr jump is the imported song reaching its
        // main GOTO loop. Internal pattern jumps are intentionally ignored.
        if (sRentonRadioMonitorCmdPtr[i] != 0
         && sRentonRadioMonitorPatternLevel[i] == 0
         && track->patternLevel == 0
         && track->repN == 0
         && (u32)track->cmdPtr < sRentonRadioMonitorCmdPtr[i])
        {
            if (sRentonRadioMonitorWrapWindow == 0)
            {
                sRentonRadioMonitorWrappedMask = 0;
                sRentonRadioMonitorWrapWindow = RENTON_RADIO_WRAP_WINDOW_FRAMES;
            }

            sRentonRadioMonitorWrappedMask |= bit;
        }

        sRentonRadioMonitorCmdPtr[i] = (u32)track->cmdPtr;
        sRentonRadioMonitorPatternLevel[i] = track->patternLevel;
    }

    // Avoid treating intros / early internal jumps as a completed song.
    if (sRentonRadioMonitorRuntimeFrames < RENTON_RADIO_MIN_RUNTIME_FRAMES)
        return FALSE;

    completedMask = sRentonRadioMonitorFinishedMask
                  | sRentonRadioMonitorWrappedMask;

    return (sRentonRadioMonitorExpectedMask != 0
         && (completedMask & sRentonRadioMonitorExpectedMask)
             == sRentonRadioMonitorExpectedMask);
}

enum
{
    RENTON_RADIO_TASK_WAIT_FOR_START,
    RENTON_RADIO_TASK_PLAYING,
};

#define tRentonMapGroup data[0]
#define tRentonMapNum   data[1]
#define tRentonState    data[2]
#define tRentonRetry    data[3]

static void RentonGymRadio_RequestNextSong(void)
{
    sRentonRadioCurrentSong = RentonGymRadio_GetNextSong();

    // Use the overworld map-music state machine so the map's normal BGM cannot
    // overwrite Renton's requested track one frame later.
    PlayNewMapMusic(sRentonRadioCurrentSong);
}

static void Task_RentonGymRadio(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    // This radio exists only on the exact map where the special was started.
    if (gSaveBlock1Ptr->location.mapGroup != task->tRentonMapGroup
     || gSaveBlock1Ptr->location.mapNum != task->tRentonMapNum)
    {
        DestroyTask(taskId);
        return;
    }

    // Battle/menu/cutscene owns audio while outside the field callback.
    if (gMain.callback2 != CB2_Overworld)
        return;

    // Badge/TM/item fanfares must be allowed to finish.
    if (!IsFanfareTaskInactive())
        return;

    switch (task->tRentonState)
    {
    case RENTON_RADIO_TASK_WAIT_FOR_START:
        if (gMPlayInfo_BGM.songHeader == gSongTable[sRentonRadioCurrentSong].header)
        {
            RentonGymRadio_ResetMonitor();
            task->tRentonRetry = 0;
            task->tRentonState = RENTON_RADIO_TASK_PLAYING;
        }
        else
        {
            // A pending field-music transition should settle quickly. If not,
            // reassert Renton's track after one second.
            if (++task->tRentonRetry >= 60)
            {
                PlayNewMapMusic(sRentonRadioCurrentSong);
                task->tRentonRetry = 0;
            }
        }
        break;

    case RENTON_RADIO_TASK_PLAYING:
        // Battle return / map resume can restore the ordinary gym BGM.
        // Put Renton's current song back instead of abandoning the playlist.
        if (gMPlayInfo_BGM.songHeader != gSongTable[sRentonRadioCurrentSong].header)
        {
            PlayNewMapMusic(sRentonRadioCurrentSong);
            task->tRentonRetry = 0;
            task->tRentonState = RENTON_RADIO_TASK_WAIT_FOR_START;
            break;
        }

        if (RentonGymRadio_CurrentSongCompletedPass())
        {
            RentonGymRadio_RequestNextSong();
            task->tRentonRetry = 0;
            task->tRentonState = RENTON_RADIO_TASK_WAIT_FOR_START;
        }
        break;
    }
}

#undef tRentonMapGroup
#undef tRentonMapNum
#undef tRentonState
#undef tRentonRetry

// Called by DewfordTown_Gym's MAP_SCRIPT_ON_RESUME.
void StartRentonGymRadio(void)
{
    u8 taskId;

    if (FuncIsActiveTask(Task_RentonGymRadio))
        return;

    sRentonRadioOrderPos = RENTON_RADIO_SONG_COUNT;
    sRentonRadioHasLastIndex = FALSE;

    taskId = CreateTask(Task_RentonGymRadio, 80);
    gTasks[taskId].data[0] = gSaveBlock1Ptr->location.mapGroup;
    gTasks[taskId].data[1] = gSaveBlock1Ptr->location.mapNum;
    gTasks[taskId].data[2] = RENTON_RADIO_TASK_WAIT_FOR_START;
    gTasks[taskId].data[3] = 0;

    RentonGymRadio_RequestNextSong();
}
