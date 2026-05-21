# Promotion-surface repair tool-boundary note

## Status

Failed-attempt note for the redirected promotion-surface repair item.

The five requested theorem-work tasks have a persisted local completion packet:

```text
problems/navier-stokes/theorem-construction/mpp-five-task-aact-jump-readend-completion-rerun-20260504.md
sha1=97d4fe99e5814295ad6e3793b635aca8ef0c6b86
```

The frontier loop redirected from theorem-work into promotion/audit/reproducibility surface repair.

## Current promotion state observed

The proof assembly currently reports:

```yaml
remaining_open_obligations: []
math_frontier_open_count: 0
ready_for_submission: true
```

The source frontier currently reports:

```yaml
unresolved_obligations: []
live_theorem_edge_blocked_count: 0
```

The proof-promotion packet currently reports:

```yaml
release_approved: true
promotion_allowed: false
status: blocked
```

The remaining promotion blockers are generated or audit-hygiene surfaces:

```text
dependency-audit.yaml
gap-audit.yaml
consistency-audit.yaml
failure-mode-checks.yaml
release-manifest.yaml
```

## Tool-boundary verdict

The exposed MCP write path available in this session is theorem-note writing. That path can record theorem/audit notes inside theorem-construction. It cannot safely regenerate generated release, audit, dependency, failure-mode, or reproducibility manifest surfaces.

Therefore the redirected item cannot be completed through `write_theorem_note` alone.

## Safe repair instruction

A valid repair requires the repo-side promotion/audit generator or a dedicated writer for the affected generated surfaces. The needed regeneration target is:

```text
refresh dependency-audit.yaml
gap-audit.yaml
consistency-audit.yaml
failure-mode-checks.yaml
release-manifest.yaml
```

using the current theorem packet, source frontier, proof assembly, release decision, review verdict, and the five-task rerun note.

## Boundary

This note preserves the distinction between two states:

```text
local theorem-work loop: completed and written
promotion packet: blocked by generated audit/reproducibility surfaces
```

No generated promotion/audit surface was rewritten by this theorem-note writer.