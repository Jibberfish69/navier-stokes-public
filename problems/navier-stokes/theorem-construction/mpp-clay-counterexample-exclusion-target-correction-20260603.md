# MPP Clay Counterexample-Exclusion Target Correction

Date: 2026-06-03

Status: object-level target correction installed; this repairs a stale blocker
reading, not a full Clay closure proof.

## Correction

The June 1 blocker
`mpp-clay-counterexample-exclusion-gap-audit-20260601.md` names the wrong local
target when it asks for:

```text
ClayAdmissibleFiniteBreakdown(W_*) and classified Exit(Q)
=> contradiction with being a valid Clay finite-breakdown counterexample.
```

That formulation tries to make the fail branch illegal merely because it is
classified as `Exit(Q)`. Under Thomas's CM pass/fail engine, that is not the
local proof job. The fail branch is supposed to be the classified exit branch.
The proof job is to show that each concrete terminal obstruction offered as a
finite nonsmooth event enters the CM terminal test and derives a first failed
Pack/Part/Field face.

The correct local target is:

```text
For each concrete finite terminal obstruction O:
  O_fail offered as the finite nonsmooth event
  => CM-test entry for O
  => first failed Pack/Part/Field face
  => Exit(Q):=not Member(Q),

  while

  O_pass
  => retained continuation service
  => Member(Q)
  => smooth continuation.
```

This is exactly the local form installed by
`mpp-positive-obstruction-pass-exit-cm-engine-20260525.md` and
`mpp-no-third-branch-clay-closure-audit-20260525.md`.

## What Changes

The stale target:

```text
prove Exit(Q) is inadmissible as a Clay breakdown counterexample
```

is demoted. It is too close to the rejected positive no-exit slogan and it
misreads the CM route by trying to delete the fail branch after using it.

The live target is:

```text
complete the finite terminal obstruction inventory so every actual fail branch
has CM-test entry and a derived Pack/Part/Field face, with the pass branch kept
as the only in-class continuation branch.
```

Thus the live completion question is not whether `Exit(Q)` is generically
forbidden. The live completion question is whether the manuscript has actually
covered every finite terminal obstruction type by the pass/fail CM mechanism.

## Consequence For Nightly Work

The nightly Navier-Stokes work loop must not report progress by repeating the
June 1 bridge as the next burden. It must use this corrected target:

1. read `ClayFiniteFailureTypeCMExhaustion.A` as the finite-obstruction
   inventory surface;
2. select one concrete uncovered or weakly covered terminal obstruction type;
3. prove or audit its CM-test entry;
4. derive its first Pack/Part/Field face failure;
5. check that the pass branch remains the in-class continuation branch without
   demanding one named positive bootstrap estimate.

If every terminal obstruction type is already covered at that standard, the
remaining work is manuscript/referee presentation. If one type is not covered,
that type is the true blocker. A generic "Exit is inadmissible" bridge is not
the true blocker.

## Non-Overclaim Boundary

This note does not prove the Navier-Stokes MPP. It corrects the live target so
the proof work does not drift into a false local bridge. Clay readiness still
requires either a verified finite-obstruction inventory showing CM entry plus
Pack/Part/Field face derivation for every actual terminal failure type, or an
exact named obstruction type that remains uncovered.
