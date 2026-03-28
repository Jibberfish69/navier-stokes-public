# Navier-Stokes Lane Import Plan V1

This document defines the first export/import tranche from the current
Navier-Stokes lane root into `mpp-ns`.

## Source Boundary

The live `problems/navier-stokes` path in `Research-Consolidation` is currently a
symlink to:

- `Research-Consolidation/Millennium Prize Problems/Navier-Stokes/NS-FORENSIC-CORPUS/problems-navier-stokes`

This tranche imports from that resolved source path, not from the symlink shell.

## Scope

Import the top-level authored lane surfaces from the resolved source path.

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

- the standalone repo contains the top-level NS theorem/source files
- duplicate `* (1).*` conflict files are not imported
- runtime and packaging directories are absent
- the import inventory records the resolved source snapshot and exclusion policy
