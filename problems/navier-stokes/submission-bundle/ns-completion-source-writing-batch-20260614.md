# NS completion executor source-writing batch 2026-06-14

This lane consumed ns-human-pdf-source-writing-batch from ns-completion-engine.yaml.

The primary object is the problems/** human PDF source, not a proof-note queue or a finality gate. The lane reads the existing TeX/source architecture, selects a multi-section writing batch, writes around the installed formal derivations in plain textbook-grade prose, and records a targeted changed-section PDF check instead of spending a full CMI-finality reread on every small edit.

Current executor result: changed source-writing lane by materializing the batch contract. The next parent pass must either apply a source edit batch, name the exact page/section blocker, or consume math-supplier output that pays a PDF criticism or lands a CM face.
