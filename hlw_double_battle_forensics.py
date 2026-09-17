#!/usr/bin/env python3
"""
HLW Double-Battle Forensics Collector
=====================================

READ-ONLY forensic collector for a pokeemerald-expansion repository.

It does NOT:
- checkout/reset/clean/revert/cherry-pick
- edit tracked files
- build the ROM
- regenerate data
- stash anything

It only runs read-only Git/search commands and writes its report files into
the current working directory (or --out-dir).

Designed for the HLW bug where some one-trainer doubles (e.g. Janja/Winston)
freeze during player double send-out while Tsubaki works.

Usage:
    cd ~/pokeemerald-expansion
    python3 hlw_double_battle_forensics.py

Recommended explicit bug window:
    python3 hlw_double_battle_forensics.py \
        --window-start "2026-09-15 08:00" \
        --window-end   "2026-09-15 12:00"

Outputs:
    hlw_double_battle_forensics_report.md
    hlw_double_battle_forensics_raw.json
"""

from __future__ import annotations

import argparse
import datetime as dt
import json
import os
import re
import shlex
import subprocess
import sys
from pathlib import Path
from typing import Any, Iterable

DEFAULT_START = "2026-09-14 00:00"
DEFAULT_END = "2026-09-16 23:59"

SUSPECT_FILES = [
    "src/battle_main.c",
    "src/battle_setup.c",
    "src/battle_controllers.c",
    "src/battle_controller_player.c",
    "src/battle_controller_opponent.c",
    "src/randomizer.c",
    "src/trainer_pools.c",
    "src/pokemon.c",
    "src/radio.c",
    "src/sound.c",
    "src/data/trainers.party",
    "src/data/trainers.h",
    "include/constants/trainers.h",
    "include/battle.h",
]

BATTLE_KEYWORDS = [
    "BATTLE_TYPE_DOUBLE",
    "BATTLE_TYPE_TWO_OPPONENTS",
    "BATTLE_TWO_VS_ONE_OPPONENT",
    "TRAINER_BATTLE_TYPE_DOUBLES",
    "trainerbattle_double",
    "trainerbattle_single",
    "CreateNPCTrainerParty",
    "InitBattleControllers",
    "BattleInitAllSprites",
    "gBattleControllerExecFlags",
    "gBattlerPartyIndexes",
    "gBattlersCount",
    "gBattleTypeFlags",
    "GetTrainerBattleType",
    "PlayerHandleLoadMonSprite",
    "PlayerHandleSendOut",
    "SendOut",
    "EmitSendOut",
    "BtlController_Complete",
    "BeginBattleIntro",
    "TryDoEventsBeforeFirstTurn",
    "RadioPriority_MaintainBgm",
    "RadioPriority_Update",
    "Randomize",
    "randomizer",
    "partySize",
]

KNOWN_TRAINERS = [
    "TRAINER_TSUBAKI_CASUAL",
    "TRAINER_JANJA",
    "TRAINER_WINSTON_1",
    "TRAINER_REN_BROTHER_QUEST_CASUAL",
    "TRAINER_REN_BROTHER_QUEST_HARD",
]

SYNC_WORDS = (
    "pull", "merge", "rebase", "reset", "checkout", "sync",
    "preserve local work", "wip", "fast-forward", "fast forward"
)

FILE_WEIGHTS = {
    "src/battle_main.c": 10,
    "src/battle_setup.c": 10,
    "src/battle_controllers.c": 10,
    "src/battle_controller_player.c": 9,
    "src/battle_controller_opponent.c": 9,
    "src/randomizer.c": 9,
    "src/trainer_pools.c": 8,
    "src/data/trainers.party": 7,
    "src/data/trainers.h": 7,
    "src/pokemon.c": 6,
    "src/radio.c": 4,
    "src/sound.c": 3,
}

