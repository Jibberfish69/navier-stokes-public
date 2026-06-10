# TerminalPressurePureStrainLegal.A reentry

Date: 2026-06-09

## Target

The active pressure endpoint is:

```text
TerminalPressurePureStrainLegal.A.
```

It would classify the retained interior pure pressure-Hessian sustain residue
as legal pressure loss after collar, harmonic, cutoff/projector, boundary,
off-family, and ordinary pressure exits have been removed.

## Checked facts

Existing pressure legal ledgers price:

- collar and geometric boundary pressure work;
- harmonic pressure tails;
- cutoff/projector commutators;
- off-family pressure tails;
- packets outside the retained terminal family.

The pure pressure-sustain residue is defined after these channels are already
removed. It is an interior retained principal-local pressure-Hessian lobe.

The local tangent obstruction remains:

```math
S=\operatorname{diag}(2,-1,-1),\qquad \Omega=0.
```

This has positive pressure-Hessian sustain and zero native vorticity
source-current carrier at the algebraic pressure-law level. It blocks any
source-only or already-legal classification from pressure identities alone.

## Judgment

`TerminalPressurePureStrainLegal.A` is not installed.

Proving it would require a new pressure legal class and a terminal-weight
summability estimate for the pure-strain pressure carrier. That estimate has
the strength of a new pressure depletion theorem; it is not contained in the
existing pressure legal ledgers.

The pressure route is now exhausted at current authority:

```text
PressureSourceTimeFaceSpread.A,
TerminalLerayOrientation_ind.A + TerminalLerayCommutatorLegal_ind.A
  + TerminalLeraySaturation_ind.A,
TerminalPressurePureStrainLegal.A,
PurePressureSustainResidueLiouville.A,
DirectionalPressureTraceSaturation.A
```

all remain open production theorems, not installed discharges.

## Next proof-method pivot

The next non-repeated target should leave the pressure-label cycle. The best
remaining route is a minimal-bad-residue / branch-charge theorem:

```text
MinimalBadResidueRigidity.A
```

or its charge form:

```text
EntropyChargeLowerBound.A / ScaleInvariantParentChargeQuantum.A.
```

This asks whether a minimal all-doors-closed terminal ancestry has enough
well-founded structure, branch charge, or rigidity to rule out the same
zero-thickness terminal source atom without importing the already failed
pressure/source-residence gates.

## New live criticism

`NS-LIVE-20260609-059`: TerminalPressurePureStrainLegal.A is not proved by
existing pressure legal ledgers. The pressure subroutes are exhausted at current
authority. The loop must pivot to a non-pressure new theorem, beginning with
minimal-bad-residue rigidity or a branch/parent charge lower bound.
