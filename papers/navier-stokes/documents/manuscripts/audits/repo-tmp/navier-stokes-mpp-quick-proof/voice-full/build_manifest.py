import hashlib
import json
from pathlib import Path


source_path = Path(
    "/Users/thomasbirnie/.codex/attachments/4e08ccc5-e75e-402e-b523-1efba9dd559f/pasted-text.txt"
)
output_path = Path(__file__).with_name("content-manifest.json")
text = source_path.read_text(encoding="utf-8")

markers = [
    ("core-chain", "Yes. The clean derivation is:"),
    ("one-history", "### 1. Initial datum"),
    ("derivative-tower", "### 2. The original equation"),
    ("rectangles-intersection", "### 3. Finite rectangles"),
    ("master-estimate", "## 4. The intersection gives"),
    ("uniform-sobolev", "### Uniform Sobolev control"),
    ("serrin", "### Serrin estimates"),
    ("critical-endpoint", "### Critical endpoint"),
    ("vorticity-action", "### BKM / vorticity action"),
    ("critical-height", "### Critical height"),
    ("dyadic-shells", "### Dyadic shell summations"),
    ("pressure-estimates", "### Pressure estimates"),
    ("type-one", "### Type-I blow-up quantities"),
    ("ultraviolet-tail", "### Ultraviolet tail"),
    ("common-endpoint", "## 6. The intersection gives the endpoint"),
    ("endpoint-jet", "## 7. The original equation generates"),
    ("same-history-restart", "## 8. Clay closure"),
    ("closing-chain", "So the whole proof can be compressed to"),
]

positions = []
for content_id, marker in markers:
    start = text.index(marker)
    positions.append((content_id, start))

items = []
for index, (content_id, start) in enumerate(positions):
    end = positions[index + 1][1] if index + 1 < len(positions) else len(text)
    bounded = text[start:end]
    items.append(
        {
            "content_id": content_id,
            "text": bounded,
            "sha256": hashlib.sha256(bounded.encode("utf-8")).hexdigest(),
            "start": start,
            "end": end,
            "status": "established",
            "source": "live_input",
        }
    )

manifest = {
    "content_items": items,
    "protected_order": [content_id for content_id, _ in positions],
    "protected_distinctions": [],
}
output_path.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