KEYWORD_WEIGHTS = {
    "BATTLE_TYPE_DOUBLE": 8,
    "BATTLE_TYPE_TWO_OPPONENTS": 8,
    "TRAINER_BATTLE_TYPE_DOUBLES": 8,
    "CreateNPCTrainerParty": 10,
    "InitBattleControllers": 10,
    "BattleInitAllSprites": 10,
    "gBattleControllerExecFlags": 10,
    "gBattlerPartyIndexes": 9,
    "gBattlersCount": 9,
    "gBattleTypeFlags": 8,
    "GetTrainerBattleType": 8,
    "SendOut": 8,
    "BtlController_Complete": 8,
    "BeginBattleIntro": 8,
    "TryDoEventsBeforeFirstTurn": 8,
    "Randomize": 7,
    "randomizer": 5,
    "partySize": 5,
    "RadioPriority_MaintainBgm": 3,
}

MAX_CMD_OUTPUT = 400_000
MAX_DIFF_LINES_PER_COMMIT = 900
MAX_CANDIDATES = 40


def run(cmd: list[str], cwd: Path, timeout: int = 30, max_output: int = MAX_CMD_OUTPUT) -> dict[str, Any]:
    try:
        p = subprocess.run(
            cmd,
            cwd=cwd,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=timeout,
            errors="replace",
        )
        out = p.stdout
        err = p.stderr
        truncated = False
        if len(out) > max_output:
            out = out[:max_output] + "\n...[stdout truncated]...\n"
            truncated = True
        if len(err) > max_output:
            err = err[:max_output] + "\n...[stderr truncated]...\n"
            truncated = True
        return {
            "cmd": cmd,
            "returncode": p.returncode,
            "stdout": out,
            "stderr": err,
            "truncated": truncated,
        }
    except subprocess.TimeoutExpired as e:
        return {
            "cmd": cmd,
            "returncode": 124,
            "stdout": (e.stdout or "") if isinstance(e.stdout, str) else "",
            "stderr": f"TIMEOUT after {timeout}s",
            "truncated": False,
        }
    except Exception as e:
        return {
            "cmd": cmd,
            "returncode": 125,
            "stdout": "",
            "stderr": repr(e),
            "truncated": False,
        }


def git(repo: Path, *args: str, timeout: int = 30, max_output: int = MAX_CMD_OUTPUT) -> dict[str, Any]:
    return run(["git", *args], repo, timeout=timeout, max_output=max_output)


def ok(res: dict[str, Any]) -> bool:
    return res["returncode"] == 0


def stdout(res: dict[str, Any]) -> str:
    return res.get("stdout", "")


def md_code(text: str, lang: str = "") -> str:
    text = text.rstrip()
    return f"```{lang}\n{text}\n```" if text else "*(no output)*"


def short(s: str, n: int = 12) -> str:
    return s[:n] if s else ""


def parse_isoish(s: str) -> dt.datetime:
    # Used only for validating CLI input; Git parses the actual --since/--until.
    for fmt in ("%Y-%m-%d %H:%M", "%Y-%m-%d %H:%M:%S", "%Y-%m-%d"):
        try:
            return dt.datetime.strptime(s, fmt)
        except ValueError:
            pass
    raise argparse.ArgumentTypeError(
        f"Invalid date/time {s!r}; use YYYY-MM-DD HH:MM"
    )


def unique(seq: Iterable[str]) -> list[str]:
    seen = set()
    out = []
    for x in seq:
        if x not in seen:
            seen.add(x)
            out.append(x)
    return out


def extract_context(text: str, keywords: list[str], radius: int = 7, max_lines: int = 600) -> str:
    lines = text.splitlines()
    hit_idx = []
    low_kw = [k.lower() for k in keywords]
    for i, line in enumerate(lines):
        ll = line.lower()
        if any(k in ll for k in low_kw):
            hit_idx.append(i)
    if not hit_idx:
        return ""
    wanted = set()
    for i in hit_idx:
        for j in range(max(0, i - radius), min(len(lines), i + radius + 1)):
            wanted.add(j)
    ordered = sorted(wanted)
    chunks = []
    prev = None
    for i in ordered:
        if prev is not None and i > prev + 1:
            chunks.append("...")
        chunks.append(lines[i])
        prev = i
        if len(chunks) >= max_lines:
            chunks.append("...[filtered diff truncated]...")
            break
    return "\n".join(chunks)


