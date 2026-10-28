#!/usr/bin/env python3
"""Verify the committed artifact graph that Git will send."""
import argparse
import io
import json
from pathlib import Path
import re
import subprocess
import sys
import tarfile
import tempfile

from canonical_release import verify_release
from working_source import verify_working


def git(root, *args):
    return subprocess.check_output(["git", "-C", str(root), *args])


def pushed_commits(root, lines):
    result = set()
    for line in lines:
        fields = line.split()
        if len(fields) != 4:
            raise ValueError("Git supplied an invalid push record.")
        value = fields[1]
        if not re.fullmatch(r"[0-9a-f]{40,64}", value):
            raise ValueError("Git supplied an invalid object identifier.")
        if set(value) == {"0"}:
            continue
        result.add(git(root, "rev-parse", value + "^{commit}").decode().strip())
    return sorted(result)


def verify_commits(root, commits):
    results = []
    for commit in commits:
        canonical = json.loads(git(root, "show", commit + ":CANONICAL.json"))
        directory = str(Path(canonical["manuscript_release"]["path"]).parent)
        paths = ["CANONICAL.json", "CITATION.cff", "DISTRIBUTION.json", "proof", directory, "release",
                 "tools", "RELEASE-WORKFLOW.md", ".githooks", ".github"]
        present = [path for path in paths if git(root, "ls-tree", "--name-only", commit, "--", path).strip()]
        with tempfile.TemporaryDirectory(prefix="canonical-push-") as folder:
            snapshot = Path(folder).resolve()
            raw = git(root, "archive", "--format=tar", commit, "--", *present)
            with tarfile.open(fileobj=io.BytesIO(raw), mode="r:") as archive:
                for member in archive:
                    target = (snapshot / member.name).resolve()
                    if not target.is_relative_to(snapshot) or not (member.isfile() or member.isdir()):
                        raise ValueError("The pushed release contains an unsupported archive entry.")
                    if member.isdir():
                        target.mkdir(parents=True, exist_ok=True)
                    else:
                        target.parent.mkdir(parents=True, exist_ok=True)
                        with archive.extractfile(member) as source:
                            target.write_bytes(source.read())
            report = verify_release(snapshot)
        results.append({"commit": commit, **report})
    return {"ok": all(item["ok"] for item in results), "commits": results}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--commit", action="append", default=[])
    args = parser.parse_args()
    try:
        commits = args.commit or pushed_commits(args.root, sys.stdin.read().splitlines())
        result = verify_commits(args.root, commits)
        result["working_source"] = verify_working(args.root)
        result["ok"] = result["ok"] and result["working_source"]["ok"]
        print(json.dumps(result, indent=2))
        return 0 if result["ok"] else 1
    except (OSError, ValueError, KeyError, subprocess.CalledProcessError) as error:
        print(json.dumps({"ok": False, "error": str(error)}))
        return 1


if __name__ == "__main__":
    sys.exit(main())
