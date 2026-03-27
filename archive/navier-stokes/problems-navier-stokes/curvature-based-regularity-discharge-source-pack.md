# Curvature-Based Regularity Discharge Source Pack

## Target Obligations

- `bridge-gradient-control`
- `proof-dependency-8`
- `proof-dependency-9`

## Source-Faithful Fourth Bridge Claim

The original Navier-Stokes source family does not present the fourth bridge as a
Euclidean dyadic continuation inequality.

It presents a curvature-based regularity mechanism:

1. reformulate Navier-Stokes on a Riemannian carrier,
2. derive a Ricci-damped gradient evolution equation,
3. use positive curvature plus viscosity to bound `|\nabla u|^2`,
4. feed that bounded gradient back into the rest of the cycle.

So the original fourth slot is:

`Curvature-Based Regularity -> strengthens the Scale-Barrier Principle`.

## Primary Source Locus

- `Millennium Prize Problems/Navier-Stokes/TeX/Section_5-_Curvature-Based_Regularity.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Gradient_Control_Through_Geometric_Arguments.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/A Unified Framework for the Global Regularity of 3D Navier--Stokes EquationsMoreover, the framework offers a transferable methodology for stabilizing other complex PDE system.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Section_6-_Interdependencies_Among_Principles.tex`

## Exact Source Equations

The source-faithful geometric reformulation is:

```math
\partial_t u + \nabla_u u = -\mathrm{grad}_g(p) + \nu \Delta_g u.
```

The curvature evolution equation is:

```math
\frac{\partial}{\partial t} |\nabla u|^2
=
- \mathrm{Ric}(g)(\nabla u,\nabla u)
+ \nu \Delta_g |\nabla u|^2
+ C |\nabla u|^3.
```

The source-side boundedness theorem then takes the form:

```math
\text{Ric}(g) \ge \kappa > 0
\quad \Longrightarrow \quad
\sup_{t \ge 0}\|\nabla u(t)\|_{L^2(M)} < \infty.
```

The parallel geometric note also states the decay-type bound

```math
|\nabla u|^2 \le C_1 e^{-\kappa t} + C_2
\qquad (t\ge0),
```

again under the positive-curvature hypothesis.

The interaction file then feeds that back into the loop:

- curvature-based regularity controls gradient growth,
- bounded gradients reinforce high-frequency suppression,
- that strengthening returns support to the scale-barrier principle.

The exact local feedback note for the live lane is recorded in
`theorem-construction/curvature-to-scale-feedback-bridge.md`.

## Exact Local Consequence

On the original source surface, the fourth bridge contributes the following local theorem content:

1. a named geometric carrier for the gradient equation,
2. an explicit Ricci-damped evolution law,
3. a bounded-gradient theorem under positive curvature,
4. a stated feedback arrow from gradient control back to the scale barrier.

## Local Discharge Verdict

On the source-faithful curvature branch, this is enough to classify
`bridge-gradient-control` as discharged.

The unresolved burden is narrower:

- not whether a fourth bridge exists,
- but whether this discharged curvature bridge has been pulled through the
  declared final theorem surface without a hidden branch change.

## Why This Is Not Yet The Final Unified Warrant

This source pack does not by itself prove that the curvature branch and the
lane-local Euclidean replacement are the same theorem.

It proves something narrower and important:

- the original source family really does contain a substantive fourth bridge;
- that fourth bridge is geometric rather than purely Euclidean;
- the loop-closing arrow is present in the source stack itself.

So the remaining issue is no longer absence of fourth-bridge mathematics or the
local discharge of `bridge-gradient-control`. It is the exact pullback identified in
`theorem-construction/curvature-to-euclidean-pullback-target.md`: carry the
source-faithful curvature bridge through the declared classical Euclidean theorem
surface without a hidden branch switch.

## Proof Classification

- `Section_5-_Curvature-Based_Regularity.tex`: derivation plus proof sketch under explicit Ricci-curvature hypotheses
- `Gradient_Control_Through_Geometric_Arguments.tex`: derivation plus theorem statement with Gronwall-style bound
- `Section_6-_Interdependencies_Among_Principles.tex`: interaction/loop-integration statement, not a standalone proof

## Use In The Live Lane

This file should be treated as the source-faithful fourth-bridge artifact surface.

If the lane chooses the original route first, this is the fourth-bridge branch to
carry.

If the lane chooses the Euclidean replacement instead, this file remains the
provenance branch that must be explicitly superseded rather than silently erased.
