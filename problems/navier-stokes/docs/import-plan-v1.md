# Navier-Stokes Lane Import Plan V1

This document defines the current repo-boundary import handoff for the
Navier-Stokes lane root.

## Current Authority Correction

As of 2026-04-26, this plan does not require, resolve through, or import into an
external `mpp-ns` sibling path. The authoritative on-disk source is:

- `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes`

That directory is a real directory inside the `Research-Consolidation` git root,
not the older Desktop symlink shell and not a standalone external repo. The old
`mpp-ns` assumption survives only as retired lane-repo provenance recorded under:

- `system/meta/collaboration/lane-repo-cutover/20260415T010700Z/navier-stokes/`

## Source Boundary

The live `problems/navier-stokes` path in `Research-Consolidation` currently
resolves to:

- `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes`

The git root for that source is:

- `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation`

Future repo split or paper-workspace work must import from this canonical source
root and the recorded cutover provenance, not from `/Users/thomasbirnie/Workspace/ToE/mpp-ns`,
`/Users/thomasbirnie/Desktop/ToE/ToE/mpp-ns`, or the retired Desktop corpus
symlink path.

## Scope

Inventory the top-level authored lane surfaces already hosted under the
canonical source path. No theorem text rewrite is part of this handoff.

Include top-level:

- `*.md`
- `*.yaml`
- `*.txt`
- `*.json`
- `*.py`

Exclude:

- duplicate conflict files such as `* (1).*`
- runtime/governance control files
- `runtime/**`
- `bridge-memos/**`
- `external-paper/**`

## Excluded Control Surfaces

Do not import these in tranche 1:

- `chat-status.yaml`
- `pipeline-state.yaml`
- `pipeline-state (1).yaml`
- `governance-escalation.yaml`
- `halt-request.yaml`
- `inbox-escalation.yaml`
- `derivation-run.yaml`
- `finish-plan.yaml`
- `post-release-plan.yaml`
- `release-decision.yaml`
- `runtime/**`
- `bridge-memos/**`
- `external-paper/**`

## Acceptance Criteria

- the canonical `Research-Consolidation/problems/navier-stokes` directory is the
  authoritative source for the import inventory
- duplicate `* (1).*` conflict files are not part of the future split/export
  seed set
- runtime and packaging directories are excluded from future split/export seed
  sets unless a later plan explicitly scopes them
- the import inventory records the current on-disk source snapshot, the retired
  external-repo assumption, and the current exclusion policy
