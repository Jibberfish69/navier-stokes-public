---
theorem_id: forward-gold-selected-capacity-goodlambda-weight-tail-equivalence-20260626
status: equivalence-audit-installed-selected-capacity-goodlambda-is-weight-beating-tail-law
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - SelectedCriticalStrainCapacityGoodLambda.A
  - StrictHighRatioGoodLambdaHalfBarrierBreak.A
  - WeightBeatingTailLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-capacity-inheritance-critical-strain-equivalence-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-capacity-levelset-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-goodlambda-strain-equation-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-goodlambda-half-barrier-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-goodlambda-requires-epsilon-reserve-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weight-beating-tail-ns-structure-audit-20260626.md
---

# Selected Capacity Good-Lambda / Weight-Tail Equivalence

The current relay hinge is:

```text
SelectedCriticalStrainCapacityGoodLambda.A
```

This note checks whether that hinge is a genuinely new smaller theorem or the
same weight-beating tail law written in capacity variables.

The result is an equivalence audit.  The selected capacity good-lambda theorem
is the precise capacity-coordinate form of the weight-beating tail law.  It is
not an independent auxiliary target.

## 1. Capacity form

Let \(\mu_{\rm cap}\) be the selected laminar pressure-Hodge capacity measure.
The capacity hinge asks for:

```math
\int |\Sigma|^{5/2}\,d\mu_{\rm cap}<\infty.
\tag{SCG.1}
```

Layer-cake rewrites `(SCG.1)` as:

```math
\int_0^\infty
\lambda^{3/2}
\mu_{\rm cap}\{|\Sigma|>\lambda\}\,d\lambda<\infty.
\tag{SCG.2}
```

Energy gives only \(L^2\) strain decay:

```math
\mu_{\rm cap}\{|\Sigma|>\lambda\}
\lesssim
\lambda^{-2}
```

when the capacity measure is controlled only by raw energy/strain ledgers.  This
leaves the nonintegrable high-level weight \(\lambda^{-1/2}\) in `(SCG.2)`.

Thus the capacity theorem must produce strict high-level decay beyond the
energy tail.

## 2. Ratio-tail form

The high-ratio variables are:

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over 2^{2j}}.
```

Set:

```math
E_{j,\ell}
=
\{2^\ell\delta<\rho_j\le2^{\ell+1}\delta\},
\qquad
\nu_\ell=\sum_j\mu_j(E_{j,\ell}).
```

Raw energy/viscosity gives:

```math
\sum_{\ell\ge0}\nu_\ell<\infty.
\tag{SCG.3}
```

The full same-material action requires:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
\tag{SCG.4}
```

The critical tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}
```

satisfies `(SCG.3)` and violates `(SCG.4)`.

For \(N_L=\sum_{\ell\ge L}\nu_\ell\), this tail obeys:

```math
{N_{L+1}\over N_L}\to {1\over2}.
```

So a good-lambda recurrence closes only with a strict coefficient:

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty.
\tag{SCG.5}
```

## 3. Equivalence of the two readings

On a selected heat-scale affine/strain sample of radius \(r\),

```math
|\Sigma|\simeq r^{-2},
\qquad
|Q_r|\simeq r^5.
```

Then:

```math
\int_{Q_r}|\Sigma|^2\,dxdt\simeq r,
\qquad
\int_{Q_r}|\Sigma|^{5/2}\,dxdt\simeq1.
\tag{SCG.6}
```

Thus the critical capacity bill `(SCG.1)` counts exactly the normalized unit
action that the ratio-tail sum `(SCG.4)` counts.

Conversely, any selected capacity measure strong enough to make parent capacity
inheritance see interior affine child birth must charge the same unit action in
`(SCG.6)`.  If it charges only the \(L^2\) strain bill, it misses the child by
the factor \(r\).  If it charges `(SCG.1)`, its root finiteness is the missing
first-ratio / weight-tail theorem.

Therefore:

```math
\text{SelectedCriticalStrainCapacityGoodLambda.A}
\quad\Longleftrightarrow\quad
\text{strict high-ratio weight-tail improvement}
```

at the current Gold edge, modulo already-paid legal, entrance, subheat,
nonlaminar, and recirculation terms.

## 4. What support surfaces contribute

The critical-density / CKN supplement contributes the exact consumer criterion:

```math
dA_{\rm sel}
\le
C\bigl(|\Sigma|^{5/2}+|W|^{10/3}\bigr)+dR_{\rm legal}+dK_{\rm rem}^+.
```

The velocity term is compatible with the energy class:

```math
u\in L^\infty_tL^2_x\cap L^2_t\dot H^1_x
\Longrightarrow
u\in L^{10/3}_{t,x}.
```

The strain term remains exactly `(SCG.1)`.

The strain equation, pressure ellipticity, and Betchov identity attach the
selected lobe to the same pressure-viscosity-incompressibility-velocity packet,
but they give signed or net control.  They do not produce the strict positive
capacity-tail gain.

## 5. Result

The active Gold theorem should be read as one object:

```text
SelectedCriticalStrainCapacityGoodLambda.A / WeightBeatingTailLaw.A
```

Plain statement:

For the selected laminar pressure-Hodge / critical-strain capacity measure
carried by the original smooth material history, prove a strict capacity-tail
or good-lambda improvement beyond the \(L^2\) strain half-barrier, equivalently

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

This note does not prove that theorem.  It prevents duplicate support surfaces
from carrying independent proof force.  Capacity, laminar ancestry, CKN density,
and good-lambda language are now coordinates of the same remaining Gold wall.
