#!/usr/bin/env python3
"""Link an external working manuscript to the canonical release gate."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys

from canonical_release import release_context


def git(root, *args, required=True):
    result = subprocess.run(["git", "-C", str(root), *args], capture_output=True, text=True)
    if required and result.returncode:
        raise ValueError(result.stderr.strip() or "The Git operation failed.")
    return result.stdout.strip()


def verify_working(root, source_root=None):
    context = release_context(root)
    configured = source_root or git(root, "config", "--get", "canonical.sourceRoot", required=False)
    if not configured:
        return {"ok": True, "mode": "repository-master", "source_manifest_sha256": context["source_manifest_sha256"], "changed": []}
    source = Path(configured).resolve()
    changed = []
    for name, expected in context["inputs"].items():
        path = (source / name).resolve()
        if not path.is_relative_to(source) or not path.is_file() or hashlib.sha256(path.read_bytes()).hexdigest() != expected:
            changed.append(name)
    return {"ok": not changed, "mode": "linked-working-master", "source_manifest_sha256": context["source_manifest_sha256"], "changed": changed}


def install(root, source_root=None):
    hooks = git(root, "config", "--get", "core.hooksPath", required=False)
    if hooks and hooks != ".githooks":
        raise ValueError("An existing hook directory needs manual integration; it was preserved.")
    report = verify_working(root, source_root)
    if not report["ok"]:
        raise ValueError("The working manuscript differs from the current release. Prepare its release before installation.")
    git(root, "config", "--local", "core.hooksPath", ".githooks")
    if source_root:
        git(root, "config", "--local", "canonical.sourceRoot", str(Path(source_root).resolve()))
    return {"ok": True, "hook": ".githooks/pre-push", "working_source": report["mode"]}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("command", choices=("verify", "install"))
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--source-root", type=Path)
    args = parser.parse_args()
    try:
        result = install(args.root, args.source_root) if args.command == "install" else verify_working(args.root, args.source_root)
        print(json.dumps(result, indent=2))
        return 0 if result["ok"] else 1
    except (OSError, ValueError, KeyError) as error:
        print(json.dumps({"ok": False, "error": str(error)}))
        return 1


if __name__ == "__main__":
    sys.exit(main())
