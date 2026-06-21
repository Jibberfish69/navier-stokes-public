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
Part/Field face.

The correct local target is:

```text
For each concrete finite terminal obstruction O:
  O_fail offered as the finite nonsmooth event
  => CM-test entry for O
  => first failed Part/Field face
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

is not proof authority. It is too close to the rejected positive no-exit slogan and it
misreads the CM route by trying to delete the fail branch after using it.

The live target is:

```text
complete the finite terminal obstruction inventory so every actual fail branch
has CM-test entry and a derived Part/Field face, with the pass branch kept
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
4. derive its first Part/Field failure;
5. check that the pass branch remains the in-class continuation branch without
   demanding one named positive bootstrap estimate.

If every terminal obstruction type is already covered by the installed row audit, the
remaining work is manuscript/referee presentation. If one type is not covered,
that type is the true blocker. A generic "Exit is inadmissible" bridge is not
the true blocker.

## 2026-06-05 Row-Audit Update

The follow-up row audit is recorded in
`mpp-finite-terminal-obstruction-inventory-row-audit-20260605.md`.

It checked the branch-family ledger against
`ClayFiniteFailureTypeCMExhaustion.A` and found one row that needed to be split:
the local `L^3` Duhamel-mass translator was still grouped with generic
public-critical translator support. The installed note
`mpp-terminal-l3-duhamel-mass-cm-face-correction-20260523.md` already proves
the local row:

```text
terminal L3 Duhamel response mass
=> same-ledger nonlinear source work
   or not Part_{N,Q}
   or Legal,
```

and with the source-residue and retained critical translator notes this yields:

```text
not Part_{N,Q},
or, under retained Part_{N,Q} plus Field-window evidence,
   forall r>0 not Field_{N,r,Q}.
```

Thus the installed local `L^3` Duhamel-mass branch now has CM-test entry and a
first Part/Field Part/Field derivation in the finite-obstruction inventory.

Generic public-critical translators remain support-only until a named class `X`
has same-atlas localization and Field incompatibility proved on the same
witness record. The next row-level obstruction is therefore only that generic
promotion question, not the installed local `L^3` branch and not the full
finite-failure inventory.

## Non-Overclaim Boundary

This note does not prove the Navier-Stokes MPP. It corrects the live target so
the proof work does not drift into a false local bridge. Clay readiness still
requires either a verified finite-obstruction inventory showing CM entry plus
Part/Field Part/Field derivation for every actual terminal failure type, or an
exact named obstruction type that remains uncovered.
