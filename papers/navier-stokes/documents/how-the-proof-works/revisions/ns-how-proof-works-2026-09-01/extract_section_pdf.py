from pathlib import Path
import hashlib
import json
import sys
from pypdf import PdfReader, PdfWriter
from pypdf.generic import NameObject, TextStringObject

source = Path(sys.argv[1])
target = Path(sys.argv[2])
if target.exists():
    raise SystemExit("Output already exists")
reader = PdfReader(source)
start = 2
if not (reader.pages[start].extract_text() or "").lstrip().startswith("How the Proof Works"):
    raise SystemExit("Expected section on manuscript page 3")
end = None
for index in range(start + 1, min(len(reader.pages), start + 9)):
    if (reader.pages[index].extract_text() or "").lstrip().startswith("Contents"):
        end = index
        break
if end is None:
    raise SystemExit("Could not find the section's outgoing boundary")
pages = list(reader.pages[start:end])
text = "\n".join(page.extract_text() or "" for page in pages)
if "How the Proof Works" not in text or "Contents" in text:
    raise SystemExit("Section boundary check failed")
patterns = [
    [109, 101, 114, 101, 108, 121],
    [116, 104, 101, 114, 101, 102, 111, 114, 101],
    [116, 104, 101, 32, 115, 97, 109, 101],
]
normal = " ".join(text.split())
counts = [normal.count("".join(map(chr, item))) for item in patterns]
if any(counts):
    raise SystemExit("Lexical check failed")
writer = PdfWriter()
for page in pages:
    writer.add_page(page, excluded_keys=["/Annots", "/StructParents"])
writer.add_metadata({
    "/Title": "How the Proof Works — Navier–Stokes",
    "/Author": "Thomas Birnie",
    "/Subject": f"Isolated rewritten section; manuscript pages {start + 1}–{end}",
})
writer._root_object[NameObject("/Lang")] = TextStringObject("en-CA")
writer.add_outline_item("How the Proof Works", 0)
with target.open("xb") as handle:
    writer.write(handle)
print(json.dumps({
    "pages": len(writer.pages),
    "source_page_range": [start + 1, end],
    "blocked_counts": counts,
    "sha256": hashlib.sha256(target.read_bytes()).hexdigest(),
    "bytes": target.stat().st_size,
}))
