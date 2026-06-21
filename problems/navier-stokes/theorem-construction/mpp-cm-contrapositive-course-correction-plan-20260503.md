# CM Contrapositive Course-Correction Plan

Date: 2026-05-03
Lane: Navier-Stokes
Purpose: make the corrected proof polarity operational.

## Governing Target

The primary theorem program is not a positive continuation program.

The primary theorem program is:

```text
GenuineNonSmoothOccurrence => not CM_{N,r,Q}
CM_{N,r,Q}:=Part_{N,Q}+Field_{N,r,Q}
```

Smoothness is then read by contraposition. A positive estimate may help, but it
is only a supplier/readout theorem until it explicitly bridges into failure or
persistence of Part or Field.

## Current Reseat

The source-pulse branch should be read as:

```text
SourcePulseCMExit.A:
terminal source-pulse used as a genuine non-smooth occurrence
=> not Part_{N,Q} or not Field_{N,r,Q}.
```

The older displayed target

```text
OriginalSmoothData=>SourcePulseExclusion.A
```

is a strong sufficient supplier presentation. It is not the route-governing
primitive unless a surface explicitly proves it as a bridge into
`SourcePulseCMExit.A`.

## Correction Rules

1. Any current target must be classified as one of:
   - primary CM-exit theorem,
   - supplier/readout theorem,
   - bridge theorem from supplier/readout to CM exit,
   - stale generated wording.
2. Any positive program must answer: which Part/Field witness does this
   install, preserve, or contradict?
3. Any terminal refill/source-pulse theorem must answer: does the source-pulse
   force `not Pack`, `not Part`, or `not Field` on the same-fluid shrinking
   window?
4. `OriginalSmoothData=>SourcePulseExclusion.A` may still be attacked, but only
   as a sufficient source-control route into `SourcePulseCMExit.A`.
5. Do not reopen SG.4, exact-potential, Hodge, Euclidean export, mixed-jet, or
   deformation routes as primary merely because they look smoother. They are
   suppliers unless they carry an explicit class-membership bridge.

## Practical Work Order

1. Freeze authority on the corrected top layer:
   `live-theorem-edge.yaml` and `ns-proof-program-route-table.yaml`.
2. Quarantine stale generated surfaces that still name
   `OriginalSmoothData=>SourcePulseExclusion.A` as the primary blocker.
3. Rewrite the active source-pulse burden as a three-exit proof search:
   Pack-exit, Part-exit, Field-exit.
4. Re-audit each existing source-pulse attempt as evidence for one of those
   three exits, not as an absolute no-pulse proof by default.
5. Resume theorem work on the narrowest surviving branch:
   prove the terminal nonlinear refill/source-pulse cannot be a genuine
   non-smooth occurrence while Part and Field all remain valid.

## Stop Condition

The corrected route is blocked only when the repo has made one bounded attempt
on each of the three CM exit faces:

```text
terminal source-pulse + Pack + Part + Field
```

and all three attempts fail without yielding an explicit new bridge theorem.
