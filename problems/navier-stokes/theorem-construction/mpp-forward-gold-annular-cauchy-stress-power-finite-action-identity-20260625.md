---
theorem_id: forward-gold-annular-cauchy-stress-power-finite-action-identity-20260625
status: exact-internal-force-action-finite-bound-installed-boundary-transfer-distinguished
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Installs the exact Cauchy stress-power identity on the original transported
  material annuli. For incompressible Navier-Stokes, the internal force-action
  \(T:S\) is exactly \(2\nu|S|^2\); pressure contributes to boundary transfer
  between material shells but does no internal volumetric work. Therefore a
  bounded-overlap material annular atlas has finite internal stress/strain
  action directly from the global energy inequality. The remaining live issue
  is the admission of terminal center growth into this internal annular
  strain-action record rather than into naked rectified boundary pressure
  flux.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-direct-full-clock-original-history-attempt-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-failure-profile-physical-scaling-test-20260625.md
---

# Annular Cauchy Stress-Power Finite Action Identity

Date: 2026-06-25

## 0. Object

Let \(A(t)=X(A_0,t)\) be a transported material annulus of the original smooth
solution.  The Cauchy stress is

```math
T=-pI+2\nu S,
\qquad
S={\nabla u+\nabla u^\top\over2}.
\tag{CSP.1}
```

The annulus, velocity, pressure, viscosity, incompressibility, and strain are
all read on the same material history.

## 1. Internal stress power

The internal stress power is

```math
T:\nabla u
=
T:S
=
(-pI+2\nu S):S .
\tag{CSP.2}
```

Since the flow is incompressible,

```math
\operatorname{tr}S=\nabla\cdot u=0.
\tag{CSP.3}
```

Therefore

```math
(-pI):S=-p\,\operatorname{tr}S=0,
\tag{CSP.4}
```

and

```math
\boxed{
T:S=2\nu |S|^2 .
}
\tag{CSP.5}
```

So pressure does not create internal volumetric force-action.  It acts as the
incompressibility constraint and transfers energy through material boundaries.

## 2. Material annular energy identity

The material energy identity is

```math
{d\over dt}
\int_{A(t)}{1\over2}|u|^2\,dx
+
2\nu\int_{A(t)}|S|^2\,dx
=
\int_{\partial A(t)}u\cdot Tn\,dS .
\tag{CSP.6}
```

The right side is boundary traction work.  For adjacent material shells, the
same interface appears with opposite normals, so the boundary traction work is
a pairwise shell exchange.  It is not a detached source.

## 3. Finite internal annular action

For a bounded-overlap family of transported material annuli \(A_\ell(t)\),
`(CSP.5)` and the global energy inequality give

```math
\sum_\ell
\int_0^{T_*}\int_{A_\ell(t)}
T:S\,dx\,dt
=
2\nu
\sum_\ell
\int_0^{T_*}\int_{A_\ell(t)}
|S|^2\,dx\,dt
\le
C\|u_0\|_2^2 .
\tag{CSP.7}
```

This proves finite rectified internal stress/strain action for the original
material history:

```math
\boxed{
\int_0^{T_*}\int_{\text{material annuli}}
T:S\,dx\,dt
<\infty .
}
\tag{CSP.8}
```

## 4. Consequence for the live route

The later-payback mechanism must be read through `(CSP.6)`.

An apparent center energy increase in a transported inner region is balanced
by boundary traction work from the surrounding material layer and viscous
strain action.  Across the surrounding material annulus, the same boundary
traction is the opposite side of the same shell exchange, while the internal
force-action is exactly the finite strain action `(CSP.8)`.

Thus the admissible gold route is:

```math
\text{terminal center growth}
\longrightarrow
\text{same-material annular stress exchange}
\longrightarrow
\text{internal strain action }2\nu|S|^2
\text{ plus bounded storage}.
\tag{CSP.9}
```

The pressure channel remains coupled because it determines the boundary
traction exchange in `(CSP.6)`, but incompressibility prevents pressure from
becoming a separate internal force-action reservoir.

## 5. Remaining exact admission point

The internal action bound `(CSP.8)` is closed.  The remaining theorem is the
admission step:

```math
\text{the terminal center pulse of the original material history}
\quad
\text{is controlled by}
\quad
\text{same-material annular stress exchange whose internal action is }(CSP.8).
\tag{CSP.10}
```

That admission step must use the transported material identity `(CSP.6)`, not
a center-only endpoint projection and not a detached pressure-only estimate.
