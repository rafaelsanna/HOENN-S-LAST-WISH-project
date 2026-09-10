// Lavaridge Gym 1F - shuffled stage playlist
//
// Completely independent from radio.c.
// The map starts this special; it shuffles the selected songs and advances
// after one full playback pass, including HLW songs whose M4A data loops with GOTO.

#include "global.h"
#include "gba/m4a_internal.h"
#include "m4a.h"
#include "main.h"
#include "overworld.h"
#include "random.h"
#include "sound.h"
#include "task.h"
#include "constants/songs.h"

#define GYM_STAGE_SONG_COUNT              13
#define GYM_STAGE_MONITOR_MAX_TRACKS      16
#define GYM_STAGE_MIN_RUNTIME_FRAMES      600
#define GYM_STAGE_WRAP_WINDOW_FRAMES      90
#define GYM_STAGE_MONITOR_WARMUP_FRAMES   60

static const u16 sGymStageSongs[GYM_STAGE_SONG_COUNT] =
{
    MUS_BAD_GUY_BILLIE_EILISH,
    MUS_PAPARAZZI_LADY_GAGA,
    MUS_BAD_ROMANCE_LADY_GAGA,
    MUS_ALEJANDRO_LADY_GAGA,
    MUS_TOXIC_BRITNEY_SPEARS,
    MUS_GURENGE_LISA,
    MUS_UMBRELLA_RIHANNA,
    MUS_DISTURBIA_RIHANNA,
    MUS_DIAMONDS_RIHANNA,
    MUS_IRREPLACEABLE_BEYONCE,
    MUS_BROKEN_HEARTED_GIRL_BEYONCE,
    MUS_CRAZY_IN_LOVE_BEYONCE,
    MUS_HALO_BEYONCE,
};

static EWRAM_DATA u8 sGymStageOrder[GYM_STAGE_SONG_COUNT];
static EWRAM_DATA u8 sGymStageOrderPos;
static EWRAM_DATA u8 sGymStageLastIndex;
static EWRAM_DATA bool8 sGymStageHasLastIndex;
static EWRAM_DATA u16 sGymStageCurrentSong;

static EWRAM_DATA u16 sGymStageMonitorSong;
static EWRAM_DATA u32 sGymStageMonitorCmdPtr[GYM_STAGE_MONITOR_MAX_TRACKS];
static EWRAM_DATA u8 sGymStageMonitorPatternLevel[GYM_STAGE_MONITOR_MAX_TRACKS];
static EWRAM_DATA u16 sGymStageMonitorExpectedMask;
static EWRAM_DATA u16 sGymStageMonitorWrappedMask;
static EWRAM_DATA u16 sGymStageMonitorFinishedMask;
static EWRAM_DATA u16 sGymStageMonitorRuntimeFrames;
static EWRAM_DATA u8 sGymStageMonitorWrapWindow;
static EWRAM_DATA u8 sGymStageMonitorWarmup;

static void Task_GymStagePlaylist(u8 taskId);

static void GymStage_Shuffle(void)
{
    s16 i;

    for (i = 0; i < GYM_STAGE_SONG_COUNT; i++)
        sGymStageOrder[i] = i;

    // Fisher-Yates shuffle: every song plays once before reshuffling.
    for (i = GYM_STAGE_SONG_COUNT - 1; i > 0; i--)
    {
        u8 j = Random() % (i + 1);
        u8 temp = sGymStageOrder[i];

        sGymStageOrder[i] = sGymStageOrder[j];
        sGymStageOrder[j] = temp;
    }

    // Avoid the last song of one cycle immediately repeating as the first
    // song of the next cycle.
    if (sGymStageHasLastIndex
     && sGymStageOrder[0] == sGymStageLastIndex)
    {
        u8 temp = sGymStageOrder[0];
        sGymStageOrder[0] = sGymStageOrder[1];
        sGymStageOrder[1] = temp;
    }

    sGymStageOrderPos = 0;
}

static u16 GymStage_GetNextSong(void)
{
    u8 index;

    if (sGymStageOrderPos >= GYM_STAGE_SONG_COUNT)
        GymStage_Shuffle();

    index = sGymStageOrder[sGymStageOrderPos++];
    sGymStageLastIndex = index;
    sGymStageHasLastIndex = TRUE;

    return sGymStageSongs[index];
}