def extract_trainer_block(text: str, trainer_id: str, max_lines: int = 120) -> str:
    lines = text.splitlines()
    start = None
    for i, line in enumerate(lines):
        if trainer_id in line:
            start = i
            break
    if start is None:
        return ""
    # trainers.party blocks usually start with === TRAINER_X === and end at next ===
    # generated .h blocks differ, so stop on obvious next trainer marker or after max_lines.
    out = []
    for j in range(start, min(len(lines), start + max_lines)):
        if j > start:
            line = lines[j]
            if re.match(r"^\s*===\s+TRAINER_", line):
                break
            if re.match(r"^\s*\[TRAINER_[A-Z0-9_]+\]\s*=", line) and trainer_id not in line:
                break
        out.append(lines[j])
    return "\n".join(out).rstrip()


def get_file_at_ref(repo: Path, ref: str, path: str) -> str:
    res = git(repo, "show", f"{ref}:{path}", timeout=20)
    return stdout(res) if ok(res) else ""


def changed_files_for_commit(repo: Path, commit: str) -> list[str]:
    res = git(repo, "diff-tree", "--no-commit-id", "--name-only", "-r", commit)
    return [x.strip() for x in stdout(res).splitlines() if x.strip()]


def commit_score(repo: Path, commit: str) -> tuple[int, list[str], list[str]]:
    files = changed_files_for_commit(repo, commit)
    score = 0
    reasons = []
    for f in files:
        if f in FILE_WEIGHTS:
            w = FILE_WEIGHTS[f]
            score += w
            reasons.append(f"{f} (+{w})")
    diff = stdout(git(repo, "show", "--format=", "--unified=0", commit, "--", *SUSPECT_FILES, timeout=35))
    found_kw = []
    for kw, w in KEYWORD_WEIGHTS.items():
        if kw.lower() in diff.lower():
            score += w
            found_kw.append(kw)
            reasons.append(f"{kw} (+{w})")
    return score, reasons, found_kw


def collect_repo_snapshot(repo: Path) -> dict[str, Any]:
    data: dict[str, Any] = {}
    commands = {
        "top_level": ["rev-parse", "--show-toplevel"],
        "head": ["rev-parse", "HEAD"],
        "branch": ["branch", "--show-current"],
        "status": ["status", "--porcelain=v2", "--branch"],
        "remotes": ["remote", "-v"],
        "recent_head_log": ["log", "-20", "--date=iso-local", "--format=%H%x09%ad%x09%an%x09%s"],
        "staged_name_status": ["diff", "--cached", "--name-status"],
        "unstaged_name_status": ["diff", "--name-status"],
    }
    for key, args in commands.items():
        data[key] = git(repo, *args, timeout=20)
    return data


def collect_reflog(repo: Path, start: str, end: str) -> dict[str, Any]:
    # Git reflog --since/--until support varies slightly; collect a bounded date range.
    fmt = "%H%x09%gD%x09%gd%x09%cd%x09%gs"
    res = git(
        repo,
        "reflog", "--all",
        f"--since={start}", f"--until={end}",
        "--date=iso-local",
        f"--format={fmt}",
        timeout=30,
    )
    entries = []
    for line in stdout(res).splitlines():
        parts = line.split("\t", 4)
        if len(parts) == 5:
            entries.append({
                "hash": parts[0],
                "reflog_selector": parts[1],
                "reflog_short": parts[2],
                "date": parts[3],
                "message": parts[4],
            })
    sync = [e for e in entries if any(w in e["message"].lower() for w in SYNC_WORDS)]
    return {"raw": res, "entries": entries, "sync_like": sync}


