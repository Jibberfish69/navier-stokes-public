#!/usr/bin/env python3
"""Link an external working manuscript to the canonical release gate."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys

from canonical_release import release_context, verify_release


def git(root, *args, required=True):
    result = subprocess.run(["git", "-C", str(root), *args], capture_output=True, text=True)
    if required and result.returncode:
        raise ValueError(result.stderr.strip() or "The Git operation failed.")
    return result.stdout.strip()


def verify_authority(authority_base, index):
    authority_base = Path(authority_base).resolve()
    changed = []
    for source_id, record in index.items():
        path = (authority_base / record["path"]).resolve()
        if not path.is_relative_to(authority_base) or not path.is_file() or hashlib.sha256(path.read_bytes()).hexdigest() != record.get("source_sha256"):
            changed.append(source_id)
    return {"ok": bool(index) and authority_base.is_dir() and not changed,
            "source_count": len(index), "changed": changed}


def verify_working(root, source_root=None, authority_root=None):
    release = verify_release(root, include_distribution=False)
    if not release["ok"]:
        return {"ok": False, "release_errors": release["errors"], "changed": [], "authority_changed": []}
    context = release_context(root)
    configured = source_root or git(root, "config", "--get", "canonical.sourceRoot", required=False)
    source = Path(configured).resolve() if configured else (root / context["manuscript_directory"]).resolve()
    changed = []
    for name, expected in context["inputs"].items():
        path = (source / name).resolve()
        if not path.is_relative_to(source) or not path.is_file() or hashlib.sha256(path.read_bytes()).hexdigest() != expected:
            changed.append(name)
    authorities = authority_root or git(root, "config", "--get", "canonical.authorityRoot", required=False)
    authority_changed = []
    authority_count = 0
    authority_ok = True
    if authorities:
        index = root / context["canonical"]["current_direct_custody"]
        result = verify_authority(authorities, json.loads(index.read_text()))
        authority_count, authority_changed, authority_ok = result["source_count"], result["changed"], result["ok"]
    return {"ok": not changed and authority_ok,
            "mode": "linked-working-master" if configured else "repository-master",
            "source_manifest_sha256": context["source_manifest_sha256"], "changed": changed,
            "authority_source_count": authority_count, "authority_changed": authority_changed}


def install(root, source_root=None, authority_root=None):
    hooks = git(root, "config", "--get", "core.hooksPath", required=False)
    if hooks and hooks != ".githooks":
        raise ValueError("An existing hook directory needs manual integration; it was preserved.")
    report = verify_working(root, source_root, authority_root)
    if not report["ok"]:
        raise ValueError("The working manuscript or governing sources differ from the release. Reconcile them before installation.")
    git(root, "config", "--local", "core.hooksPath", ".githooks")
    if source_root:
        git(root, "config", "--local", "canonical.sourceRoot", str(Path(source_root).resolve()))
    if authority_root:
        git(root, "config", "--local", "canonical.authorityRoot", str(Path(authority_root).resolve()))
    return {"ok": True, "hook": ".githooks/pre-push", "working_source": report["mode"]}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("command", choices=("verify", "install"))
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--source-root", type=Path)
    parser.add_argument("--authority-root", type=Path)
    args = parser.parse_args()
    try:
        result = install(args.root, args.source_root, args.authority_root) if args.command == "install" else verify_working(args.root, args.source_root, args.authority_root)
        print(json.dumps(result, indent=2))
        return 0 if result["ok"] else 1
    except (OSError, ValueError, KeyError) as error:
        print(json.dumps({"ok": False, "error": str(error)}))
        return 1


if __name__ == "__main__":
    sys.exit(main())
