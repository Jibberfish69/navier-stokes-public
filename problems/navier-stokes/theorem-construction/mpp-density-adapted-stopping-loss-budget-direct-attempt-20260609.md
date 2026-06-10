---
ns_viewer:
  theorem_id: density-adapted-stopping-loss-budget-direct-attempt-20260609
  status: failed-coverage-discharge
  proof_role: selector_source_packet_direct_attempt
  logical_landing_node: density-good-set-finite-frame-coverage
  edge_effect: "Tests DensityAdaptedStoppingLossBudget.A. Large-set regularization can give a conditional oscillation/loss-budget mechanism on retained density-good sets, but the proof still lacks the theorem that those retained density-good sets meet enough entrance sectors/caps to supply the downstream finite-frame branch."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-diagonal-density-holder-stopping-retained-mass-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md
    - problems/navier-stokes/theorem-construction/terminal-sector-center-density-and-local-holder-oscillation.md
    - problems/navier-stokes/theorem-construction/finite-shell-comparability-on-core-cap-family.md
    - problems/navier-stokes/theorem-construction/segment-collar-derivative-continuity-on-balanced-frame.md
  downstream_consequence: "The next theorem atom is DensityGoodSetFiniteFrameCoverage.A: prove that the retained density-good/oscillation-good set still occupies enough entrance sectors or core caps to construct the balanced finite-frame route on the same strip."
---

# MPP Density-Adapted Stopping Loss-Budget Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`DiagonalDensityHolderStoppingRetainedMass.A`,
`DiagonalDensitySourceOscillation.A`, `PTCShapeNormalization.A`, `D.7mq`,
`DG-Cal`, Pack survival, or CMI finality.

## Target

The active target is:

```text
DensityAdaptedStoppingLossBudget.A.
```

It must produce a quantitative bad-set/loss budget for density-adapted stopping
that enforces diagonal-density oscillation on retained terminal entrance-sector
cells while preserving enough selector-good mass on the same strip for the
shell, transport, finite-frame, exact-potential-comparison, CG-gap, and
selector-strain packets.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: selector-side source theorem under `PTCShapeNormalization.A`.

Object role: supplier/bridge, not final CM class exit.

Logical skeleton: direct attempt, then countermodel pressure on the retained
coverage requirement.

Mechanism: measure regularization, density stopping, finite loss budgets, and
finite-frame coverage.

## Attempt 1: Large-Set Density Regularization

On a finite Radon parent cell, a finite a.e. measurable diagonal density admits
large-set regularization: for any loss tolerance `eta>0`, one can discard a set
of measure below `eta` so that the density is continuous on the retained compact
piece. On that retained piece, compactness gives a uniform continuity modulus.
After refining to cells below that modulus, the retained cells have small
density oscillation.

This supplies a conditional local mechanism:

```text
large-set regularization + finite refinement
=> oscillation on retained density-good pieces with an eta loss budget.
```

Together with the finite retained-intersection lemma from the previous pass,
this would be enough for retained mass as plain measure bookkeeping.

## Attempt 2: Feed The Retained Density-Good Set Into The Existing Frame Route

This is where the proof fails.

The downstream route does not only need a positive-measure subset where the
density is well behaved. It needs the retained set to still support the same
finite entrance-sector/core-cap structure used by:

```text
diagonal restriction stability,
finite shell comparability,
finite-frame linearization,
exact-potential comparison,
CG-gap persistence,
selector-strain compatibility.
```

A large-set regularization theorem can preserve measure. It does not by itself
preserve directional coverage, cap occupancy, or balanced-frame span.

## Countermodel Pressure

Let a parent cell be split into finitely many entrance sectors, and let the
diagonal density concentrate almost entirely in one sector while remaining
nonnegative with positive parent average. Large-set regularization can keep a
very good density set inside the high-density sector and lose arbitrarily small
measure relative to the total density-bearing region.

That retained set still fails the sector/frame job: the other entrance sectors
may have zero or negligible density and cannot supply the lower-density packets
or the balanced finite-frame cap family required downstream.

So a loss budget for density regularity is not enough. The proof also needs a
coverage theorem saying the density-good retained set still meets enough
entrance sectors/core caps with the correct weights.

## Result

`DensityAdaptedStoppingLossBudget.A` is not proved from the installed inputs.

The pass gives a useful split:

```text
large-set density regularization can supply oscillation on retained pieces,
```

but

```text
the retained density-good pieces are not proved to carry the finite-frame /
entrance-sector coverage required by the downstream selector-shape route.
```

The actual next theorem atom is:

```text
DensityGoodSetFiniteFrameCoverage.A:
prove that the retained density-good/oscillation-good set produced by the
density-adapted stopping still occupies enough entrance sectors or core caps,
with enough quantitative weight, to construct the balanced finite-frame route
on the same selector-good strip.
```

Without that coverage theorem, the active proof can keep positive measure and
still lose the geometry needed by `PTCShapeNormalization.A`.

## New Live Criticism

`NS-LIVE-20260609-139`: `DensityAdaptedStoppingLossBudget.A` is not proved.
Large-set density regularization can conditionally provide an oscillation/loss
budget on retained density-good pieces, but the proof still lacks
`DensityGoodSetFiniteFrameCoverage.A`: a theorem showing that those retained
density-good pieces occupy enough entrance sectors or core caps, with the right
weights, to feed finite shell comparability, finite-frame linearization,
exact-potential comparison, CG-gap persistence, and selector-strain compatibility
on one common strip.
