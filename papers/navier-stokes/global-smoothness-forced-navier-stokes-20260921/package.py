#!/usr/bin/env python3
"""Build a self-contained release archive for the forced manuscript."""

from hashlib import sha256
import json
from pathlib import Path
import re
from zipfile import ZIP_DEFLATED, ZipFile

ROOT = Path(__file__).resolve().parent
PDF = "global-smoothness-forced-navier-stokes.pdf"
SUPPORT = ("README.md", "DERIVATION-ORDER.md", "Makefile", "package.py")
PREFIX = "global-smoothness-forced-navier-stokes"


def main() -> None:
    tex_files = tuple(sorted(path.name for path in ROOT.glob("*.tex")))
    files = (PDF, *tex_files, *SUPPORT)
    payload = {name: (ROOT / name).read_bytes() for name in files}

    assert payload[PDF].startswith(b"%PDF-"), "Reader PDF is missing or invalid"
    source = payload["main.tex"].decode("utf-8")
    complete_source = "\n".join(payload[name].decode("utf-8") for name in tex_files)
    inputs = re.findall(r"\\input\{([^}]+)\}", source)
    for name in inputs:
        assert name in tex_files, f"Missing included source: {name}"
    assert "Forced Three-Dimensional" in source
    assert r"\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u+f" in complete_source

    hashes = {name: sha256(data).hexdigest() for name, data in payload.items()}
    checksums = "".join(f"{hashes[name]}  {name}\n" for name in files).encode()
    payload["SHA256SUMS"] = checksums

    destination = ROOT / "dist" / f"{PREFIX}.zip"
    destination.parent.mkdir(exist_ok=True)
    with ZipFile(destination, "w", compression=ZIP_DEFLATED) as archive:
        for name, data in payload.items():
            archive.writestr(f"{PREFIX}/{name}", data)

    with ZipFile(destination) as archive:
        assert archive.testzip() is None, "Archive integrity check failed"
        for name, data in payload.items():
            assert archive.read(f"{PREFIX}/{name}") == data, name

    print(json.dumps({
        "archive": str(destination),
        "files": len(payload),
        "sha256": sha256(destination.read_bytes()).hexdigest(),
        "status": "publication package prepared",
    }))


if __name__ == "__main__":
    main()
