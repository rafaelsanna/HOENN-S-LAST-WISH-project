#!/usr/bin/env python3
from pathlib import Path
import re, shutil, sys

path = Path("src/field_player_avatar.c")
if not path.exists():
    print("ERROR: src/field_player_avatar.c not found.")
    print("Run this from the pokeemerald-expansion root.")
    sys.exit(1)

text = path.read_text()

if "DebugPlayerSpeed5xIsEnabled(void)" in text:
    print("Player Speed x5 core hook is already installed.")
    sys.exit(0)

state_anchor = "EWRAM_DATA struct PlayerAvatar gPlayerAvatar = {};\n"
if state_anchor not in text:
    print("ERROR: gPlayerAvatar anchor not found.")
    sys.exit(1)

state_block = state_anchor + '''
// DEV QoL: session-only on-foot speed toggle.
// This is intentionally not saved; rebooting the game restores normal speed.
static EWRAM_DATA bool8 sDebugPlayerSpeed5xEnabled = FALSE;
static EWRAM_DATA u8 sDebugPlayerSpeed5xPhase = 0;

bool32 DebugPlayerSpeed5xIsEnabled(void)
{
    return sDebugPlayerSpeed5xEnabled;
}

void DebugTogglePlayerSpeed5x(void)
{
    sDebugPlayerSpeed5xEnabled ^= TRUE;
    sDebugPlayerSpeed5xPhase = 0;
}
'''
text = text.replace(state_anchor, state_block, 1)

proto_anchor = "static void PlayerRun(enum Direction);\n"
if proto_anchor not in text:
    print("ERROR: PlayerRun prototype anchor not found.")
    sys.exit(1)
text = text.replace(
    proto_anchor,
    proto_anchor + "static u8 GetDebugPlayerSpeed5xMovementAction(enum Direction direction);\n",
    1
)

walk_pattern = re.compile(
    r'// normal speed \(1 speed\)\s*\n'
    r'void PlayerWalkNormal\(enum Direction direction\)\s*\n'
    r'\{\s*\n'
    r'\s*PlayerSetAnimId\(GetWalkNormalMovementAction\(direction\), COPY_MOVE_WALK\);\s*\n'
    r'\}',
    re.M
)
m = walk_pattern.search(text)
if not m:
    print("ERROR: PlayerWalkNormal body not found in expected form.")
    sys.exit(1)

walk_replacement = '''// Exact 5x average without skipping collision checks:
// - GetWalkFasterMovementAction = 4 frames per tile (4x)
// - GetSlideMovementAction      = 2 frames per tile (8x)
// Cycle 3x 4-frame + 2x 2-frame steps:
//   (4 + 4 + 4 + 2 + 2) = 16 frames for 5 tiles
// versus 80 frames normally => exactly 5x average.
//
// Followers deliberately fall back to normal movement because the stock
// follower synchronization does not understand these faster player speeds.
static u8 GetDebugPlayerSpeed5xMovementAction(enum Direction direction)
{
    u8 movementAction;

    if (sDebugPlayerSpeed5xPhase < 3)
        movementAction = GetWalkFasterMovementAction(direction);
    else
        movementAction = GetSlideMovementAction(direction);

    sDebugPlayerSpeed5xPhase++;
    if (sDebugPlayerSpeed5xPhase >= 5)
        sDebugPlayerSpeed5xPhase = 0;

    return movementAction;
}

// normal speed (1 speed)
void PlayerWalkNormal(enum Direction direction)
{
    if (sDebugPlayerSpeed5xEnabled && !PlayerHasFollowerNPC())
        PlayerSetAnimId(GetDebugPlayerSpeed5xMovementAction(direction), COPY_MOVE_WALK);
    else
        PlayerSetAnimId(GetWalkNormalMovementAction(direction), COPY_MOVE_WALK);
}'''
text = text[:m.start()] + walk_replacement + text[m.end():]

run_pattern = re.compile(
    r'static void PlayerRun\(enum Direction direction\)\s*\n'
    r'\{\s*\n'
    r'\s*PlayerSetAnimId\(GetPlayerRunMovementAction\(direction\), COPY_MOVE_WALK\);\s*\n'
    r'\}',
    re.M
)
m = run_pattern.search(text)
if not m:
    print("ERROR: PlayerRun body not found in expected form.")
    sys.exit(1)

run_replacement = '''static void PlayerRun(enum Direction direction)
{
    if (sDebugPlayerSpeed5xEnabled && !PlayerHasFollowerNPC())
        PlayerSetAnimId(GetDebugPlayerSpeed5xMovementAction(direction), COPY_MOVE_WALK);
    else
        PlayerSetAnimId(GetPlayerRunMovementAction(direction), COPY_MOVE_WALK);
}'''
text = text[:m.start()] + run_replacement + text[m.end():]

required = [
    "bool32 DebugPlayerSpeed5xIsEnabled(void)",
    "void DebugTogglePlayerSpeed5x(void)",
    "GetWalkFasterMovementAction(direction)",
    "GetSlideMovementAction(direction)",
    "sDebugPlayerSpeed5xPhase >= 5",
    "sDebugPlayerSpeed5xEnabled && !PlayerHasFollowerNPC()",
]
for item in required:
    if item not in text:
        print("ERROR: verification failed:", item)
        sys.exit(1)

backup = path.with_suffix(path.suffix + ".bak_speed5x")
if not backup.exists():
    shutil.copy2(path, backup)

path.write_text(text)

print("OK: DEV Player Speed x5 core hook installed.")
print("- on-foot manual walk/run only")
print("- exact 5x average over every 5 tiles")
print("- collision is still checked one tile at a time")
print("- bike/surf/forced/script movement unchanged")
print("- normal speed is used while a follower NPC is active")
print("- toggle resets OFF on reboot")
print("Backup:", backup)