def collect_window_commits(repo: Path, start: str, end: str) -> list[dict[str, Any]]:
    fmt = "%H%x09%P%x09%ad%x09%an%x09%s"
    res = git(
        repo,
        "log", "--all",
        f"--since={start}", f"--until={end}",
        "--date=iso-local",
        f"--format={fmt}",
        "--",
        *SUSPECT_FILES,
        timeout=40,
    )
    commits = []
    for line in stdout(res).splitlines():
        parts = line.split("\t", 4)
        if len(parts) != 5:
            continue
        h, parents, date, author, subject = parts
        score, reasons, kws = commit_score(repo, h)
        commits.append({
            "hash": h,
            "parents": parents.split(),
            "date": date,
            "author": author,
            "subject": subject,
            "score": score,
            "reasons": reasons,
            "keywords": kws,
            "files": changed_files_for_commit(repo, h),
        })
    commits.sort(key=lambda x: (-x["score"], x["date"]))
    return commits[:MAX_CANDIDATES]


def collect_current_grep(repo: Path) -> dict[str, Any]:
    patterns = [
        "RadioPriority_MaintainBgm",
        "CreateNPCTrainerParty",
        "GetTrainerBattleType",
        "BATTLE_TYPE_DOUBLE",
        "BATTLE_TYPE_TWO_OPPONENTS",
        "InitBattleControllers",
        "BattleInitAllSprites",
        "gBattleControllerExecFlags",
        "gBattlerPartyIndexes",
    ]
    out = {}
    for pat in patterns:
        out[pat] = git(repo, "grep", "-n", "-I", pat, "--", *SUSPECT_FILES, timeout=20)
    return out


def collect_known_trainers(repo: Path, refs: list[str]) -> dict[str, Any]:
    result: dict[str, Any] = {"current": {}, "historical": {}}
    current_paths = [
        "src/data/trainers.party",
        "src/data/trainers.h",
    ]
    for path in current_paths:
        p = repo / path
        if p.exists():
            try:
                text = p.read_text(encoding="utf-8", errors="replace")
            except Exception:
                text = ""
            for tid in KNOWN_TRAINERS:
                block = extract_trainer_block(text, tid)
                if block:
                    result["current"].setdefault(tid, {})[path] = block

    for ref in refs:
        refdata: dict[str, Any] = {}
        for path in current_paths:
            text = get_file_at_ref(repo, ref, path)
            if not text:
                continue
            for tid in KNOWN_TRAINERS:
                block = extract_trainer_block(text, tid)
                if block:
                    refdata.setdefault(tid, {})[path] = block
        if refdata:
            result["historical"][ref] = refdata
    return result


def collect_scripts_for_trainers(repo: Path) -> dict[str, Any]:
    out = {}
    for tid in KNOWN_TRAINERS:
        # Search data + scripts for exact trainer IDs; no modification.
        out[tid] = git(
            repo, "grep", "-n", "-I", "-C", "4", tid, "--", "data", "src/data",
            timeout=25, max_output=100_000
        )
    return out


def candidate_pairs_from_reflog(reflog: dict[str, Any]) -> list[tuple[str, str, str]]:
    entries = reflog["entries"]
    pairs = []
    # Reflog is newest first. For sync-like event at i, older state is i+1 if present.
    for i, e in enumerate(entries):
        if any(w in e["message"].lower() for w in SYNC_WORDS):
            if i + 1 < len(entries):
                older = entries[i + 1]["hash"]
                newer = e["hash"]
                if older != newer:
                    pairs.append((older, newer, e["message"]))
    return unique(pairs)  # type: ignore[arg-type]