static void GymStage_ResetMonitor(void)
{
    u8 i;

    sGymStageMonitorSong = sGymStageCurrentSong;
    sGymStageMonitorExpectedMask = 0;
    sGymStageMonitorWrappedMask = 0;
    sGymStageMonitorFinishedMask = 0;
    sGymStageMonitorRuntimeFrames = 0;
    sGymStageMonitorWrapWindow = 0;
    sGymStageMonitorWarmup = GYM_STAGE_MONITOR_WARMUP_FRAMES;

    for (i = 0; i < GYM_STAGE_MONITOR_MAX_TRACKS; i++)
    {
        sGymStageMonitorCmdPtr[i] = 0;
        sGymStageMonitorPatternLevel[i] = 0;
    }
}

static bool8 GymStage_CurrentSongCompletedPass(void)
{
    u8 i;
    u8 trackCount;
    u16 completedMask;

    if (gMPlayInfo_BGM.songHeader != gSongTable[sGymStageCurrentSong].header)
        return FALSE;

    // A pause (battle/menu transition) is not the end of a song.
    if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)
        return FALSE;

    // Non-looping BGM genuinely ended.
    if (!(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK))
        return TRUE;

    if (gMPlayInfo_BGM.tracks == NULL || gMPlayInfo_BGM.trackCount == 0)
        return FALSE;

    if (sGymStageMonitorSong != sGymStageCurrentSong)
    {
        GymStage_ResetMonitor();
        return FALSE;
    }

    if (sGymStageMonitorRuntimeFrames < 0xFFFF)
        sGymStageMonitorRuntimeFrames++;

    trackCount = gMPlayInfo_BGM.trackCount;
    if (trackCount > GYM_STAGE_MONITOR_MAX_TRACKS)
        trackCount = GYM_STAGE_MONITOR_MAX_TRACKS;

    // Let M4A settle, then remember the stable active-track set.
    if (sGymStageMonitorWarmup != 0)
    {
        for (i = 0; i < trackCount; i++)
        {
            struct MusicPlayerTrack *track = &gMPlayInfo_BGM.tracks[i];

            if ((track->flags & MPT_FLG_EXIST) && track->cmdPtr != NULL)
            {
                sGymStageMonitorExpectedMask |= (1 << i);
                sGymStageMonitorCmdPtr[i] = (u32)track->cmdPtr;
                sGymStageMonitorPatternLevel[i] = track->patternLevel;
            }
        }

        sGymStageMonitorWarmup--;
        return FALSE;
    }

    // Looping imported songs usually make a top-level backwards jump.
    // Require the tracks to wrap near each other so internal pattern jumps
    // do not look like "song finished".
    if (sGymStageMonitorWrapWindow != 0)
    {
        sGymStageMonitorWrapWindow--;

        if (sGymStageMonitorWrapWindow == 0)
            sGymStageMonitorWrappedMask = 0;
    }

    for (i = 0; i < trackCount; i++)
    {
        struct MusicPlayerTrack *track = &gMPlayInfo_BGM.tracks[i];
        u16 bit = (1 << i);

        if (!(sGymStageMonitorExpectedMask & bit))
            continue;

        if (!(track->flags & MPT_FLG_EXIST) || track->cmdPtr == NULL)
        {
            sGymStageMonitorFinishedMask |= bit;
            continue;
        }

        if (sGymStageMonitorCmdPtr[i] != 0
         && sGymStageMonitorPatternLevel[i] == 0
         && track->patternLevel == 0
         && track->repN == 0
         && (u32)track->cmdPtr < sGymStageMonitorCmdPtr[i])
        {
            if (sGymStageMonitorWrapWindow == 0)
            {
                sGymStageMonitorWrappedMask = 0;
                sGymStageMonitorWrapWindow = GYM_STAGE_WRAP_WINDOW_FRAMES;
            }

            sGymStageMonitorWrappedMask |= bit;
        }

        sGymStageMonitorCmdPtr[i] = (u32)track->cmdPtr;
        sGymStageMonitorPatternLevel[i] = track->patternLevel;
    }

    // Prevent intros or early jumps from advancing immediately.
    if (sGymStageMonitorRuntimeFrames < GYM_STAGE_MIN_RUNTIME_FRAMES)
        return FALSE;

    completedMask = sGymStageMonitorFinishedMask | sGymStageMonitorWrappedMask;

    return (sGymStageMonitorExpectedMask != 0
         && (completedMask & sGymStageMonitorExpectedMask)
             == sGymStageMonitorExpectedMask);
}

