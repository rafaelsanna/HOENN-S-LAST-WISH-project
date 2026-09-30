// Frozen wall IDs. Syntax: MINING_WALL(id, MAP_NAME, layout_x, layout_y).
// Verified baseline: all 81 tileset attribute files contain zero behavior
// 0xF0 (MB_MINING_WALL); no wall can be reached in any of the 607 maps.
// field_control_avatar.c dispatches this feature only for that behavior.
// Existing NPC sessions use the separate explicit MiningLocation IDs. Add assigned IDs here when placing
// walls; moving a wall changes only its lookup coordinates, never its ID.