def collect_pair_diff(repo: Path, old: str, new: str) -> dict[str, Any]:
    name_status = git(repo, "diff", "--name-status", old, new, "--", *SUSPECT_FILES, timeout=25)
    diff = git(
        repo, "diff", "--find-renames", "--find-copies", "--unified=5",
        old, new, "--", *SUSPECT_FILES, timeout=45, max_output=600_000
    )
    filtered = extract_context(stdout(diff), BATTLE_KEYWORDS, radius=8, max_lines=MAX_DIFF_LINES_PER_COMMIT)
    return {
        "old": old,
        "new": new,
        "name_status": name_status,
        "full_diff_meta": {
            "returncode": diff["returncode"],
            "truncated": diff["truncated"],
            "stderr": diff["stderr"],
        },
        "filtered_diff": filtered,
    }


def collect_candidate_commit_detail(repo: Path, commits: list[dict[str, Any]]) -> dict[str, Any]:
    details = {}
    for c in commits[:15]:
        h = c["hash"]
        stat = git(repo, "show", "--stat", "--oneline", "--decorate", h, "--", *SUSPECT_FILES, timeout=25)
        full = git(repo, "show", "--format=fuller", "--unified=5", h, "--", *SUSPECT_FILES, timeout=40, max_output=500_000)
        filtered = extract_context(stdout(full), BATTLE_KEYWORDS, radius=8, max_lines=MAX_DIFF_LINES_PER_COMMIT)
        details[h] = {
            "stat": stat,
            "filtered_diff": filtered,
        }
    return details


