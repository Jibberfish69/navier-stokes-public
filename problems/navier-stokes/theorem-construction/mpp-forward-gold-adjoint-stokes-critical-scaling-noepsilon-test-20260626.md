---
theorem_id: forward-gold-adjoint-stokes-critical-scaling-noepsilon-test-20260626
status: direct-test-fails-linear-adjoint-stokes-gives-critical-scaling-not-strict-selected-capacity-gain
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - AdjointSelectedCapacityGain.A
  - LaminarAdjointStressTestEstimate.A
  - RootPositiveFluxReserveCoercivity.A
  - StrictHighRatioGoodLambdaHalfBarrierBreak.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-adjoint-stress-test-estimate-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-monotone-dual-extremal-constant-test-collapse-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-goodlambda-half-barrier-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-goodlambda-requires-epsilon-reserve-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-bellman-root-test-20260626.md
---

# Adjoint Stokes Critical-Scaling No-Epsilon Test

After the monotone-dual correction, the constant test \(\alpha\equiv1\) is
admissible.  Thus the adjoint target is the full selected first-ratio action:

```math
\sum_{Q\in\mathcal T}A(Q)<\infty.
\tag{ASC.1}
```

The question in this note is narrow: does the backward Stokes / heat adjoint
response itself supply the strict selected-capacity gain needed for `(ASC.1)`?

## 1. Linear adjoint energy sees the raw capacity scale

The material Stokes adjoint has the schematic form

```math
-\partial_t z-\nu\Delta_A z+\mathcal G_A\pi=f,
\qquad
D_A z=0,
\qquad
z(T)=0,
\tag{ASC.2}
```

with \(f\) the selected pressure-Hodge / critical-strain test carrier.  The
basic energy identity is

```math
{1\over2}{d\over dt}\|z(t)\|_2^2
-\nu\|\nabla_Az(t)\|_2^2
=
-\langle f(t),z(t)\rangle
\text{coefficient/legal terms}.
\tag{ASC.3}
```

After integration backward, this gives the usual dual control in the raw
parabolic capacity norm.  In the high-ratio notation,

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over2^{2j}},
\tag{ASC.4}
```

the raw adjoint energy scale corresponds to the zeroth moment

```math
\sum_\ell\nu_\ell<\infty.
\tag{ASC.5}
```

The Gold action is the first ratio moment

```math
\sum_\ell2^\ell\nu_\ell<\infty.
\tag{ASC.6}
```

So the adjoint estimate must produce an extra ratio gain beyond `(ASC.5)`.

## 2. Heat/Stokes smoothing gives no spare exponent at the high-ratio edge

On a dyadic shell, Stokes damping contributes the heat factor

```math
\nu 2^{2j}.
\tag{ASC.7}
```

But the high-ratio branch is precisely the regime where the same-material
service rate is larger than the heat rate:

```math
\rho_j={\Theta_j^{mat}\over2^{2j}}\gg1.
\tag{ASC.8}
```

In material time, heat has already been normalized into the raw measure
\(d\mu_j\).  The remaining selected action is the extra ratio factor
\(\rho_j\,d\mu_j\).  The linear backward Stokes response has no mechanism that
turns this into

```math
\rho_j^{1+\varepsilon}d\mu_j
\quad\text{or}\quad
2^{(1+\varepsilon)\ell}\nu_\ell.
\tag{ASC.9}
```

It therefore reaches the good-lambda half-barrier but does not break it.

## 3. Critical half-tail model survives the linear adjoint scale

The model tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{ASC.10}
```

has finite raw adjoint capacity:

```math
\sum_\ell\nu_\ell<\infty.
\tag{ASC.11}
```

But its selected action diverges:

```math
\sum_\ell2^\ell\nu_\ell
=
\sum_\ell {1\over\ell+1}
=\infty.
\tag{ASC.12}
```

Backward heat/Stokes smoothing treats `(ASC.10)` at the raw scale.  It does not
see a contradiction in `(ASC.12)` unless an additional nonlinear same-history
constraint is added.

Equivalently, a direct adjoint proof would need one of the strict forms:

```math
\sum_\ell2^{(1+\varepsilon)\ell}\nu_\ell<\infty,
\qquad
\varepsilon>0,
\tag{ASC.13}
```

or

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty.
\tag{ASC.14}
```

The linear adjoint energy identity gives neither.  It supplies attachment and
raw capacity control only.

## 4. Pressure-Hodge projection does not change the scaling

The Leray/Hodge projection is order zero on the relevant material elliptic
scale.  It attaches pressure to the incompressible constraint and prevents a
detached pressure source, but it does not improve the dyadic exponent in
`(ASC.6)`.

Thus the pressure-Hodge part of the adjoint response is still critical.  The
missing strict gain cannot come from applying \(\mathbb P_A\), Calderon-Zygmund
boundedness, or ordinary parabolic smoothing alone.

## 5. Result

This direct test fails as a proof of `AdjointSelectedCapacityGain.A`.

The checked conclusion is:

```math
\text{backward Stokes/Hodge adjoint energy}
\Longrightarrow
\text{raw critical capacity control},
\tag{ASC.15}
```

but not:

```math
\text{raw critical capacity control}
\Longrightarrow
\text{strict selected first-ratio gain}.
\tag{ASC.16}
```

Therefore the adjoint route still needs a genuinely nonlinear same-history
input: a no-free-upward-transfer law, a root positive-variation bound, a
scale-invariant selected-capacity no-escape theorem, or another mechanism that
breaks the half-tail barrier for the full selected laminar tree.
