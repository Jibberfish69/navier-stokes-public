# Navier-Stokes Global Regularity Paper Workspace

This is a machine-only autonomous paper factory for Clay-ready manuscript construction.

Workspace layout:

- `manuscript/human/` is a legacy path name; inside `papers/**` it is machine-owned.
- `manuscript/generated/` is the machine-owned generated manuscript area.
- `context/generated/` is the machine-owned paper package from the brain/live edge.
- `build/` is for machine compile output and packaging scratch.
- `review/` is for machine referee notes and delivery checks.

Theorem authority and human opening-phase work stay outside this paper workspace. This workspace reads upstream material as context and does not silently write back into it.

Codex owns the manuscript design in this workspace. The final paper shape, proof route, section order, reader path, and exposition standards are paper-worker decisions inside `papers/navier-stokes/**`; upstream `problems/navier-stokes/**` material is evidence and authority context, not a template that must be copied.

When the upstream material is not enough to complete the Clay paper, the paper worker keeps the PDF evolving honestly: it writes the verified paper up to the frontier, attacks missing proof pieces here, integrates solved results when earned, and records exact unresolved theorem blockers while Clay readiness remains false.

The concrete operating loop is in `review/codex-only-paper-operating-loop.md`.
