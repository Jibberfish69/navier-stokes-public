# Monotone-Functional Discharge Source Pack

## Target Obligations

- `bridge-monotone-functional`
- `proof-dependency-2`
- `proof-dependency-3`

## Exact Bridge Claim

The original source family explicitly names a monotone functional

```math
Q(t) = \|u(t)\|_{L^2_x}^2 + \|\nabla u(t)\|_{L^2_x}^2
```

as one of the four theorem-bearing principles in the classical Navier-Stokes program.

So the live route has to establish two local claims:

1. the original framework genuinely treats `Q(t)` as a named bridge, not just unnamed baseline energy;
2. the boundedness of `Q(t)` is necessary but not sufficient, because it does not by itself suppress the high-frequency cascade or close the blow-up mechanism.

## Source Equations

The canonical sources repeatedly use:

```math
Q(t) = \|u(t)\|_{L^2_x}^2 + \|\nabla u(t)\|_{L^2_x}^2,
```

```math
\frac{dQ}{dt}
=
-2\nu \|\nabla u\|_{L^2_x}^2
-2\nu \|\Delta u\|_{L^2_x}^2
+ 2 \int_{\mathbb{R}^3} f \cdot u \, dx,
```

and, in the more expanded section-level presentation,

```math
\frac{dQ}{dt}
=
-\nu \|\nabla u\|_{L^2_x}^2
-\nu \|\Delta u\|_{L^2_x}^2
+ C \|\nabla u\|_{L^2_x}^3
+ 2 \int_{\mathbb{R}^3} f \cdot u \, dx.
```

The forcing term is bounded by

```math
\left|\int_{\mathbb{R}^3} f \cdot u \, dx\right|
\le
\|f\|_{L^2_x}\|u\|_{L^2_x}.
```

And the cleaner `Q(t)` supplement states a Gronwall-style bound

```math
Q(t) \le Q(0)e^{-\nu t} + \int_0^t \|f(s)\|_{L^2_x}^2 ds.
```

## Exact Consequence

These equations justify the following local monotone-functional proposition:

- `Q(t)` is the source-grounded global energy/enstrophy control quantity on the classical surface.
- That quantity is part of the four-principle theorem architecture.
- But `Q(t)` control alone does not imply:
  - a dyadic tail or flux estimate suppressing dangerous transfer into arbitrarily high frequencies,
  - or a final continuation bridge excluding gradient blow-up.

So the exact handoff after the monotone bridge is:

`Q(t) bridge -> necessary but not sufficient -> unresolved high-frequency cascade burden`

## Why This Bridge Is Local

- It does not widen the theorem target.
- It does not require a new branch family.
- It only sharpens the exact local role of `Q(t)` inside the already recovered four-principle framework.

## Proof Skeleton

1. Read the original source family directly: the framework names `Monotone Functional` as a principal node.
2. Recover the exact formula for `Q(t)` and its energy-dissipation evolution.
3. Observe that these formulas give global energy/enstrophy control.
4. Observe also that none of those formulas alone prove a dyadic tail estimate or a final gradient continuation principle.
5. Therefore the monotone bridge is real, named, and theorem-bearing, but it hands off to the cascade burden rather than replacing it.

## Consequence For The Live Route

Once this bridge is localized correctly, the active route becomes:

1. classical target fidelity,
2. explicit monotone bridge `Q(t)`,
3. insufficiency of `Q(t)` by itself,
4. scale-barrier burden at the high-frequency cascade,
5. downstream compactness and fourth-bridge closure.

## Local Anchors

- [source-forensics/master-program-analysis.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/source-forensics/master-program-analysis.md)
- [source-forensics/canonical-equation-ledger.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/source-forensics/canonical-equation-ledger.md)
- [bridge-memos/monotone-functional.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/bridge-memos/monotone-functional.md)
- [theorem-construction/monotone-functional-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/monotone-functional-package.md)
- [theorem-construction/monotone-functional-insufficiency-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/monotone-functional-insufficiency-lemma.md)
- [theorem-construction/energy-baseline-bridge-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/energy-baseline-bridge-lemma.md)