enum
{
    GYM_STAGE_TASK_WAIT_FOR_START,
    GYM_STAGE_TASK_PLAYING,
};

#define tGymMapGroup data[0]
#define tGymMapNum   data[1]
#define tGymState    data[2]
#define tGymRetry    data[3]

static void GymStage_RequestNextSong(void)
{
    sGymStageCurrentSong = GymStage_GetNextSong();

    // IMPORTANT: use the overworld map-music state machine, not raw
    // m4aSongNumStart(). TransitionMapMusic may still have the map's default
    // MUS_ABRACADABRA queued when ON_RESUME runs. PlayNewMapMusic replaces
    // that queued state, so the default BGM cannot overwrite the playlist.
    PlayNewMapMusic(sGymStageCurrentSong);
}

static void Task_GymStagePlaylist(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    // Keep this task scoped to the exact map where the special created it.
    if (gSaveBlock1Ptr->location.mapGroup != task->tGymMapGroup
     || gSaveBlock1Ptr->location.mapNum != task->tGymMapNum)
    {
        DestroyTask(taskId);
        return;
    }

    // Battle/menu/cutscene callbacks own audio while they are active.
    if (gMain.callback2 != CB2_Overworld)
        return;

    // Do not fight badge/item fanfares.
    if (!IsFanfareTaskInactive())
        return;

    switch (task->tGymState)
    {
    case GYM_STAGE_TASK_WAIT_FOR_START:
        // PlayNewMapMusic schedules the BGM through MapMusicMain. Wait until
        // M4A is actually running the requested song before monitoring it.
        if (gMPlayInfo_BGM.songHeader == gSongTable[sGymStageCurrentSong].header)
        {
            GymStage_ResetMonitor();
            task->tGymRetry = 0;
            task->tGymState = GYM_STAGE_TASK_PLAYING;
        }
        else
        {
            // Normally this is only a frame or two. Re-assert after one second
            // in case another field-music transition was still pending.
            if (++task->tGymRetry >= 60)
            {
                PlayNewMapMusic(sGymStageCurrentSong);
                task->tGymRetry = 0;
            }
        }
        break;

    case GYM_STAGE_TASK_PLAYING:
        // Returning from battle/menu may restore the map's normal BGM.
        // Re-assert the current concert track instead of killing the playlist.
        if (gMPlayInfo_BGM.songHeader != gSongTable[sGymStageCurrentSong].header)
        {
            PlayNewMapMusic(sGymStageCurrentSong);
            task->tGymRetry = 0;
            task->tGymState = GYM_STAGE_TASK_WAIT_FOR_START;
            break;
        }

        if (GymStage_CurrentSongCompletedPass())
        {
            GymStage_RequestNextSong();
            task->tGymRetry = 0;
            task->tGymState = GYM_STAGE_TASK_WAIT_FOR_START;
        }
        break;
    }
}

#undef tGymMapGroup
#undef tGymMapNum
#undef tGymState
#undef tGymRetry

// Called only by LavaridgeTown_Gym_1F's MAP_SCRIPT_ON_RESUME.
void StartLavaridgeGymStagePlaylist(void)
{
    u8 taskId;

    if (FuncIsActiveTask(Task_GymStagePlaylist))
        return;

    sGymStageOrderPos = GYM_STAGE_SONG_COUNT;
    sGymStageHasLastIndex = FALSE;

    taskId = CreateTask(Task_GymStagePlaylist, 80);
    gTasks[taskId].data[0] = gSaveBlock1Ptr->location.mapGroup;
    gTasks[taskId].data[1] = gSaveBlock1Ptr->location.mapNum;
    gTasks[taskId].data[2] = GYM_STAGE_TASK_WAIT_FOR_START;
    gTasks[taskId].data[3] = 0;

    GymStage_RequestNextSong();
}
