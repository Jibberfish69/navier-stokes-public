#!/usr/bin/env python3
"""Record source-bound distribution evidence after an actual observation."""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import fcntl
import hashlib
import json
from pathlib import Path
import re
import sys
import tempfile
from urllib.parse import urlparse
from urllib.request import Request, urlopen

from canonical_release import CURRENT_STATES, DESTINATION_ARTIFACTS as EXPECTED, release_context, verify_release

DESTINATIONS = tuple(EXPECTED)
PUBLIC_HOSTS = {
    "github.com", "raw.githubusercontent.com", "media.githubusercontent.com",
    "api.figshare.com", "ndownloader.figshare.com", "s3-eu-west-1.amazonaws.com",
    "s3.amazonaws.com",
}


def utc_now():
    return datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")


def canonical_bytes(value):
    return (json.dumps(value, ensure_ascii=False, indent=2) + "\n").encode()


def digest(raw):
    return hashlib.sha256(raw).hexdigest()


def atomic_write(path, raw):
    with tempfile.NamedTemporaryFile(dir=path.parent, prefix=".canonical-", suffix=".tmp", delete=False) as output:
        name = Path(output.name)
        output.write(raw)
    try:
        name.replace(path)
    finally:
        name.unlink(missing_ok=True)


def reset_distribution(source_manifest_sha256):
    """Start a new release with no inherited delivery claims."""
    return {
        "format": "navier-stokes-distribution/1",
        "source_manifest_sha256": source_manifest_sha256,
        "required_destinations": list(DESTINATIONS),
        "destinations": {
            name: {
                "status": "pending",
                "source_manifest_sha256": source_manifest_sha256,
                "expected_artifacts": EXPECTED[name],
                "reason": "This release requires a new destination observation.",
            }
            for name in DESTINATIONS
        },
    }


def local_path(root, relative):
    result = (root / relative).resolve()
    if not result.is_relative_to(root.resolve()):
        raise ValueError("A release path leaves the repository.")
    return result


def distribution_path(root, context):
    value = context["canonical"].get("distribution", "DISTRIBUTION.json")
    if isinstance(value, dict):
        value = value["path"]
    return local_path(root, value)


def checked_context(root):
    report = verify_release(root, include_distribution=False)
    if not report["ok"]:
        raise ValueError("The source or artifact graph is inconsistent. Repair it first.")
    return release_context(root)


def public_url(value, allow_query=False):
    p = urlparse(value)
    allowed = p.hostname in PUBLIC_HOSTS or (
        p.hostname is not None and p.hostname.endswith(".s3.amazonaws.com")
    )
    if p.scheme != "https" or not allowed or p.username or p.password or p.fragment or (p.query and not allow_query):
        raise ValueError("Use an HTTPS URL from the declared public destination.")
    return value


def observe_download(url, limit=134217728):
    public_url(url)
    request = Request(url, headers={"User-Agent": "NS-canonical-release/1"})
    h = hashlib.sha256()
    size = 0
    with urlopen(request, timeout=60) as response:
        final_url = public_url(response.geturl(), allow_query=True)
        while block := response.read(1048576):
            size += len(block)
            if size > limit:
                raise ValueError("The public artifact exceeds the download limit.")
            h.update(block)
    return {"url": url, "resolved_host": urlparse(final_url).hostname, "sha256": h.hexdigest(), "bytes": size}


def pinned_git_commit(url):
    p = urlparse(url)
    if p.scheme != "https" or p.username or p.password or p.query or p.fragment:
        raise ValueError("Use a public Git artifact URL without credentials or query parameters.")
    if p.hostname == "raw.githubusercontent.com":
        pattern = r"^/Jibberfish69/navier-stokes-public/([0-9a-f]{40})/"
    elif p.hostname == "github.com":
        pattern = r"^/Jibberfish69/navier-stokes-public/(?:raw|blob)/([0-9a-f]{40})/"
    else:
        raise ValueError("Use a pinned artifact URL in the declared Git repository.")
    match = re.match(pattern, p.path)
    if not match:
        raise ValueError("The Git artifact URL requires a full commit identifier.")
    return match[1]


def expected_match(context, name, observed):
    target = context["artifacts"][name]
    if observed["sha256"] != target["sha256"]:
        raise ValueError(f"The downloaded {name} does not match this release.")
    if "bytes" in target and observed["bytes"] != target["bytes"]:
        raise ValueError(f"The downloaded {name} has a different byte count.")


