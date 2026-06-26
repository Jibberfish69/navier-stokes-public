---
theorem_id: forward-gold-strict-tail-support-anchor-classification-20260626
status: support-anchor-classification-installed-live-wall-preserved
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
classifies_hinge:
  - WeightBeatingTailLaw.A
  - SelectedCriticalStrainCapacityGoodLambda.A
  - HighRatioLaminarAncestryMultiplicityTax.A
  - RootPositiveFluxReserveCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weight-beating-tail-ns-structure-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-capacity-goodlambda-weight-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-laminar-ancestry-multiplicity-tax-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-ancestry-line-frame-deformation-tax-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-ancestry-variation-reserve-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-bellman-root-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-holder-split-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-frequency-transfer-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-goodlambda-test-20260626.md
---

# Strict Tail Support Anchor Classification

This note classifies the current Gold support anchors around the strict
high-ratio tail.  The live theorem is still the same selected same-material
weight-beating tail:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty .
```

Equivalently, one may prove a strict good-lambda coefficient below the half
barrier, a selected laminar pressure-Hodge / critical-strain capacity tail
gain, or a bounded-below same-material storage paying that same first-ratio
action.

## 1. Classification table

| Anchor | Status | Proof force |
| --- | --- | --- |
| `WeightBeatingTailLaw.A` | live wall | Nonproxy Gold theorem.  It is the finite full same-material action statement in ratio-tail coordinates. |
| `SelectedCriticalStrainCapacityGoodLambda.A` | equivalent-to-live-wall | Capacity-coordinate form of the same strict tail.  It is not a smaller solved theorem. |
| `HighRatioCoreLaminarity.A` | support | Correct same-material skeleton: high-ratio packets must be read on one transported ancestry after paid nonlaminar exits. |
| `HighRatioLaminarAncestryMultiplicityTax.A` | conditional support | Deterministic single-line tax is available; global forest summability remains the live reserve problem. |
| `LaminarAncestryTaxSummability.A` / `GlobalAncestryVariationReserve.A` | equivalent-to-live-wall | Finite global Cauchy-Green / Hodge-frame / collar-normal variation against the selected action measure would prove the first-ratio tail. |
| `PressureHodgeCapacityCarleson.A` | conditional support | Concrete PDE representation of a root reserve.  Root finiteness reduces to the same selected critical-strain capacity tail. |
| `CriticalDensity / CKN supplement` | proved consumer criterion | Algebraically admits the native trilinear carrier into the critical density \(|\Sigma|^{5/2}+|W|^{10/3}\).  It does not produce the unweighted \(|\Sigma|^{5/2}\) budget. |
| `Frequency entrance / subheat / recirculation split` | proved branch reductions | Smooth initial tail, faster high-frequency damping, and return packing remove entrance, subheat, and recirculation branches.  The one-way high-ratio branch remains. |
| `Cross-band decay / good-lambda core` | equivalent-to-live-wall | A strict recurrence \(N_{L+1}\le\theta N_L+B_L\), \(2\theta<1\), is exactly another form of the same strict tail. |
| `Bounded-below same-material storage` | equivalent acceptable closure | Valid if constructed.  Local finite-depth/state storages fail; any successful storage must be global and same-material. |

## 2. Installed proof pieces

The branch split is installed:

```math
\text{entrance}
+\text{subheat}
+\text{return/recirculation}
+\text{legal/nonlaminar exits}
\quad\text{are finite or charged.}
```

The laminar skeleton is installed:

```math
\text{critical high-ratio family}
\Longrightarrow
\text{laminar material ancestry forest after paid nonlaminar exits}.
```

The single-line deterministic tax is installed:

```math
\sum_{\gamma\subset\mathcal A(a)}a_\gamma
\le
C\,V_C(\mathcal A(a))
+C\,V_F(\mathcal A(a))
+R_{\rm legal}(\mathcal A(a)).
```

Here \(V_C\) is Cauchy-Green logarithmic variation in the paying directions and
\(V_F\) is complete-frame projective variation.

The critical-density consumer is installed:

```math
[\langle \Sigma W,W\rangle]_+
\le
C|\Sigma|^{5/2}+C|W|^{10/3}.
```

The velocity side is compatible with the energy class:

```math
u\in L_t^\infty L_x^2\cap L_t^2\dot H_x^1
\Longrightarrow
u\in L_{t,x}^{10/3}.
```

The strain / pressure-Hessian side remains:

```math
\int |\Sigma|^{5/2}\,d\mu_{\rm cap}<\infty .
```

That is the selected capacity form of the same first-ratio tail.

## 3. Failed or exhausted shortcuts

Energy and raw viscosity give only the zeroth moment:

```math
\sum_{\ell\ge0}\nu_\ell<\infty .
```

The critical tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}
```

has finite zeroth moment and divergent first ratio moment.

Local affine / material-time profile tests show that local finite-depth
rigidity cannot close the gap.  A trace-free affine strain packet with matching
pressure Hessian can carry non-gauge normalized material action with vanishing
raw heat mass.  Periodic divergence-free localization keeps raw costs
radius-weighted while the normalized material action remains order one.

The pressure-Hodge Bellman descendant-tail reserve telescopes only because it
contains the desired descendant action.  Raw root reserves are finite but too
weak.  A useful strong root reserve still needs noncircular root finiteness.

The frequency-transfer calculation proves high shells decay faster unless the
same solution refills them through the coupled participation-law-strain service.
On the high-ratio branch, replacing the refill by the Duhamel/source term
returns the first ratio moment itself.

## 4. Current acceptance test

A future Gold closure must supply one strict gain:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty,
```

or:

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
2\theta<1,
\qquad
\sum_L2^LB_L<\infty,
```

or:

```math
d\mathscr A_N+c\,d\Omega_N^{full}\le dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0).
```

Everything else in the current support package is subordinate unless it proves
one of these statements.  This classification prevents laminar ancestry,
capacity inheritance, CKN density, good-lambda recurrence, or Bellman reserve
language from being treated as independent proof force after they have reduced
to the same strict-tail wall.
