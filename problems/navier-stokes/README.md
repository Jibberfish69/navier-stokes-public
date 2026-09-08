# Navier--Stokes global-regularity program

Repository MPP status: **solved by the established proof program**.

The exact one-fluid theorem topology is

\[
u_0
\longrightarrow
\text{datum-generated whole-terminal compatible rectangles}
\longrightarrow
\mathcal I[u_0]
\longrightarrow
u(T_*)\in H^\infty
\longrightarrow
\text{same-history restart and }T_*=\infty.
\]

The datum-generated rectangles, their projective intersection, the adjacent
critical block, the common smooth endpoint, the pressure-complete endpoint jet,
and the same-history restart are established. Signed-prefix, Gold, Silver, VPI,
matrix, and supplier routes are downstream readouts or support.

Start with [PROOF-PROGRAM.md](PROOF-PROGRAM.md). It contains the consolidated
mathematics and exact source hierarchy.

The governing machine contract is
[target-operating-contract.yaml](target-operating-contract.yaml), especially
its top-level proof_program_completion block. The current theorem edge and
dependency custody are recorded in [live-theorem-edge.yaml](live-theorem-edge.yaml)
and [dependency-discharge.yaml](dependency-discharge.yaml).
The full one-fluid proof spine is
[the one-fluid proof spine](theorem-construction/thomas-one-fluid-reversible-intersection-proof-spine-20260803.md).

Historical Gold, Silver, CM, packet, shell, prefix, and generated-status
surfaces remain available as proved mathematics, obstructions, failed attempts,
and provenance. Their labels cannot substitute for the whole-terminal estimate.
Paper and PDF work is outside this repair.

## Historical lane import note

`mpp-ns` is the Navier-Stokes lane workspace for Research-Consolidation.

It is intended to hold:

- problem-specific proof surfaces
- source recovery and localized theorem work
- local manuscript assets
- supporting documents for the global regularity program

It is not:

- the shared theorem graph
- the runtime or orchestration repo
- the cross-project manuscript authority root

## Imported Tranches

- `import-v1-top-level-theorem-bootstrap`
  - imports top-level NS theorem and source-recovery surfaces from the current
    forensic-corpus-backed lane root
  - excludes runtime control, external paper packaging, and heavy forensic bulk

See:

- `docs/import-plan-v1.md`
- `docs/import-inventory-v1.yaml`