def update_citation(root, receipt):
    """Select citation data from verified public observations."""
    if receipt["destination"] not in {"git", "figshare"}:
        return
    path = root / "CITATION.cff"
    if not path.exists():
        return
    if receipt["destination"] == "figshare":
        doi = receipt["observation"].get("doi")
        if not doi:
            raise ValueError("The published Figshare record lacks its DOI.")
        url = "https://doi.org/" + doi
    else:
        context = release_context(root)
        ledger = json.loads(distribution_path(root, context).read_text())
        if ledger["destinations"].get("figshare", {}).get("status") in CURRENT_STATES:
            return
        doi = None
        url = receipt["artifacts"]["native_pdf"]["url"]
    lines = path.read_text().splitlines()
    start = lines.index("preferred-citation:") + 1
    end = next((i for i in range(start, len(lines)) if lines[i] and not lines[i].startswith(" ") and not lines[i].startswith("#")), len(lines))
    body = [line for line in lines[start:end] if not line.startswith(("  doi:", "  url:"))]
    body += ["  url: " + url]
    if doi:
        body += ["  doi: " + doi]
    lines[start:end] = body
    atomic_write(path, ("\n".join(lines) + "\n").encode())


def write_observation(root, context, destination, receipt):
    ledger_path = distribution_path(root, context)
    with ledger_path.with_suffix(".lock").open("a") as lock:
        fcntl.flock(lock, fcntl.LOCK_EX)
        return _write_observation(root, context, destination, receipt)


def _write_observation(root, context, destination, receipt):
    ledger_path = distribution_path(root, context)
    ledger = json.loads(ledger_path.read_text()) if ledger_path.exists() else reset_distribution(context["source_manifest_sha256"])
    if ledger["source_manifest_sha256"] != context["source_manifest_sha256"]:
        raise ValueError("Reset destination records during release preparation.")
    latest = checked_context(root)
    if latest["source_manifest_sha256"] != context["source_manifest_sha256"] or latest["artifacts"] != context["artifacts"]:
        raise ValueError("The release changed during the observation. Verify the new release.")
    raw = canonical_bytes(receipt)
    name = f"{destination}-{context['source_manifest_sha256'][:12]}-{digest(raw)[:12]}.json"
    relative = "release/receipts/" + name
    path = local_path(root, relative)
    path.parent.mkdir(parents=True, exist_ok=True)
    existed = path.exists()
    if existed and path.read_bytes() != raw:
        raise ValueError("An immutable observation path contains different bytes.")
    if not existed:
        path.write_bytes(raw)
    previous = ledger["destinations"][destination]
    ledger["destinations"][destination] = {
        "status": "verified-current",
        "source_manifest_sha256": context["source_manifest_sha256"],
        "expected_artifacts": EXPECTED[destination],
        "artifacts": receipt["artifacts"],
        "verified_at_utc": receipt["verified_at_utc"],
        "evidence": {"path": relative, "sha256": digest(raw), "mode": receipt["mode"]},
    }
    if previous.get("evidence"):
        ledger["destinations"][destination]["previous_evidence"] = previous["evidence"]
    old = ledger_path.read_bytes() if ledger_path.exists() else None
    citation_path = root / "CITATION.cff"
    old_citation = citation_path.read_bytes() if citation_path.exists() else None
    try:
        atomic_write(ledger_path, canonical_bytes(ledger))
        update_citation(root, receipt)
        report = verify_release(root)
        if not report["ok"]:
            raise ValueError("The observation failed the canonical release gate.")
    except Exception:
        if old is None:
            ledger_path.unlink()
        else:
            atomic_write(ledger_path, old)
        if old_citation is not None:
            atomic_write(citation_path, old_citation)
        if not existed:
            path.unlink(missing_ok=True)
        raise
    return {"destination": destination, "status": "verified-current", "receipt": relative}


def record_download(root, destination, urls, version=None):
    context = checked_context(root)
    if set(urls) != set(EXPECTED[destination]):
        raise ValueError("Provide every artifact required by this destination.")
    details = {}
    if destination == "git":
        commits = {pinned_git_commit(value) for value in urls.values()}
        if len(commits) != 1:
            raise ValueError("Use one Git commit for all destination artifacts.")
        details["commit"] = commits.pop()
    elif destination == "figshare":
        if version is None:
            raise ValueError("Provide the observed published Figshare version.")
        article_id = context["canonical"]["figshare_sync"]["article_id"]
        api_url = f"https://api.figshare.com/v2/articles/{article_id}"
        with urlopen(Request(api_url, headers={"User-Agent": "NS-canonical-release/1"}), timeout=60) as response:
            article = json.load(response)
        if article.get("version") != version:
            raise ValueError("The observed Figshare version is not its latest public version.")
        if article.get("doi") != f"10.6084/m9.figshare.{article_id}.v{version}":
            raise ValueError("The published Figshare DOI does not identify that article version.")
        file = next((f for f in article.get("files", []) if f.get("download_url") == urls["native_pdf"]), None)
        if file is None:
            raise ValueError("The PDF URL is absent from the current Figshare record.")
        details = {"article_id": article_id, "version": version, "file_id": file["id"], "metadata_url": api_url, "doi": article.get("doi")}
    artifacts = {}
    for name, url in urls.items():
        observed = observe_download(url)
        expected_match(context, name, observed)
        artifacts[name] = observed
    receipt = {
        "format": "navier-stokes-destination-observation/1", "mode": "download-verified",
        "destination": destination, "source_manifest_sha256": context["source_manifest_sha256"],
        "verified_at_utc": utc_now(), "artifacts": artifacts, "observation": details,
    }
    return write_observation(root, context, destination, receipt)


