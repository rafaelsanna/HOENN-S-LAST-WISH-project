#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import sys

follower_path = Path("src/follower_npc.c")
avatar_path = Path("src/field_player_avatar.c")

for p in (follower_path, avatar_path):
    if not p.exists():
        print(f"ERROR: {p} not found.")
        print("Run this from the pokeemerald-expansion root.")
        sys.exit(1)

follower = follower_path.read_text()
avatar = avatar_path.read_text()

# 1) follower_npc.c: handle BOTH follower systems.
if "DebugDisableFollowersForPlayerSpeed(void)" not in follower:
    include_anchor = '#include "constants/songs.h"\n'
    if '#include "constants/flags.h"\n' not in follower:
        if include_anchor not in follower:
            print("ERROR: follower_npc.c include anchor not found.")
            sys.exit(1)
        follower = follower.replace(
            include_anchor,
            include_anchor + '#include "constants/flags.h"\n',
            1
        )

    destroy_pattern = re.compile(
        r'void DestroyFollowerNPC\(void\)\s*\n'
        r'\{\s*\n'
        r'\s*if \(!PlayerHasFollowerNPC\(\)\)\s*\n'
        r'\s*return;\s*\n'
        r'\s*RemoveObjectEvent\(&gObjectEvents\[GetFollowerNPCData\(FNPC_DATA_OBJ_ID\)\]\);\s*\n'
        r'\s*ClearFollowerNPCData\(\);\s*\n'
        r'\s*UpdateFollowingPokemon\(\);\s*\n'
        r'\}',
        re.M
    )
    m = destroy_pattern.search(follower)
    if not m:
        print("ERROR: exact DestroyFollowerNPC function was not found.")
        print('Run: grep -n -A15 "void DestroyFollowerNPC" src/follower_npc.c')
        sys.exit(1)

    helpers = r'''
// DEV Player Speed helper.
// FLAG_TEMP_E is reserved by HLW to prevent the party Pokémon follower
// from spawning. Set it BEFORE destroying an NPC follower because
// DestroyFollowerNPC itself calls UpdateFollowingPokemon().
void DebugDisableFollowersForPlayerSpeed(void)
{
    FlagSet(FLAG_TEMP_E);

    if (PlayerHasFollowerNPC())
        DestroyFollowerNPC();
    else
        UpdateFollowingPokemon();
}

// Re-enable the party Pokémon follower system at normal speed.
// Destroyed NPC followers are intentionally not recreated.
void DebugRestoreFollowersAfterPlayerSpeed(void)
{
    FlagClear(FLAG_TEMP_E);
    UpdateFollowingPokemon();
}

// Temporary flags are cleared on map load, so fast movement reasserts
// FLAG_TEMP_E before moving.
void DebugEnsureFollowersDisabledForPlayerSpeed(void)
{
    if (!FlagGet(FLAG_TEMP_E))
        DebugDisableFollowersForPlayerSpeed();
}
'''
    follower = follower[:m.end()] + helpers + follower[m.end():]
else:
    print("follower_npc.c: Player Speed follower helpers already installed.")

# 2) field_player_avatar.c: replace NPC-only safety with combined helper.
if "DebugEnsureFollowersDisabledForPlayerSpeed(void);" not in avatar:
    api_anchor = "u8 DebugGetPlayerSpeedMode(void)\n"
    idx = avatar.find(api_anchor)
    if idx < 0:
        print("ERROR: DebugGetPlayerSpeedMode API not found.")
        print("This expects the x5/x10 speed-modes core to already be installed.")
        sys.exit(1)
    avatar = (
        avatar[:idx]
        + "void DebugEnsureFollowersDisabledForPlayerSpeed(void);\n\n"
        + avatar[idx:]
    )

walk_candidates = [
'''    if (sDebugPlayerSpeedMode != 0)
    {
        if (PlayerHasFollowerNPC())
            DestroyFollowerNPC();

        PlayerSetAnimId(GetDebugPlayerSpeedMovementAction(direction), COPY_MOVE_WALK);
    }
''',
'''    if (sDebugPlayerSpeedMode != 0)
    {
        // Enforce follower incompatibility even if one is recreated later.
        if (PlayerHasFollowerNPC())
            DestroyFollowerNPC();

        PlayerSetAnimId(GetDebugPlayerSpeedMovementAction(direction), COPY_MOVE_WALK);
    }
'''
]
new_block = '''    if (sDebugPlayerSpeedMode != 0)
    {
        DebugEnsureFollowersDisabledForPlayerSpeed();
        PlayerSetAnimId(GetDebugPlayerSpeedMovementAction(direction), COPY_MOVE_WALK);
    }
'''

walk_pos = avatar.find("void PlayerWalkNormal")
run_pos = avatar.find("static void PlayerRun")
if walk_pos < 0 or run_pos < 0:
    print("ERROR: PlayerWalkNormal or PlayerRun definition not found.")
    sys.exit(1)

walk_section = avatar[walk_pos:run_pos]
if "DebugEnsureFollowersDisabledForPlayerSpeed();" not in walk_section:
    replaced = False
    for old in walk_candidates:
        if old in walk_section:
            walk_section = walk_section.replace(old, new_block, 1)
            replaced = True
            break
    if not replaced:
        print("ERROR: fast PlayerWalkNormal block not found.")
        print('Run: grep -n -A25 "void PlayerWalkNormal" src/field_player_avatar.c')
        sys.exit(1)
    avatar = avatar[:walk_pos] + walk_section + avatar[run_pos:]

# Recompute run position after walk replacement.
run_pos = avatar.find("static void PlayerRun")
run_tail = avatar[run_pos:]
if "DebugEnsureFollowersDisabledForPlayerSpeed();" not in run_tail[:1200]:
    replaced = False
    for old in walk_candidates:
        if old in run_tail:
            run_tail = run_tail.replace(old, new_block, 1)
            replaced = True
            break
    if not replaced:
        print("ERROR: fast PlayerRun block not found.")
        print('Run: grep -n -A25 "static void PlayerRun" src/field_player_avatar.c')
        sys.exit(1)
    avatar = avatar[:run_pos] + run_tail

for needle in [
    "void DebugDisableFollowersForPlayerSpeed(void)",
    "FlagSet(FLAG_TEMP_E);",
    "void DebugRestoreFollowersAfterPlayerSpeed(void)",
    "FlagClear(FLAG_TEMP_E);",
    "void DebugEnsureFollowersDisabledForPlayerSpeed(void)",
]:
    if needle not in follower:
        print("ERROR: follower verification failed:", needle)
        sys.exit(1)

if avatar.count("DebugEnsureFollowersDisabledForPlayerSpeed();") < 2:
    print("ERROR: avatar verification failed: expected helper in walk and run.")
    sys.exit(1)

follower_bak = follower_path.with_suffix(follower_path.suffix + ".bak_speed_followers_v5")
avatar_bak = avatar_path.with_suffix(avatar_path.suffix + ".bak_speed_followers_v5")

if not follower_bak.exists():
    shutil.copy2(follower_path, follower_bak)
if not avatar_bak.exists():
    shutil.copy2(avatar_path, avatar_bak)

follower_path.write_text(follower)
avatar_path.write_text(avatar)

print("OK: Player Speed follower suppression installed.")
print("- NPC followers: DestroyFollowerNPC()")
print("- Party Pokémon followers: FLAG_TEMP_E + UpdateFollowingPokemon()")
print("- Player Speed Normal: clears FLAG_TEMP_E and refreshes party follower")
print("- Fast movement reasserts FLAG_TEMP_E after map loads")
print("Backups:")
print(" ", follower_bak)
print(" ", avatar_bak)
