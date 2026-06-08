# MPP Generic Part-Face Exclusion Work Order Demotion

Date: 2026-06-07

Status: demotion note. The generic Part face-exclusion work order is stale as
the local CM referee target. It remains a useful failed proof audit, but it is
not a named uncovered proof-bearing row on the currently promoted surfaces.

## Authority Checked

This note re-checks the June 7 Part blocker against the newer authority pair:

- `problems/navier-stokes/cm-contrapositive-referee-audit.yaml`
- `problems/navier-stokes/theorem-construction/mpp-clay-counterexample-exclusion-target-correction-20260603.md`

It also compares the older Part work order against:

- `mpp-clay-part-face-exclusion-working-pass-20260607.md`
- `mpp-retained-pack-part-survival-proof-method-audit-20260607.md`
- `cm-branch-family-certificate-ledger-20260526.yaml`
- `mpp-finite-terminal-obstruction-inventory-row-audit-20260605.md`
- `mpp-terminal-source-residue-cm-exit-20260522.md`
- `mpp-retained-pressure-package-cm-face-placement-20260605.md`

The later referee audit is the controlling local authority for the current CM
referee gate. It says the active gate is finite-obstruction inventory coverage,
not a generic proof that `Exit(Q)` or a first Part face is inadmissible.

## Typed CM Roles

For this check, keep the roles separate.

An alleged finite terminal obstruction `O` is the object under test. CM-test
entry means that `O` has been put into the same-solution terminal packet tree
after legal losses, readout artifacts, non-selected branches, and paid finite
ledgers have been removed.

`Pack_Q`, `Part_{N,Q}`, and `Field_{N,r,Q}` are witness faces. A failure of
`Part_{N,Q}` is a face failure:

```text
Pack_Q and not Part_{N,Q}.
```

That face failure supports the downstream conclusion:

```text
Exit(Q):=not Member(Q).
```

It is not itself a contradiction with the finite-breakdown branch. In the CM
pass/fail engine, the fail branch is supposed to become a typed exit branch
once a concrete Pack/Part/Field face failure has been derived.

## Why The Generic Part Target Is Stale

The June 7 generic Part target was:

```text
ClayAdmissibleFiniteBreakdown(W_*)
+ canonical same-solution terminal Q
+ Pack_Q
+ same original preterminal Navier-Stokes equation
=> Part_{N,Q}.
```

That statement asks for terminal no-defect participation on every retained Pack
carrier. The June 7 working pass correctly found that this is not proved by
same preterminal equation ancestry. A native terminal pressure/source defect
can still come from the same maximal Navier-Stokes evolution and land as:

```text
Pack_Q and not Part_{N,Q}.
```

The newer June 3 correction and the June 7 referee audit change the local
target. The proof does not need a generic theorem saying every retained Pack
terminal packet must satisfy `Part_{N,Q}`. That would delete a lawful fail
branch. The required proof work is row-by-row:

```text
for each named promoted terminal obstruction O:
  O enters the CM terminal test,
  O lands in the first failed Pack/Part/Field face,
  the pass branch remains the in-class continuation branch.
```

Thus the old generic Part work order is too broad. It asks for a
continuation-strength no-defect theorem when the current CM referee standard
only requires a named promoted obstruction row to be certified at its correct
first face.

## Current Row-Level Part State

The branch-family ledger already contains a proof-bearing Part row:

```text
pressure_viscosity_or_dwell_part_exit
```

Its selected terminal object is a Pack-retained carrier that no longer supports
the same differentiated Navier-Stokes pressure-viscosity tower, dwell law, or
compatible local source participation through depth `N`. Its first face is:

```text
Pack_Q and not Part_{N,Q}.
```

That is a certified face failure for that selected row. The raw terminal source
residue row is also certified at Pack/Part: when the carrier survives, an unpaid
native residue is a participation defect, hence a Part face. The retained
pressure package note gives the same placement rule: a pressure package is
either a Part failure, pass-side receiver support after Part survives, or a
Field issue after Pack and Part have already been licensed.

The June 5 finite-obstruction row audit then split the local `L^3` Duhamel-mass
branch from generic public-critical support and recorded the local row as
seated in Pack/Part/legal alternatives, with a Field row only after retained
Pack and Part.

So, on the currently promoted finite-obstruction inventory, there is no generic
uncovered Part theorem row. There are named rows, and the named rows that carry
proof mass have either been certified at Pack/Part/Field or demoted from
proof-bearing status.

## What Still Becomes Live If A New Row Is Promoted

This note does not say future Part checks disappear. It says the burden must be
named.

If a new terminal obstruction row is promoted as proof-bearing, the correct
Part question is:

```text
O + Pack_Q
=> not Part_{N,Q}
```

or else:

```text
O + Pack_Q
=> Part_{N,Q}
```

with the next face then tested under retained Pack and Part. The row must name
the selected terminal object, prove CM-test entry for that object, and show why
the first failed face is Pack, Part, or Field.

The stale question is:

```text
Pack_Q + original preterminal ancestry => Part_{N,Q}
```

with no named obstruction row. That question is too large and has already been
shown to require terminal no-defect compactness. It should not be used as a
standing CM-referee blocker.

## Result

`RetainedPackOriginalAncestryPartSurvival.A` remains a failed generic
no-defect theorem, not the current local proof target. The current Part standard
is row-level certification: named promoted obstruction rows must either land at
`not Part_{N,Q}` after `Pack_Q`, pass through `Part_{N,Q}` and continue to the
next face, or be demoted as non-proof support. Under the newer referee audit,
no current promoted surface leaves a generic Part face-exclusion blocker open.

## Boundary

This note does not claim a new Clay proof and does not alter shared route,
frontier, PDF, or app surfaces. It resolves the theorem-side authority conflict:
the old generic Part face-exclusion work order is stale relative to the June 3
target correction and the current finite-obstruction inventory referee audit.