def record_owner_evidence(root, destination, evidence_path):
    context = checked_context(root)
    raw = evidence_path.read_bytes()
    evidence = json.loads(raw)
    if evidence.get("mode") != "connector-verified" or evidence.get("observation") != "read":
        raise ValueError("The owner must supply evidence from an actual connector read.")
    if not evidence.get("service") or not evidence.get("verified_at_utc"):
        raise ValueError("The owner evidence requires a service and observation time.")
    if evidence.get("source_manifest_sha256") != context["source_manifest_sha256"]:
        raise ValueError("The owner evidence belongs to another source release.")
    if set(evidence.get("artifacts", {})) != set(EXPECTED[destination]):
        raise ValueError("The owner evidence lacks required release artifacts.")
    artifacts = {}
    for name, supplied in evidence["artifacts"].items():
        if supplied.get("sha256") != context["artifacts"][name]["sha256"]:
            raise ValueError("The owner evidence identifies another artifact.")
        artifacts[name] = {"sha256": supplied["sha256"]}
        if supplied.get("url"):
            pinned_git_commit(supplied["url"])
            observed = observe_download(supplied["url"])
            expected_match(context, name, observed)
            artifacts[name] = observed
    public = {"service": evidence["service"], "observation": "read", "owner_evidence_sha256": digest(raw)}
    if destination == "rob_email":
        if evidence.get("delivery_status") != "sent" or "url" not in artifacts["custody_zip"]:
            raise ValueError("Email evidence requires a sent message and a verified immutable package link.")
        public["delivery_status"] = "sent"
    else:
        required = {name: value for name, value in context["inputs"].items() if name in ("main.tex", "references.tex") or name.startswith(("parts/unforced/", "parts/forced/"))}
        if evidence.get("source_inputs") != required:
            raise ValueError("The reader evidence does not match both approved parts of the canonical master.")
        if not evidence.get("selected_library_sha256"):
            raise ValueError("The reader evidence requires its selected library identity.")
        public["selected_library_sha256"] = evidence["selected_library_sha256"]
        public["source_inputs"] = required
        public["scope"] = "canonical-unforced-and-forced-master"
    receipt = {
        "format": "navier-stokes-destination-observation/1", "mode": "connector-verified",
        "destination": destination, "source_manifest_sha256": context["source_manifest_sha256"],
        "verified_at_utc": evidence["verified_at_utc"], "artifacts": artifacts, **public,
    }
    return write_observation(root, context, destination, receipt)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[1])
    sub = parser.add_subparsers(dest="command", required=True)
    status = sub.add_parser("status")
    status.add_argument("--require-synchronized", action="store_true")
    record = sub.add_parser("record-download")
    record.add_argument("--destination", choices=("git", "figshare"), required=True)
    record.add_argument("--artifact", action="append", default=[], metavar="KIND=URL")
    record.add_argument("--figshare-version", type=int)
    owner = sub.add_parser("record-owner-evidence")
    owner.add_argument("--destination", choices=("rob_reader", "rob_email"), required=True)
    owner.add_argument("--evidence", type=Path, required=True)
    args = parser.parse_args()
    try:
        if args.command == "status":
            report = verify_release(args.root, require_synchronized=args.require_synchronized)
            print(json.dumps(report, indent=2))
            return 0 if report["ok"] else 1
        if args.command == "record-download":
            urls = {}
            for item in args.artifact:
                name, url = item.split("=", 1)
                if name in urls:
                    raise ValueError("Each artifact requires one URL.")
                urls[name] = url
            result = record_download(args.root, args.destination, urls, args.figshare_version)
        else:
            result = record_owner_evidence(args.root, args.destination, args.evidence)
        print(json.dumps(result, indent=2))
        return 0
    except (KeyError, ValueError, OSError) as error:
        print(json.dumps({"ok": False, "error": str(error)}))
        return 1


if __name__ == "__main__":
    sys.exit(main())
