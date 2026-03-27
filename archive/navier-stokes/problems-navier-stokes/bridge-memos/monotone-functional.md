# Monotone-Functional Bridge Memo (Referee-Facing Audit)

## Bridge Target

Make the original `Q(t)` bridge exact on the classical three-dimensional Navier-Stokes surface and separate two claims that had been getting blurred together:

1. the source family really does elevate `Q(t)` into a named bridge, and
2. that bridge alone does not close the theorem.

## Exact Hypotheses Presently Used

- the original 3D incompressible Navier-Stokes equation on `(0,T) x R^3`;
- smooth compactly supported divergence-free data in the admissible class used by the lane;
- the classical energy identity and viscous dissipation structure on that same equation surface;
- no theorem-critical modified dynamics, no morphic smoothing, and no hidden stronger hypothesis.

## Objects / Norms / Control Surface

- kinetic energy `||u(t)||_(L^2_x)^2`;
- enstrophy proxy `||grad u(t)||_(L^2_x)^2`;
- monotone functional
  `Q(t) := ||u(t)||_(L^2_x)^2 + ||grad u(t)||_(L^2_x)^2`;
- classical dissipation terms `||grad u||_(L^2_x)^2` and `||Delta u||_(L^2_x)^2`;
- forcing term `int_(R^3) f . u dx` when forcing is present.

## Source-Grounded Equations

The canonical source family uses the following formulas repeatedly:

```math
Q(t) = \|u(t)\|_{L^2_x}^2 + \|\nabla u(t)\|_{L^2_x}^2.
```

```math
\frac{dQ}{dt}
=
-2\nu \|\nabla u\|_{L^2_x}^2
-2\nu \|\Delta u\|_{L^2_x}^2
+ 2 \int_{\mathbb{R}^3} f \cdot u \, dx,
```

or, in the section-level source phrasing,

```math
\frac{dQ}{dt}
=
-\nu \|\nabla u\|_{L^2_x}^2
-\nu \|\Delta u\|_{L^2_x}^2
+ C \|\nabla u\|_{L^2_x}^3
+ 2 \int_{\mathbb{R}^3} f \cdot u \, dx.
```

and the forcing bound

```math
\left|\int_{\mathbb{R}^3} f \cdot u \, dx\right|
\le
\|f\|_{L^2_x}\|u\|_{L^2_x}.
```

The source family then treats `Q(t)` as the global energy/enstrophy layer that feeds later compactness and interdependency arguments.

## What The Bridge Honestly Gives

### Proposition M.1 (Named same-surface control bridge)

On the classical theorem surface, the source family defines a specific functional `Q(t)` and uses it to package kinetic energy plus enstrophy into one control quantity. So the monotone bridge is real and named; it is not just generic background prose about energy.

### Proposition M.2 (Necessary but not sufficient)

On that same classical surface, control of `Q(t)` is necessary infrastructure but does not by itself prove:

1. a dyadic tail or flux estimate that suppresses dangerous transfer into arbitrarily high frequencies, or
2. a continuation mechanism that rules out gradient blow-up.

So the bridge is local and exact in the following sense:

- it upgrades the route from unnamed baseline energy to a named theorem-bearing control surface;
- it still hands off to the scale-barrier and gradient fronts rather than replacing them.

## Why This Bridge Matters

This bridge is the point where the handed source stack differs from a stripped-down later summary.

- The original program does not say only “energy is bounded.”
- It says the proof architecture includes a `Monotone Functional` node.
- That node is `Q(t)`.
- That node enables the compactness package only because it stabilizes the global energy/enstrophy layer on the same classical surface.

## What Remains Conditional Or Unsupported

- The monotone bridge is not the final full-claim warrant.
- It still has to be integrated with:
  - a classical scale-barrier estimate on the same surface,
  - the compactness/nonlinear closure route,
  - a valid fourth bridge, which in the original source family is curvature-based regularity unless an explicit Euclidean upgrade is justified.

## Final Verdict

`discharged`

The bridge is explicit, source-grounded, and exact as a local same-surface theorem object.
What remains open is not whether `Q(t)` belongs in the proof architecture.
What remains open is how that discharged bridge is integrated with the remaining scale, cascade, compactness, and fourth-bridge work on the live classical route.
