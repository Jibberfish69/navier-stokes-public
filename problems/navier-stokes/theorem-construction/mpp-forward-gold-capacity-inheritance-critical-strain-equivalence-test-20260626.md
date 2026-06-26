---
theorem_id: forward-gold-capacity-inheritance-critical-strain-equivalence-test-20260626
status: direct-test-reduces-capacity-inheritance-root-finiteness-to-selected-critical-strain-goodlambda
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - LaminarPositiveFluxInheritance.A
  - SelectedCriticalStrainCapacityReserve.A
refined_hinge: SelectedCriticalStrainCapacityGoodLambda.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-positive-flux-boundary-reserve-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-bellman-root-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-holder-split-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-capacity-levelset-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-goodlambda-strain-equation-direct-test-20260626.md
---

# Capacity Inheritance Critical-Strain Equivalence Test

The boundary-flux direct test shows that the parent reserve for
`LaminarPositiveFluxInheritance.A` has to be volumetric or capacity-like.  This
note tests whether the pressure-Hodge capacity version is a new proof, or the
same selected critical-strain burden in Bellman form.

The result is an equivalence reduction.  Capacity inheritance is the right
language, but root finiteness is exactly the selected critical-strain
good-lambda problem unless a new exponent gain is supplied.

## 1. Candidate capacity reserve

The current candidate is the pressure-Hodge capacity reserve

```math
B_{\rm cap}(Q)
=
\operatorname{Cap}_{A,G}(U_Q;A_Q),
```

where \(U_Q\) is the gauge-reduced pressure-Hodge-stress potential on the
transported parent collar or parent material region.

The target inheritance form is

```math
\sum_{Q'\in ch(Q)}A(Q')
+
\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le
B_{\rm cap}(Q)+R_{\rm legal}(Q).
\tag{CIE.1}
```

If `(CIE.1)` holds and \(B_{\rm cap}(Q_{\rm root})<\infty\), then the first
ratio moment follows.

## 2. Interior affine child forces the critical strain bill

An interior pressure-Hessian-balanced affine child has

```math
|\Sigma|\simeq r^{-2}
```

on a heat-scale spacetime region of size \(r^5\).  Hence

```math
\int_{Q_r}|\Sigma|^2\,dxdt\simeq r,
```

but

```math
\int_{Q_r}|\Sigma|^{5/2}\,dxdt\simeq 1.
```

A parent capacity that sees this child with the strength needed for `(CIE.1)`
must therefore charge the scale-invariant critical strain / pressure-Hessian
quantity.  Any capacity controlled only by raw energy, raw dissipation, fixed
annular work, or Newtonian radius scale misses the child by the factor \(r\).

So the capacity root must contain, directly or through an equivalent
pressure-Hodge representation,

```math
\int_{\mathcal F_{\rm lam}}|\Sigma|^{5/2}\,d\mathcal R_{\rm cap}.
```

## 3. Holder split confirms the same boundary

The pressure-Hodge Holder split gives

```math
[\langle \Sigma W,W\rangle]_+
\le
C|\Sigma|^{5/2}
+
C|W|^{10/3}.
```

The velocity term is compatible with the classical energy class:

```math
u\in L^\infty_tL^2_x\cap L^2_t\dot H^1_x
\Longrightarrow
u\in L^{10/3}_{t,x}.
```

The only surviving root-finiteness term is the selected strain /
pressure-Hessian capacity bill:

```math
\int_{\mathcal F_{\rm lam}}|\Sigma|^{5/2}\,d\mathcal R_{\rm cap}.
```

Thus the Bellman capacity form does not remove the exponent gap.  It localizes
the exact place where the gap sits.

## 4. Level-set form of the remaining theorem

Let \(\mu_{\rm cap}\) be the selected laminar pressure-Hodge capacity measure.
The desired reserve is

```math
\int |\Sigma|^{5/2}\,d\mu_{\rm cap}<\infty.
```

Layer-cake requires high-level decay beyond the raw \(L^2\) strain decay:

```math
\mu_{\rm cap}\{|\Sigma|>\lambda\}
=
o(\lambda^{-5/2})
```

in the weighted integrable sense.  Energy gives only the half-power-deficient
Chebyshev decay from \(L^2\):

```math
\mu\{|\Sigma|>\lambda\}\lesssim\lambda^{-2}.
```

The localized affine half-tail saturates this boundary, so strict good-lambda
gain is necessary.

## 5. Result

The capacity-form reading of `LaminarPositiveFluxInheritance.A` is not a new
closed theorem.  It reduces the active Gold edge back to the precise capacity
tail theorem:

```text
SelectedCriticalStrainCapacityGoodLambda.A
```

Plain statement:

For the selected laminar pressure-Hodge capacity measure carried by the original
smooth material history, prove strict high-level decay, reverse Holder, or a
good-lambda improvement for the strain / pressure-Hessian field strong enough
to make

```math
\int |\Sigma|^{5/2}\,d\mu_{\rm cap}<\infty.
```

Without that strict capacity-tail gain, pressure-Hodge capacity inheritance is
either too weak to see interior affine child birth or equivalent to the missing
first-ratio action.