def write_report(
    repo: Path,
    out_dir: Path,
    args: argparse.Namespace,
    snapshot: dict[str, Any],
    reflog: dict[str, Any],
    commits: list[dict[str, Any]],
    current_grep: dict[str, Any],
    trainer_data: dict[str, Any],
    trainer_scripts: dict[str, Any],
    pair_diffs: list[dict[str, Any]],
    commit_details: dict[str, Any],
) -> tuple[Path, Path]:
    report = []
    report.append("# HLW Double-Battle Forensics Report")
    report.append("")
    report.append(f"- Generated: `{dt.datetime.now().astimezone().isoformat(timespec='seconds')}`")
    report.append(f"- Repo: `{repo}`")
    report.append(f"- Window: `{args.window_start}` → `{args.window_end}`")
    report.append("- Collector is read-only with respect to tracked repository contents.")
    report.append("")

    head = stdout(snapshot["head"]).strip()
    branch = stdout(snapshot["branch"]).strip()
    report += [
        "## 1. Current repository state",
        "",
        f"- Branch: `{branch or '(detached)'}`",
        f"- HEAD: `{head}`",
        "",
        "### `git status --porcelain=v2 --branch`",
        md_code(stdout(snapshot["status"])),
        "",
        "### Staged changes",
        md_code(stdout(snapshot["staged_name_status"])),
        "",
        "### Unstaged changes",
        md_code(stdout(snapshot["unstaged_name_status"])),
        "",
    ]

    report += [
        "## 2. Reflog inside the suspected first-bad window",
        "",
        "This is the most important section for reconstructing **last known good → first known bad**.",
        "",
    ]
    if reflog["entries"]:
        for e in reflog["entries"]:
            marker = " **<-- sync-like**" if e in reflog["sync_like"] else ""
            report.append(
                f"- `{short(e['hash'])}` `{e['date']}` `{e['reflog_short']}` — {e['message']}{marker}"
            )
    else:
        report.append("*(No reflog entries found in this window.)*")
    report.append("")

    report += ["## 3. Auto-detected before/after sync pairs", ""]
    if pair_diffs:
        for i, pd in enumerate(pair_diffs, 1):
            report.append(f"### Pair {i}: `{short(pd['old'])}` → `{short(pd['new'])}`")
            report.append("")
            report.append("Changed suspect files:")
            report.append(md_code(stdout(pd["name_status"])))
            report.append("")
            report.append("Keyword-focused diff:")
            report.append(md_code(pd["filtered_diff"], "diff"))
            report.append("")
    else:
        report.append("*(No usable adjacent reflog sync pair auto-detected.)*")
        report.append("")

    report += [
        "## 4. Commits in the window touching battle/randomizer/radio/trainer code",
        "",
        "Heuristic score is only for triage; it is not a conclusion.",
        "",
    ]
    if commits:
        for c in commits:
            reasons = ", ".join(c["reasons"][:10]) or "no weighted hits"
            report.append(
                f"- **{c['score']:>3}** `{short(c['hash'])}` `{c['date']}` — {c['subject']}  \n"
                f"  Reasons: {reasons}"
            )
    else:
        report.append("*(No matching commits in the window.)*")
    report.append("")

    report += ["## 5. Top candidate commit diffs", ""]
    for c in commits[:15]:
        h = c["hash"]
        det = commit_details.get(h, {})
        report.append(f"### `{h}` — {c['subject']} (score {c['score']})")
        report.append("")
        report.append(md_code(stdout(det.get("stat", {}))))
        report.append("")
        report.append("Keyword-focused diff:")
        report.append(md_code(det.get("filtered_diff", ""), "diff"))
        report.append("")

    report += [
        "## 6. Current code: critical symbol locations",
        "",
    ]
    for pat, res in current_grep.items():
        report.append(f"### `{pat}`")
        report.append(md_code(stdout(res)))
        report.append("")

    report += [
        "## 7. Known trainer definitions (current)",
        "",
        "Controls: Tsubaki = known working double; Janja/Winston = known broken doubles; REN = first observed crash context.",
        "",
    ]
    if trainer_data["current"]:
        for tid in KNOWN_TRAINERS:
            data = trainer_data["current"].get(tid)
            if not data:
                continue
            report.append(f"### `{tid}`")
            for path, block in data.items():
                report.append(f"From `{path}`:")
                report.append(md_code(block))
            report.append("")
    else:
        report.append("*(No current known-trainer blocks found.)*")
        report.append("")

    if trainer_data["historical"]:
        report += ["## 8. Known trainer definitions at historical refs", ""]
        for ref, refs_data in trainer_data["historical"].items():
            report.append(f"### Ref `{ref}`")
            for tid in KNOWN_TRAINERS:
                data = refs_data.get(tid)
                if not data:
                    continue
                report.append(f"#### `{tid}`")
                for path, block in data.items():
                    report.append(f"`{path}`:")
                    report.append(md_code(block))
            report.append("")

    report += ["## 9. Script references for known trainers", ""]
    for tid, res in trainer_scripts.items():
        report.append(f"### `{tid}`")
        report.append(md_code(stdout(res)))
        report.append("")

    # Current dirty diff focused on keywords
    staged_diff = git(repo, "diff", "--cached", "--unified=5", "--", *SUSPECT_FILES, timeout=35, max_output=500_000)
    unstaged_diff = git(repo, "diff", "--unified=5", "--", *SUSPECT_FILES, timeout=35, max_output=500_000)
    report += [
        "## 10. Current staged/unstaged suspect diffs",
        "",
        "### Staged (keyword-focused)",
        md_code(extract_context(stdout(staged_diff), BATTLE_KEYWORDS, radius=8, max_lines=900), "diff"),
        "",
        "### Unstaged (keyword-focused)",
        md_code(extract_context(stdout(unstaged_diff), BATTLE_KEYWORDS, radius=8, max_lines=900), "diff"),
        "",
    ]

    # Exact recent log for suspect files
    report += [
        "## 11. Recent suspect-file history",
        "",
        md_code(stdout(snapshot["recent_head_log"])),
        "",
        "## 12. What to send back",
        "",
        "Upload this `.md` report first. The `.json` file contains the raw command results if a section needs deeper inspection.",
        "",
        "The report intentionally does **not** try to patch anything. The next step should be chosen only after comparing the first-bad window and the known-good/bad trainer paths.",
    ]

    report_path = out_dir / "hlw_double_battle_forensics_report.md"
    report_path.write_text("\n".join(report), encoding="utf-8")

    raw = {
        "generated_at": dt.datetime.now().astimezone().isoformat(),
        "repo": str(repo),
        "args": vars(args),
        "snapshot": snapshot,
        "reflog": reflog,
        "commits": commits,
        "current_grep": current_grep,
        "trainer_data": trainer_data,
        "trainer_scripts": trainer_scripts,
        "pair_diffs": pair_diffs,
        "commit_details": commit_details,
    }
    raw_path = out_dir / "hlw_double_battle_forensics_raw.json"
    raw_path.write_text(json.dumps(raw, indent=2, ensure_ascii=False), encoding="utf-8")
    return report_path, raw_path


