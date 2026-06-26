---
theorem_id: forward-gold-laminar-positive-flux-boundary-reserve-direct-test-20260626
status: direct-test-fails-boundary-only-positive-flux-reserve-cannot-pay-interior-affine-child-birth
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge: LaminarPositiveFluxInheritance.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-tail-nozeno-to-positive-flux-inheritance-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-parent-child-flux-bellman-target-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-flux-bellman-monotonicity-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-bellman-root-test-20260626.md
---

# Laminar Positive-Flux Boundary Reserve Direct Test

This note attacks the most literal version of
`LaminarPositiveFluxInheritance.A`: take \(B(Q)\) to be a nonnegative positive
boundary flux reserve on the transported parent boundary.

That version fails.  The parent-child reserve cannot be only an outer-boundary
positive-flux ledger.

## 1. Desired boundary inheritance

The Bellman form asks for a nonnegative reserve \(B(Q)\) with

```math
\sum_{Q'\in ch(Q)}A(Q')
+
\sum_{Q'\in ch(Q)}B(Q')
\le
B(Q)+R_{\rm legal}(Q).
\tag{BRT.1}
```

The tempting choice is a gauge-reduced positive stress-work reserve on the
parent boundary:

```math
B_{\partial}(Q)
\sim
\left[
\int_{I_Q}\int_{\partial Q(t)}
u\cdot Tn\,dA\,dt
\right]_+
```

or a positive variation version of the same boundary transaction.

The transported energy identity proves attachment:

```math
\frac{d}{dt}E_Q(t)+D_Q(t)
=
\int_{\partial Q(t)}u\cdot Tn\,dA.
```

It does not by itself prove monotone inheritance.

## 2. Interior affine child counter-test

Let \(Q\) be a parent material region and place a high-ratio child \(Q'\) well
inside it.  On \(Q'\), use the localized affine strain profile:

```math
u_r(x,t)\simeq A_r(t)x,
\qquad
\operatorname{tr}A_r=0,
\qquad
|A_r|\simeq r^{-2},
```

on a heat window of length \(r^2\), with pressure Hessian chosen by the local
Navier--Stokes law.  Periodic divergence-free collar matching gives

```math
A(Q')\simeq 1,
```

while raw energy, viscous work, pressure force work, and collar matching all
scale like

```math
O(r).
```

Since the child is supported away from \(\partial Q(t)\), the outer parent
boundary stress-work can be made zero or \(O(r)\) for that child event after
the cutoff collar is placed inside \(Q\):

```math
B_{\partial}(Q)-B_{\partial}(Q')
\lesssim O(r).
```

The desired inequality would require

```math
1
\lesssim
O(r)+R_{\rm legal}(Q),
```

which fails in the critical scaling unless \(R_{\rm legal}\) already contains
the missing high-ratio action.

## 3. Meaning

The child does not need to draw visible positive flux through the outer boundary
of the parent at the same scale.  It can be born as an interior pressure-Hessian
balanced affine packet with only radius-weighted raw collar and matching cost.

So the parent reserve cannot be merely:

```text
positive stress work through the parent boundary.
```

The reserve has to see interior capacity of the parent material region: the
pressure-Hodge-stress potential, Cauchy--Green/frame deformation, collar-normal
turnstile structure, or an equivalent volumetric same-history capacity.

## 4. Surviving form

The viable parent-child theorem is therefore not a boundary-flux monotonicity
statement.  It has to be a capacity/volumetric inheritance statement:

```math
B(Q)
\simeq
\operatorname{Cap}_{A,G}
\bigl(\text{gauge-reduced pressure-Hodge-stress potential on }Q\bigr)
```

or an equivalent same-material reserve that sees interior affine child birth.

This returns the active hard subproblem to the selected critical strain /
pressure-Hessian capacity reserve:

```text
SelectedCriticalStrainCapacityReserve.A
```

but now with the laminar parent-child role fixed:

```text
the reserve must be inheritable down the laminar tree and finite at the root.
```

## 5. Result

The direct boundary-flux reading of `LaminarPositiveFluxInheritance.A` is false
at the affine child-birth scaling.  The inheritance reserve must be volumetric
or capacity-like, not a positive outer-boundary flux ledger.

The live Gold edge is therefore:

```text
LaminarPositiveFluxInheritance.A
with a pressure-Hodge / selected critical-strain capacity reserve B(Q).
```

Raw boundary flux, signed attachment, and positive parent stress-work alone do
not close the no-Zeno affine half-tail.
