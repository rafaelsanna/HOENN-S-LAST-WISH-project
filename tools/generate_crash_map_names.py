"""Generate immutable crash-report map names from Porymap's group registry."""

import json
import re
import sys
from pathlib import Path


def generate(source):
    groups = json.loads(Path(source).read_text(encoding="utf-8"))
    order = groups["group_order"]
    if len(order) > 256 or len(set(order)) != len(order):
        raise ValueError("Invalid map group order")
    lines = [
        "// Auto-generated from data/maps/map_groups.json; do not edit.",
        "// Names and IDs occupy ROM only, not the save or RAM.",
        "static const struct CrashMapName sCrashMapNames[] =",
        "{",
    ]
    for group_id, key in enumerate(order):
        maps = groups[key]
        if len(maps) > 256:
            raise ValueError(f"Too many maps in {key}")
        for map_id, name in enumerate(maps):
            if not isinstance(name, str) or not re.fullmatch(r"[A-Za-z0-9_]+", name):
                raise ValueError(f"Invalid diagnostic map name: {name!r}")
            lines.append(f'    {{0x{group_id:02X}{map_id:02X}, "{name}"}},')
    lines.extend(["};", ""])
    return "\n".join(lines)


if __name__ == "__main__":
    output = Path(sys.argv[2])
    text = generate(sys.argv[1])
    if not output.exists() or output.read_text(encoding="utf-8") != text:
        output.write_text(text, encoding="utf-8")