def main() -> int:
    ap = argparse.ArgumentParser(description="Read-only HLW double-battle forensic collector.")
    ap.add_argument("--window-start", default=DEFAULT_START, help='Git date, e.g. "2026-09-15 08:00"')
    ap.add_argument("--window-end", default=DEFAULT_END, help='Git date, e.g. "2026-09-15 12:00"')
    ap.add_argument("--out-dir", default=".", help="Directory for report files (default: repo root/current dir)")
    ap.add_argument("--repo", default=".", help="Path inside the Git repo (default: current directory)")
    args = ap.parse_args()

    # Validate human inputs early.
    parse_isoish(args.window_start)
    parse_isoish(args.window_end)

    start_path = Path(args.repo).expanduser().resolve()
    top = run(["git", "-C", str(start_path), "rev-parse", "--show-toplevel"], start_path if start_path.exists() else Path.cwd())
    if top["returncode"] != 0:
        print("ERROR: not inside a Git repository.", file=sys.stderr)
        print(top["stderr"], file=sys.stderr)
        return 2

    repo = Path(top["stdout"].strip()).resolve()
    out_dir = Path(args.out_dir).expanduser()
    if not out_dir.is_absolute():
        out_dir = (repo / out_dir).resolve()
    out_dir.mkdir(parents=True, exist_ok=True)

    print(f"[1/9] Repo: {repo}")
    print("[2/9] Capturing current repository state...")
    snapshot = collect_repo_snapshot(repo)

    print(f"[3/9] Reading reflog window {args.window_start} -> {args.window_end}...")
    reflog = collect_reflog(repo, args.window_start, args.window_end)

    print("[4/9] Ranking commits in the window...")
    commits = collect_window_commits(repo, args.window_start, args.window_end)

    print("[5/9] Inspecting current critical battle symbols...")
    current_grep = collect_current_grep(repo)

    pairs = candidate_pairs_from_reflog(reflog)
    # Limit to the most local sync-like transitions to avoid report explosion.
    pairs = pairs[:8]
    print(f"[6/9] Diffing {len(pairs)} auto-detected sync pair(s)...")
    pair_diffs = [collect_pair_diff(repo, old, new) for old, new, _msg in pairs]

    # Historical refs worth comparing trainer data against:
    hist_refs = []
    for old, new, _ in pairs[:4]:
        hist_refs.extend([old, new])
    for c in commits[:6]:
        hist_refs.append(c["hash"])
        if c["parents"]:
            hist_refs.append(c["parents"][0])
    hist_refs = unique(hist_refs)[:12]

    print("[7/9] Extracting known trainer/script controls...")
    trainer_data = collect_known_trainers(repo, hist_refs)
    trainer_scripts = collect_scripts_for_trainers(repo)

    print("[8/9] Extracting focused diffs for top candidate commits...")
    commit_details = collect_candidate_commit_detail(repo, commits)

    print("[9/9] Writing report...")
    report_path, raw_path = write_report(
        repo, out_dir, args, snapshot, reflog, commits,
        current_grep, trainer_data, trainer_scripts,
        pair_diffs, commit_details,
    )

    print()
    print("DONE. No tracked files were modified.")
    print(f"Report: {report_path}")
    print(f"Raw:    {raw_path}")
    print()
    print("Upload the Markdown report back to ChatGPT first.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
