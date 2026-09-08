# Navier-Stokes Monotone Functional Package

## Purpose

Restore the original `Q(t)` bridge from the source paper stack and turn it into an exact live theorem object.

This package now has a narrower and more honest job than the older version:

- not to declare the bridge fully discharged,
- but to specify exactly what the monotone bridge contributes and exactly what it does not contribute.

## Source Basis

- `Millennium Prize Problems/Navier-Stokes/TeX/Global Regularity Framework for Arbitrary Initial Data in L2.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Section_3-_Monotone_Functional.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Energy_Boundedness_via_Q(t)_for_Global_Regularity.tex`
- `problems/navier-stokes/source-forensics/master-program-analysis.md`
- `problems/navier-stokes/source-forensics/canonical-equation-ledger.md`
- `problems/navier-stokes/theorem-construction/energy-baseline-bridge-lemma.md`
- `problems/navier-stokes/theorem-construction/monotone-functional-bridge-discharge.md`
- `problems/navier-stokes/theorem-construction/monotone-functional-insufficiency-lemma.md`

## Monotone Target

Produce, on the classical three-dimensional incompressible Navier-Stokes equation itself, a global control functional

`Q(t) = ||u(t)||_(L^2_x)^2 + ||grad u(t)||_(L^2_x)^2`

whose boundedness records the energy/enstrophy layer used by the original four-principle framework and feeds the later compactness and interdependency arguments.

## Candidate Proposition Sequence

### Proposition M1. The original framework carries a named monotone functional

The source family explicitly names

`Q(t) = ||u(t)||_(L^2_x)^2 + ||grad u(t)||_(L^2_x)^2`

as one of the four main principles. Therefore the live theorem route must not collapse the monotone layer into unnamed baseline energy.

### Current status

Source-grounded and restored.

### Proposition M2. Same-surface energy-dissipation identity

On the classical Euclidean theorem surface, `Q(t)` obeys an evolution law of the form

`dQ/dt = - dissipation + forcing + possible nonlinear remainder presentation`

matching the equations recorded in the canonical source family.

### Current status

Source-grounded and locally exact as an equation-level bridge object.

### Proposition M3. Necessary but not sufficient

Control of `Q(t)` gives the global energy/enstrophy layer but does not by itself imply:

1. a high-frequency dyadic tail or flux estimate, or
2. a continuation-level gradient bound.

Therefore the route must pass from the monotone layer into the scale-barrier and gradient fronts rather than treating `Q(t)` as closure by itself.

### Current status

Open as a live bridge consequence that the runner is now explicitly targeting.

## Exact Bridge Role

The monotone bridge does three precise jobs.

1. It records the global energy/enstrophy layer in one named same-surface functional.
2. It keeps the compactness package tied to a real classical control quantity instead of generic baseline rhetoric.
3. It explains why the next theorem burden after `Q(t)` is not “energy again,” but the unresolved high-frequency cascade and the gradient channel it feeds.

## Honest Current Use

This package should now be read as a source-grounded theorem object with partial discharge:

- the existence and exact form of the bridge are grounded,
- the bridge-facing object is formalized in `monotone-functional-bridge-discharge.md`,
- the bridge-to-insufficiency handoff is localized,
- the bridge is not yet promoted to a fully discharged classical closure component.
