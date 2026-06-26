---
theorem_id: forward-gold-selected-critical-strain-capacity-levelset-direct-test-20260626
status: direct-test-fails-reduces-to-strict-capacity-goodlambda
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge: SelectedCriticalStrainCapacityReserve.A
refined_hinge: SelectedCriticalStrainCapacityGoodLambda.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-holder-split-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-capacity-installed-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-carleson-direct-attempt-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-goodlambda-half-barrier-20260626.md
---

# Selected Critical Strain Capacity Level-Set Direct Test

The current hinge is:

```text
SelectedCriticalStrainCapacityReserve.A
```

The pressure-Hodge capacity Holder split reduces the root reserve to the
velocity term:

```math
\int |W|^{10/3},
```

and the selected strain / pressure-Hessian term:

```math
\int_{\mathcal F_{\rm lam}}|\Sigma|^{5/2}\,d\mathcal R_{\rm cap}.
```

The velocity term is compatible with the energy class.  This note tests whether
the strain term follows from a layer-cake or capacity-level estimate.

## 1. Layer-cake form

Let \(\mu_{\rm cap}\) denote the retained laminar capacity/action measure on
which the selected strain is read.  The target strain reserve is:

```math
\int |\Sigma|^{5/2}\,d\mu_{\rm cap}<\infty.
```

Layer-cake gives:

```math
\int |\Sigma|^{5/2}\,d\mu_{\rm cap}
=
{5\over2}
\int_0^\infty
\lambda^{3/2}
\mu_{\rm cap}\{|\Sigma|>\lambda\}\,d\lambda.
```

Thus the direct level-set route needs high-level decay stronger than:

```math
\mu_{\rm cap}\{|\Sigma|>\lambda\}\lesssim \lambda^{-5/2}.
```

More precisely, it needs enough decay to make:

```math
\int^\infty
\lambda^{3/2}
\mu_{\rm cap}\{|\Sigma|>\lambda\}\,d\lambda
<\infty.
```

## 2. What energy gives

The installed energy and local-energy ledgers give only the \(L^2\) strain
currency:

```math
\int |\Sigma|^2\,d\mu_{\rm raw}<\infty.
```

The corresponding Chebyshev level estimate is:

```math
\mu_{\rm raw}\{|\Sigma|>\lambda\}
\le
\lambda^{-2}
\int |\Sigma|^2\,d\mu_{\rm raw}.
```

Substituting this decay into the layer-cake integral gives the high-level
integrand:

```math
\lambda^{3/2}\lambda^{-2}
=
\lambda^{-1/2},
```

which is not integrable at infinity.  The missing half-power is exactly the
same gap already isolated by the critical-strain Carleson notes.

## 3. Heat-scale saturation

The scaling obstruction is sharp.  On a retained heat-scale affine/strain
sample of radius \(r\),

```math
|\Sigma|\simeq r^{-2},
\qquad
|Q_r|\simeq r^5.
```

The energy strain bill is radius-discounted:

```math
\int_{Q_r}|\Sigma|^2\,dxdt
\simeq
r^{-4}r^5
=r.
```

The critical strain bill is scale-invariant:

```math
\int_{Q_r}|\Sigma|^{5/2}\,dxdt
\simeq
r^{-5}r^5
=1.
```

Thus a terminal sequence with \(\sum_k r_k<\infty\) has finite raw strain
energy while carrying infinitely many unit critical-strain bills.  This is the
same half-tail mechanism:

```math
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty.
```

## 4. Capacity does not fix the exponent by naming alone

The pressure-Hodge capacity representation is useful because it gives a
same-packet root currency on the laminar ancestry tree.  But a capacity
estimate closes the strain side only when it supplies a stronger level decay
for the selected capacity measure:

```math
\mu_{\rm cap}\{|\Sigma|>\lambda\}
\le
C\lambda^{-5/2-\varepsilon}
+b(\lambda)
```

with:

```math
\int_1^\infty \lambda^{3/2}b(\lambda)\,d\lambda<\infty,
```

or an equivalent strict good-lambda recurrence for the selected capacity tail.

If the capacity measure is controlled only by the raw \(L^2\) strain/energy
currency, it has the same level-decay deficit.  If it is defined so that this
critical strain tail is already finite, it is the desired root reserve in
disguise.

## 5. Result

The layer-cake/capacity-level direct test does not prove:

```text
SelectedCriticalStrainCapacityReserve.A.
```

It reduces the hinge to the strict capacity tail form:

```text
SelectedCriticalStrainCapacityGoodLambda.A
```

Plain statement:

For the selected laminar high-ratio pressure-Hodge capacity measure, prove a
strict level-set decay or good-lambda improvement for the strain /
pressure-Hessian field:

```math
\mu_{\rm cap}\{|\Sigma|>\lambda\}
=o(\lambda^{-5/2})
```

in the weighted integrable sense needed for:

```math
\int |\Sigma|^{5/2}\,d\mu_{\rm cap}<\infty.
```

This is the exact remaining capacity-level form of the selected critical strain
reserve.  It is not supplied by energy, raw capacity, or the existing laminar
ancestry skeleton alone.
