# Euler Mirror Derivation-Audit Contract

## Purpose

This contract governs the second-pass branch-wide audit of
`problems/navier-stokes/euler-mirror/**`.

Its purpose is narrower than the theorem objective and stricter than the first
completion contract:

```math
\boxed{
\text{audit and refine the entire Euler mirror corpus so every branch file is
faithfully derived, accurately stated, internally consistent, and honest about
what was rewritten, what was demoted, and what remains mathematically open.}
}
```

This contract concerns corpus fidelity, not the truth of Euler global
smoothness itself.

## Governing Standard

Every branch file must satisfy all of the following.

1. It is derived from an identifiable parent role in the Navier-Stokes corpus,
   or else it is explicitly marked as a branch-local registry / audit /
   synthesis surface.
2. It does not silently retain viscosity, dissipation, heat, Stokes, or other
   parabolic proof labor after moving to Euler.
3. Its status language matches the current branch posture on disk.
4. Its local claims do not outrun the branch's actual mathematical state.
5. Its references, ledgers, and completion surfaces agree with the rest of the
   Euler mirror corpus.

## Completion Conditions

This contract is complete only when all of the following hold.

### A1. Full File Inventory Audited

Every file currently under `euler-mirror/**` is listed in a corpus derivation
ledger with:

1. file path;
2. family / role;
3. derivation class;
4. audit verdict;
5. refinement verdict.

### A2. Registry And Status Surfaces Synchronized

All branch-registry surfaces are scrubbed for stale state and cross-file
inconsistency, including at minimum:

1. `README.md`
2. `branch-manifest.yaml`
3. `campaign-map.md`
4. `route-lock.yaml`
5. `execution-ledger.yaml`
6. `completion-contract.md`
7. `completion-status.yaml`
8. `branch-audit-index.yaml`
9. `viscosity-dependence-ledger.yaml`

### A3. Positive-Control Corpus Refined

All positive-control files are checked for derivation fidelity against their
parent Navier-Stokes roles and refined where needed, including:

1. ladder / framework surfaces;
2. source-pack mirrors;
3. Route B surfaces;
4. integrated positive-route closure surfaces.

### A4. Contradiction Corpus Refined

All contradiction / class-membership theorem surfaces are checked for:

1. theorem-order fidelity;
2. accurate current-branch posture;
3. no stale first-wave language unless used historically and explicitly;
4. honest statement of the remaining Euler burdens.

### A5. Audit Families Revalidated

Each family audit under `audits/**` is re-read against the now-installed Euler
mirror and refined so that it no longer advertises stale pre-mirror posture.

### A6. Findings And Final Verdict Recorded

The branch contains:

1. a corpus-derivation findings note summarizing the exact issues found and how
   they were repaired;
2. a machine-readable derivation-audit status surface marked complete only if
   `A1` through `A5` hold.

## Stop Rule

This contract is **not** complete merely because the branch already has a prior
completion status.

It is complete only when the entire Euler mirror corpus has been re-audited
under the stricter derivation-fidelity standard above.

